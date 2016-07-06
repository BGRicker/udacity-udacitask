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

  # def add_item(new_item)
  #   item = Item.new(new_item)
  #   @items.push(item)
  # end

  def remove_item(item)
    @list.delete(item)
  end

  def list
    @list.map(&:task)
  end

  def print_list
    puts title
    puts "-"*10
    puts list
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
      puts "#{n} - #{i}"
    end
  end

  def fancy_print
    puts title
    puts "-"*10
    numbered_print
    puts
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
end
