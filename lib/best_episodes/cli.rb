#require "../lib/episode.

class CLI

   def call 
     greeting 
     list_episodes
     description
     goodbye 
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



   def list_episodes
      Episode.get_page
      titles = Episode.scrape_episode_list
      descriptions = Episode.scrape_description_list
      Show.create_from_array(titles, descriptions)
      puts titles  
      puts " "

      puts "Enter the number corresponding with each episode title to get more information about each episode."
      puts " "
      #binding.pry
      #Show.all holds all of my episode titles and descriptions 
      ##Tell the object that I only need the titles to display 
      #List of episodes for user to select from 
      
      input = gets.strip.to_i 
         while input != "exit"
         if input == 1 
           puts descriptions[0]
           binding.pry
           
           #display description
         elsif input.to_i == 2 

         elsif input.to_i == 3 

         elsif input.to_i == 4

         elsif input.to_i == 5
         
         elsif input.to_i == 6 

         elsif input.to_i == 7 
         end 

      end 


   end 


   def descriptions 
      #puts "Enter the number corresponding with each episode title to get more information about each episode."
      #input = gets.chomp.to_i 

     
   end 


   def print_episodes


   end 

   def go_back 
      puts "Type 'exit' to end or 'list' to go back to the menu."
   end 
end 