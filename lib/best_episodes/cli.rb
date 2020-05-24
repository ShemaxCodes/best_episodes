#require "../lib/episode.
require 'pry'
class CLI

   def call 
     greeting 
     scraped_info
     display_episodes
     #list_episodes
   end 
   
  
   def greeting 

      puts " "
      puts " "
      puts "========================================================"
      puts "Welcome to Best Episodes of The Office for Super Fans !"
      puts "========================================================" 
      puts " "
      puts " "
      puts "Searching for Titles..."
      puts " "
   end 
   # create a display epidoes method. This method is goign to go to your show class and iterate through it and display all of the show titles with their corresponding index + 1 
   # crewat a method that hoplds all four of those lines and call it in your call method. 
   # ask the user to select a numer, that number corresponds to the index that episode belongs to so you're able to 
   # when you type LIST in terminal it loops back to the liste_episodes 

def scraped_info 
   Episode.get_page
   titles = Episode.scrape_episode_list
   descriptions = Episode.scrape_description_list
   Show.create_from_array(titles, descriptions)
end 
   
   def display_episodes 
 
      Show.all.each {|a| puts "#{a.title}"}
      list_descriptions

   end 

   def list_descriptions
       
      puts " "

      puts "Enter the number corresponding with each episode title to get more information about each episode."
      puts " "
      user_input
        
   end 

   
   def user_input 

      input = gets.strip.to_i 
      if input > 0 && input <= Show.all.length 
         show = Show.all.each_with_index {|a, b| puts "#{a.description}" if b == input-1}
        go_back
      else
         puts "Please re-enter correct number."
         list_descriptions
      end 
   end 


   def go_back 
      puts " "
      puts " "
      puts " "
      puts "Type 'exit' to end or 'list' to go back to the menu."
      puts " "
      puts " "
      puts " "
      input2 = gets.chomp.downcase 
      case input2 
         when "exit"
         goodbye 
         when "list"
         display_episodes
      end 
   end 

   def goodbye
      puts " "
      puts "========================================================="
      puts "Thanks for checking out the Best Episodes for The Office!"
      puts "========================================================="
      puts " "
   
   end 
end 