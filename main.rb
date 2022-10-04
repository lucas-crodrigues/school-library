require './app'
require './menu'
require 'json'

file = File.read('rentals.json')
data_hash = JSON.parse(file)
puts data_hash['rentals']

def main
  menu = Menu.new
  app = App.new
  puts "\nWelcome to OOP School Library App!\n\n"
  menu.print_menu(app)
end

main

file.close
