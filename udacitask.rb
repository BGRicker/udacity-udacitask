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
todo.show

# Delete the first item
todo.remove_item(pizza)

# Print the list
todo.show

# Delete the second item
todo.remove_item(movie)

# Print the list
todo.show

# Update the completion status of the first item to complete
coffee.complete

# Print the list
todo.show

# Update the title of the list
todo.rename_list "New To-Do"

# Print the list
todo.show


# New Features
# Magic List
# create a quick list, items split up by commas

cool_list = TodoList.new("A cool list")
cool_list.magic_list("go to the store, buy a pizza, cook the pizza, eat the pizza")
cool_list.print_list

cool_list.show

# Magic Complete
# Complete just by typing the name of your task, no need to reference the object
cool_list.magic_complete("go to the store")

# Split View
# split up tasks into two lists: complete and incomplete
cool_list.magic_complete("go to the store")
cool_list.split_view


