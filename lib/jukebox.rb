require'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(array)
  song = ""
  array.each_with_index do |elements, index|
     new_index = index + 1
    song = new_index.to_s + "." + " " + elements
    puts song
 end
 array = song
return array
end

def play(array)
  puts "Please enter a song name or number:"
  input = gets.strip
 if input.to_i > 0 && input.to_i <= 9
   array.include?(array[input.to_i]) 
   puts "Playing #{array[input.to_i - 1]}"
   elsif  array.include?(input)
    puts "Playing #{input}"
 else 
  puts "Invalid input, please try again"
  end
 end


def exit_jukebox
  puts "Goodbye"
end

# def run(array)
#   puts "Please enter a command:"
#   input = gets.strip
#   if input == "exit"
#   return exit_jukebox
#     elsif input == "help"
#       help
#     elsif input == "list"
#       list(array)
#     elsif input == "play"
#       play(array)
# end
# run(array)
# end

# def run(array)
#   puts "Please enter a command:"
#   input = gets.strip
#   while input != "exit" do 
#   if input == "help"
#       return help
#   elsif input == "list"
#       list(array)
#     elsif input == "play"
#       play(array)
#   end
#   puts "Please enter a command:"
#   input = gets.strip
# end
#   if input == "exit"
#       return exit_jukebox
#   end
# end
def run(songs)
  while true do
    puts "Please enter a command:"
    response = gets.chomp
    case response
    when "exit"
      exit_jukebox
      break
    when "play"
      play(songs)
    when "help"
      help
    when "list"
      list(songs)
    else
      puts "Invalid entry"
    end
  end
end
run(songs)
run(songs)