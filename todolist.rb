class TodoList
    attr_accessor :title, :list

    def initialize
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
  attr_accessor :task
  
  def initialize(task)
    @task = task
  end
end
