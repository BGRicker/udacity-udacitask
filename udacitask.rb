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
todo.rename_list "New To-Do"

print todo.numbered_print

# Print the list
print todo.print_list



# Fancy features


# numbered print
# prints your list with numbered prioritization
pizza = TodoList.new("Pizza List")
eat = Item.new("eat pizza")
drink = Item.new("drink coffee")
watch = Item.new("watch movie")
nap = Item.new("go to sleep")
pizza.add_item eat
pizza.add_item drink
pizza.add_item watch
pizza.add_item nap
pizza.fancy_print

# quick list
# create a quick list, items split up by commas
cool_list = TodoList.new("A cool list")
cool_list.magic_list("go to the store, buy a pizza, cook the pizza, eat the pizza")
cool_list.fancy_print
