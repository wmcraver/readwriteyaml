require 'yaml'

# open the test.txt file and load the existing array into the variable
array = YAML::load_file "test.txt"

# put the array to the screen
puts array

# Want to update the array? type 'yes' or 'no'
puts "Add anything to the array?"
userresponse = gets.chomp.upcase

# If YES, ask for addition and add to array and file.  No, nothing will be added.
if userresponse == "YES"
  puts "What would you like to add?"
  userupdate = gets.chomp.capitalize
  array << userupdate
  file = File.open("test.txt", "w")
  file.write array.to_yaml
  puts "Here's the new array: #{array.to_yaml}"
else
  puts "Ok. Nothing will be added"
end
