require_relative 'todolist.rb'

# Creates a new todo list
todo = TodoList.new

# Add four new items
todo.add_item "eat pizza"
todo.add_item "drink coffee"
todo.add_item "watch movie"
todo.add_item "go to sleep"

# Print the list
print todo.list

# Delete the first item
todo.remove_item("eat pizza")

# Print the list
print todo.list

# Delete the second item
todo.remove_item("watch movie")

# Print the list
print todo.list

# Update the completion status of the first item to complete

# Print the list

# Update the title of the list

# Print the list
