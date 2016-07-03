class TodoList
    attr_accessor :title, :list

    def initialize
      @list = []
    end

    def add_item(item)
      @list << item
    end

    def remove_item(item)
      @list.delete(item)
    end
end

class Item
end
