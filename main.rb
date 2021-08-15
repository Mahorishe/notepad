require_relative 'lib/post.rb'
require_relative 'lib/memo.rb'
require_relative 'lib/link.rb'
require_relative 'lib/task.rb'

puts 'Добро пожаловать в "Блокнот версии 1.0"'
puts 'Выберите какую запись хотите сделать:'

choices = Post.post_type
user_choice = -1

until user_choice >= 0 && user_choice < choices.size
  choices.each.with_index(1) { |type, index | puts "#{index}. #{type}" }
  user_choice = STDIN.gets.to_i
end

notepad = Post.create(user_choice - 1)
notepad.read_from_console
notepad.save
