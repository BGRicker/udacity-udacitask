require_relative 'todolist.rb'

# Creates a new todo list
todo = TodoList.new("Test to-do")

# Add four new items
pizza = Item.new("eat pizza")
coffee = Item.new("drink coffee")
movie = Item.new("watch movie")
sleep = Item.new("go to sleep")
todo.add_item pizza
todo.add_item coffee
todo.add_item movie
todo.add_item sleep

# Print the list
puts todo.print_list
puts

# Delete the first item
todo.remove_item(pizza)

# Print the list
puts todo.print_list
puts

# Delete the second item
todo.remove_item(movie)

# Print the list
puts todo.print_list
puts

# Update the completion status of the first item to complete
coffee.complete

# Print the list
puts todo.print_list
puts

# Update the title of the list
todo.title = "New To-Do"

# Print the list
print todo.print_list
