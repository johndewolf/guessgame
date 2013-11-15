def valid?(num)
  !!num.match(/\d/)
end

puts "Guess a number between 0 and 1000"
guess = gets.chomp
answer = rand(0..1000)

while valid?(guess) == false
  puts "Please enter in a valid number or q to quit"
  guess = gets.chomp
  exit if guess == "q"
end

guess = guess.to_i

while guess > 1000
  puts "Sorry that number is too high, please try again:"
  guess = gets.chomp.to_i
end

counter = 1
while guess != answer
  if guess < answer
    puts "That guess is too low. Please try again:"
    guess = gets.chomp.to_i
    counter += 1
  else guess > answer
    puts "That number is too high. Please try again:"
    guess = gets.chomp.to_i
    counter += 1
  end
end

if counter > 10
  puts "You are correct, the number is #{answer}! Unfortunately it took you #{counter} tries, don't make any plans to go to Vegas."
else
  puts "You are correct, the number is #{answer}! And it only took you #{counter} tries."
end
