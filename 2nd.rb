answer = "1"

while answer != "0"

	puts "\nМеню:
	0. Выход 
	1. Приветствие
	2. Вывод всех методов String
	3. Выполнение методов класса String
	4. Вывод переменных и констант класса String
	5. Примеры форматированных строк"

	answer = STDIN.gets.chomp.downcase.strip 

	case answer
		when "1"
			#Получение аргумента из командной строки
			if ARGV.length == 1
				puts "Добрый день, " + ARGV[0]
			else
				puts "Использование программы: ruby second.rb <имя>"
			end

		when "2"
			#Вывод всех методов String
			puts "\nМЕТОДЫ КЛАССА STRING\n"
			String.methods.each {|meth| print "#{meth} "}
			print "\n"-
			
		when "3"
			#Выполнение методов класса String
			#1. try_convert: 
			puts "try_convert(12) = " + (String.try_convert("12") == nil ? "nil" : String.try_convert("12")) 
			puts "try_convert(/some reg ex/) = " + (String.try_convert(/some reg ex/) == nil ? "nil" : String.try_convert(/some reg ex/) )
			
			#\n2. * 
			puts "\"Kawaii\" * 5 = " + ("Kawaii " * 5)
			puts "\"Kawaii\" * 0 = " + ("Kawaii " * 0)
			
			#3. + 
			puts "\"Concatination \" + \"of \" + \"lines\" = " + ("\"Concatination " + "of " + "lines\"")
			
			#4. <<
			str1 = "Hello"
			puts "str1 << \" from\" << \" Ruby\" << 33 = " + str1 << " from" << " Ruby" << 33
			
			#5. <=> 
			puts "\"abc\" <=> \"abd\" = " + ("abc" <=> "abd").to_s
			puts "\"bbb\" <=> \"aaaaa\" = " + ("bbb" <=> "aaaa").to_s
			puts "\"abc\" <=> \"Abc\" = " + ("abc" <=> "Abc").to_s
			puts "\"abc\" <=> \"abc\" = " + ("abc" <=> "abc").to_s
			puts "\"\" <=> \"abc\" = " + ("" <=> "abc").to_s
			puts "1 <=> \"abc\" = " + ((1 <=> "abc") == nil ? "nil" : (1 <=> "abc").to_s)
			
			#6. === 
			puts "/l.*/ === \"Some line\" = " + (/l.*/ === "line").to_s
			puts "/l.*/ === \"Other string\" = " + (/l.*/ === "Other string").to_s
			puts "\"Line1\" === \"Line2\" = " + ("Line1" === "Line2").to_s
			puts "str1 === \"Hello\" = " + (str1 === "Hello").to_s
			
			#7. [] 
			puts "str1[2] = " + str1[2]
			puts "str1[0, 3] = " + str1[0, 3]
			puts "str1[0..3] = " + str1[0..3]
			puts "str1[\"substr\"] = " + (str1["substr"] == nil ? "nil" : str1["substr"])
			puts "str1[\"ll\"] = " + str1["ll"]
			puts "str1[-1] = " + str1[-1]
			puts "str1[10] = " + (str1[10] == nil ? "nil" : str1[10])
			
			#8. ascii_only? 
			puts "\"abc\".ascii_only? = " + "abc".ascii_only?.to_s
			puts "\"abc\\u{256}\".ascii_only? = " + "abc\u{256}".ascii_only?.to_s
			
			#9. bytesize
			puts "\"Hello\".bytesize = " + "Hello".bytesize.to_s
			
			#10. byteslice
			puts "\"hello\".byteslice(0) = " + "hello".byteslice(0)
			puts "\"hello\".byteslice(-2) = " + "hello".byteslice(-2)
			puts "\"hello\".byteslice(0, 3) = " + "hello".byteslice(0, 3)
			puts "\"hello\".byteslice(0..3) = " + "hello".byteslice(0..3)
			
			#11. capitalize!
			kawaiiStr = "kawaii"
			puts "kawaiiStr.capitalize! = " + kawaiiStr.capitalize!
			puts "kawaiiStr.capitalize! = " + (kawaiiStr.capitalize! == nil ? "nil" : kawaiiStr.capitalize!)
			puts "\"KaWaIi\".capitalize! = " + "KaWaIi".capitalize!
			
			#12. casecmp? 
			puts "\"hello\".casecmp?(\"HeLlO\") = " + "hello".casecmp?("HeLlO").to_s
			puts "\"hell\".casecmp?(\"hello\") = " + "hell".casecmp?("hello").to_s
			puts "\"hella\".casecmp?(\"hello\") = " + "hella".casecmp?("hello").to_s
			puts "\"hella\".casecmp?(1) = " + ("hella".casecmp?(1) == nil ? "nil" : "hella".casecmp?(1).to_s)
			
			#13. center
			puts "\"Characters\".center(50) = " + "Characters".center(50)
			puts "\"Characters\".center(50, \"lala\") = " + "Characters".center(50, "lala")
			
			#14. chomp
			puts "\"hello\".chomp = " + "hello".chomp
			puts "\"hello\\n\".chomp = " + "hello\n".chomp
			puts "\"hello\\t world\".chomp = " + "hello\t world".chomp
			puts "\"hello\".chomp(\"o\") = " + "hello".chomp("o")
			puts "\"hello\".chomp(\"l\") = " + "hello".chomp("l")
			
			#15. chr
			puts "\"Hello\".chr = " + "Hello".chr
			
			#16. codepoints 
			puts "\"abcdefgh\".codepoints = " + "abcdefgh".codepoints.to_s
			
			#17. concat
			puts ("foo".concat("foo1", "foo2"))
			
			#18. delete
			puts "\"hello\".delete \"l\", \"lo\" = " + ("hello".delete "l", "lo")
			puts "\"hello\".delete \"lo\" = " + ("hello".delete "lo")
			
			#19. delete_suffix 
			puts "\"hello\".delete_suffix(\"lo\") = " + "hello".delete_suffix("lo")
			puts "\"hello\".delete_suffix(\"lo\") = " + "hello".delete_suffix("he")
			
			#20. dump 
			puts "\"Hello \\t world \\n\".dump = " + "Hello \t world \n".dump
			
			#21. each_line 
			"hello\nfrom\nruby".each_line {|line| puts line}
			"hello, from, ruby".each_line(",") {|line| puts line}
			
			#22. each_codepoint 
			puts "\"hello\".each_codepoint \{ |c| print c, ' ' \} = " 
			"hello".each_codepoint { |c| print c, ' ' }
			puts ""
			
			#23. empty? 
			puts "\"hello\".empty? = " + "hello".empty?.to_s
			puts "\" \".empty? = " + " ".empty?.to_s
			puts "\"\".empty? = " + "".empty?.to_s
			
			#24. encoding 
			puts "\"Hello\".encoding = " + "Hello".encoding.to_s
			
			#25. eql? 
			puts "\"hello\".eql?(\"Hello\") = " + "hello".eql?("Hello").to_s
			puts "\"hello\".eql?(\"hello\") = " + "hello".eql?("hello").to_s
			puts "\"hello\".eql?(\"Bang\") = " + "hello".eql?("Bang").to_s
			
			#26. freeze 
			frozenStr = "Frozen line".freeze
			#frozenStr << " hello" #Исключение
			
			#27. getbyte
			puts "\"Hello\".getbyte(3) = " + "Hello".getbyte(3).to_s
			
			#28. hash 
			puts "\"Hello\".hash = " + "Hello".hash.to_s
			
			#29. include? 
			puts "\"hello\".include? \"he\" = " + ("hello".include? "he").to_s
			puts "\"hello\".include? \"eh\" = " + ("hello".include? "eh").to_s
			
			#30. replace
			puts "\"hello\".replace \"goodbue\" = " + ("hello".replace "goodbue")
			
			#31. intern
			puts "\"Koala\".intern = " + "Koala".intern.to_s
			
			#32. lines 
			puts "\"hello\\nworld\\n\".lines = " + "hello\nworld\n".lines.to_s
			puts "\"hello  world\".lines(' ') = " + "hello  world".lines(' ').to_s
			puts "\"hello\\nworld\\n\".lines(chomp: true) = " + "hello\nworld\n".lines(chomp: true).to_s
			
			#33. lstrip 
			puts "   hello".lstrip
			puts "hello".lstrip
			
			#34. succ 
			puts "99".succ
			puts "abc".succ
			puts "a99".succ
			
			#35. ord 
			puts "b".ord
			
			#36. reverse 
			puts "abcdef".reverse
			
			#37. rpartition
			puts "hello".rpartition("l").to_s
			puts "hello".rpartition("x").to_s
			puts "hello".rpartition(/.l/).to_s
			
			#38. scan 
			puts "cruel word".scan(/\w+/).to_s
			"cruel word".scan(/(.)(.)/) {|x,y| print y, x}
			print "\n"
			
			#39. setbyte
			str = "Hello."
			str.setbyte(5, 33)
			puts str
			
			#40. split 
			puts "Hello world".split.to_s
			puts "Hello world".split("l").to_s
			puts "Hello world".split(/.l/).to_s
			
			
		when "4"
			puts "1. $/ = " + $/ + "smt else"
			
			puts "2. $. = " + ($.).to_s
			
			puts "3. $LOADED_FEATURES = " + $LOADED_FEATURES.to_s
			
			puts "4. $LOAD_PATH = " + $LOAD_PATH.to_s
			
		when "5"
			name = "Ann"
			age = 22
			puts sprintf("sprintf: Hello, %s. Seems like you are %d years old", name, age)
			
			puts "\#\{expr\}: Hello, #{name}. Seems like you are #{age} years old"
			
			
	end
end