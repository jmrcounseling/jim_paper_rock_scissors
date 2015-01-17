CHOICES = {"p" => "Paper", "r" => "Rock", "s" => "Scissors"}

puts "Welcome to Paper, Rock, Scissors!"

def display_winning_message(winning_choice)
  case winning_choice
  when "p"
   puts "Paper wraps Rock!"
  when "r"
   puts "Rock smashes Scissors!"
  when "s"
   puts "Scissors cuts Paper!"
  end
end
loop do
 begin
  puts "Choose one (p, r, s):"
  layer_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)
  computer_choice = CHOICES.keys.sample
  
  if player_choice != ("p" || "r" || "s")
    puts "You entered an invalid reponse. Please try again"
  elsif player_choice == computer_choice  
    puts "It's a tie!"
  elsif player_choice == "p" && computer_choice == "r" || player_choice == "r" && computer_choice == "s" || player_choice == "s" && computer_choice == "p"
    display_winning_message(player_choice)
    puts "You won!"
  else
     display_winning_message(computer_choice)
     puts "Computer won!"
  end
  puts "Play again (y/n)"
  break if gets.chomp.downcase != "y"
end
