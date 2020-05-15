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
      #input2 = gets.chomp.downcase  
         while input != "exit" || input != "list"
         if input == 1 
           puts titles[0]
           puts descriptions[0]
           go_back 
           #binding.pry 
         elsif input == 2 
            puts titles[1]
            puts descriptions[1]
         elsif input == 3 
            puts titles[2]
            puts descriptions[2]
            
         elsif input == 4
            puts titles[3]
            puts descriptions[3]
            #binding.pry
         elsif input == 5
            puts titles[4]
            puts descriptions[4]
            binding.pry
         elsif input == 6 
            puts titles[5]
            puts descriptions[5]
         elsif input == 7 
            puts titles[6]
            puts descriptions[6]
         elsif input == 8
            puts titles[7]
            puts descriptions[7]
         elsif input == 9
            puts titles[8]
            puts descriptions[8]
         elsif input == 10 
            puts titles[9]
            puts descriptions[9]
         else input == "exit" 
            #break
            puts goodbye
            
         end 

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
         list_episodes
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