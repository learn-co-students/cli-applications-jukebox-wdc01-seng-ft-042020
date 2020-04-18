# Add your code here
def help
puts "I accept the following commands: "
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

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
# require 'pry'
# def play(songs)
#   binding.pry
# puts "Please enter a song name or number: "
#
# user_selected_song = gets.strip
#
# songs.each_with_index do |tube, idx_num|
#
# if tube.to_s == user_selected_song || (idx_num+1).to_s == user_selected_song
#   puts "Playing <#{tube}>"
#   return
# end
# end
# puts "Invalid input, please try again"
# end

def play(songs)
  puts "Please enter a song name or number: "
  response = gets.chomp
  if response.to_i >= 1 && response.to_i <= songs.length
    puts " Playing #{songs[response.to_i-1]}"
  elsif songs.include?(response)
    puts "Playing #{songs.find{|song| song == response}}"
  else
    puts "Invalid input, please try again"
    end
  end


def list(songs)
songs.each_with_index do |title_of_song,idx|
puts "#{idx+1}. #{title_of_song}"
end
#binding.pry
end


def exit_jukebox
 puts "Goodbye"
end

def run(songs)
  puts "Please enter a command: "
user_command_choice = gets.strip
 case user_command_choice
 when "help"
   help
 when "play"
   play(songs)
 when "list"
   list(songs)
 when "exit"
   exit_jukebox
 end

end
