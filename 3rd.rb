print "Введите Ваш любимый ЯП: "
language = STDIN.gets.chomp.downcase

case language
	when "ruby"
		puts "Подлиза :р"
	when "c#"
		puts "А скоро будет ruby"
	when "java"
		puts "Это неважно, ведь ruby все равно лучше" 
	when "javascript"
		puts "Очень скоро Вашим любимым языком станет ruby :)"
	else
		puts "В любом случае, скоро Ваш ответ изменится на ruby"

end

#Условный оператор
print "Введите любое число: "
num = STDIN.gets.chomp.downcase.to_i
if num > 10
	puts "Выполнилось условие 1"
elsif num <= 10 and num > 5
	puts "Выполнилось условие 2"
else
	puts "Ветка else"
end

print "Введите новое число: "
anotherNum = STDIN.gets.chomp.downcase.to_i

unless anotherNum > 10000 then
	puts "Введенное число не больше 10000"
else
	puts "Введенное число больше либо равно 10000"
end

puts "Проверка ещё одной формы условного выражения" if language.scan(/\d/).empty?