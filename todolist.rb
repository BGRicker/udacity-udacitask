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
      # puts "#{n} -\t #{i.task}\t Completed: #{i.complete}"
      puts "#{n} -".rjust(6) + " #{i.task}\t Completed: #{i.completed?}"
    end
  end

end

class Item
  attr_reader :task, :complete

  def initialize(task)
    @task = task
    @complete = false
  end

  def complete
    @complete = true
  end

  def completed?
    @complete
  end

end
