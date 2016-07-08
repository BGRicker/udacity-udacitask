class TodoList
  attr_accessor :title
  attr_reader :list

  def initialize(title)
    @list = []
    @title = title
  end

  def add_item(item)
    @list << item
  end
  
  def add_multiple(*item)
    item.each do |i|
      @list << i
    end
  end

  def rename_list(title)
    @title = title
  end

  def remove_item(item)
    @list.delete(item)
  end

  def print_list
    @list.each do |i|
      "#{i.task}\t - Completed: #{i.completed?}"
    end
  end

  def show
    puts
    puts title
    puts task_success
    puts "-"*10
    numbered_print
    puts
  end


  def magic_list(string)
    a = string.split(", ")
    a.each do |i|
      @list << Item.new("#{i}")
    end
  end

  def numbered_print
    list.each_with_index do |i, n|
      n = n + 1
      puts "#{n} -".rjust(10) + " #{i.task}".ljust(20) + "\t Completed: #{i.completed?}"
    end
  end

  def completed_tasks
    list.select{|task| task.completed? }
  end

  def incomplete_tasks
    list.select{|task| task.completed? == false }
  end

  def task_success
    "#{(completed_tasks.count / list.count.to_f * 100).to_i}% completion rate"
  end

  def show_tasks(tasks)
    tasks.each do |i|
      puts "\t - #{i.task}"
    end
  end

  def split_view
    puts title
    puts "-"*20
    puts task_success
    puts
    puts "Completed Tasks: #{completed_tasks.count}"
    show_tasks(completed_tasks)
    puts
    puts "Incomplete Tasks: #{incomplete_tasks.count}"
    show_tasks(incomplete_tasks)
    puts
  end

  def magic_complete(string)
    list.select{|list| list.task == string}.each do |i|
      i.complete
    end
  end

  def categorized(cat)
    @list.select{|list| list.category == cat}.to_a
  end

  def category_print(cat)
    categorized(cat).each do |i|
      puts "-".rjust(5) + " #{i.task}".ljust(20) + "\t Completed: #{i.completed?}"
    end
  end

  def category_show(cat)
    puts
    puts title
    puts "category: #{cat}"
    puts task_success
    puts "-"*10
    category_print(cat)
    puts
  end

end
