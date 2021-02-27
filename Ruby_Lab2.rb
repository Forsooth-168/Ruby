ans = "1"
while ans != "9"

	puts "Меню:
	1 - Приветствие
	9 - Конец работы"
	
	ans = STDIN.gets.chomp.downcase. strip
	
	case ans
		when "1"
			if ARGV.length == 1
				puts "Greetings, " + ARGV[0]
			else 
				puts "Пример входной строки для программы: Ruby_Lab2 <имя>"
			end
	end
end