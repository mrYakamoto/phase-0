





=begin

#8.3.2 (pg.56)

contents = [["Getting Started", "1"], ["Numbers", "9"], ["Letters", "13"]]

puts "Table of Contents".center(50)
puts ""

chapter_num = 1

contents.each do |chap|
  name = chap[0]
  page = chap[1]
  beginning = "Chapter " + chapter_num.to_s + ": " + name
  ending = "page " + page.to_s
  puts beginning.ljust(30) + ending.rjust(20)
  chapter_num = chapter_num + 1
end


#8.3.1 (pg.56)

puts "Give me some words, and I will sort them"
words = []
while true
  word = gets.chomp
  if word == ''
    break
  end
  words.push word
end

puts "Sweet! Here they are, sorted:"
puts words.sort


#7.5.3 LEAP YEARS (pg.56)
puts 'Give me a range of years and I\'ll show you all the leap years between them! Aheh, inclusive of those years of course.'
puts 'What year should we start at?'
start_year = gets.chomp.to_i
puts 'And what year should we end?'
end_year = gets.chomp.to_i
puts 'Here they are!'
num_years = end_year - start_year + 1
num_years.times do
  if start_year % 100 == 0
    if start_year %400 == 0
      puts start_year
      start_year = start_year + 1
    else
      start_year = start_year + 1
    end
  elsif start_year % 4 == 0
    puts start_year
    start_year = start_year + 1
  else
    start_year = start_year + 1
  end
end


#7.5.2

puts 'Granny\'s so happy to see ya!!!!!!!!! HUH!? WHAT\'S THAT YOU SAY!?'
words = gets.chomp
counter = 1

while counter < 3
  if words == 'BYE' || words == 'BYE!'
    counter = counter +1
    puts "WHAT'S THAT SONNY!? Iiiiii CANNNNN'T HEAAAAAR YOUUUUUUU!!!!"
    words = gets.chomp
  elsif words == words.upcase
    counter = 1
    puts 'NO, NOT SINCE ' + rand(1930..1950).to_s + '!'
    words = gets.chomp
  elsif words != words.upcase
  counter = 1
  puts 'HUH!? SPEAK UP SONNY!'
  words = gets.chomp
  end
end

puts 'OK, FINE, I GUESS I\'LL JUST GO DIE NOW. WHATEVER, DON\'T WORRY ABOUT LITTLE OLD ME. I\'LL JUST SIT HERE IN PAIN UNTIL I SLOWLY DRIFT AWAY INTO THE NOTHINGNESS.'


#7.5.1 (pg. 49)
num = 99
99.times do
  if num == 1
    puts num.to_s + ' bottle of beer on the wall, ' + num.to_s + ' bottle of beer! Take it down, pass it around, therrrrrrrre\'s nooooo more bottles of beeeeeeerrrr on the waallllllll!'
    break
  end
  puts num.to_s + ' bottles of beer on the wall, ' + num.to_s + ' bottles of beer! Take one down, pass it around, ' + (num - 1 ).to_s + ' bottles of beer on the wall!'
  num = num - 1
end


#6.2

  puts"Table of Contents".center(50)
  puts("")
  puts"Chapter 1: Getting Started".ljust(30) + "page 1".rjust(20)
  puts"Chapter 2: Numbers".ljust(30) + "page 9".rjust(20)
  puts"Chapter 3: Letters".ljust(30) + "page 13".rjust(20)


#5.5

puts "Hello there, and what's your name?"
name = gets.chomp
puts "Your name is " + name + "? What a lovely name!"
puts "Pleased to meet you, " + name + ". :)"


#5.6.1

puts "Hi there, what's your first name"
first_name = gets.chomp
puts "Cool, " + first_name + ", what's your middle name?"
middle_name = gets.chomp
puts "Alright, " + first_name + " " + middle_name + ", what's your last name?"
last_name = gets.chomp
puts "Excellent, I shall call you " + first_name + " " + middle_name + " " + last_name + "!"


#5.6.2

puts "Hey there! What's yer favorite number?"
fav_num = gets.chomp.to_i
better_num = fav_num + 1
puts "Well, that's all fine and good if you want to settle for a puny number like " + fav_num.to_s + ", but what about a bigger, manlier number like " + better_num.to_s + "!?"

=end