class TodoList
    attr_accessor :title, :list

    def initialize(title)
      @list = []
      @title = title
    end

    def add_item(item)
      @list << item
    end

    def remove_item(item)
      @list.delete(item)
    end

    def print_list
      @list.map(&:task)
    end
    
end

class Item
  attr_accessor :task, :complete
  
  def initialize(task, complete = false)
    @task = task
    @complete = complete
  end

  def complete
    @complete = true
  end
end
