print "Команда языка ruby: "
rubyCommand = STDIN.gets

print "Команда ОС: "
osCommand = STDIN.gets

puts "Результат выполнения комнды языка ruby:"
puts (eval rubyCommand).to_s

puts "Результат выполнения комнды ОС:"
system osCommand