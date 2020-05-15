#require "../lib/episode.

class CLI

   def call 
     greeting 
     list_episodes
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
      puts "Office Trivia: What is the name of the Fun Run Michael held in Meredith's honor?"
      Episode.get_page
      titles = Episode.scrape_episode_list
      descriptions = Episode.scrape_description_list
      Show.create_from_array(titles, descriptions)
      puts titles  
      puts " "

      puts "Enter the number corresponding with each episode title to get more information about each episode."
      puts " "
       
      
      input = gets.strip.to_i
         if input == 1 
           puts titles[0]
           puts descriptions[0]
           go_back 
         elsif input == 2 
            puts titles[1]
            puts descriptions[1]
            go_back 
         elsif input == 3 
            puts titles[2]
            puts descriptions[2]
            go_back 
         elsif input == 4
            puts titles[3]
            puts descriptions[3]
            go_back 
            #binding.pry
         elsif input == 5
            puts titles[4]
            puts descriptions[4]
            go_back 
            #binding.pry
         elsif input == 6 
            puts titles[5]
            puts descriptions[5]
            go_back 
         elsif input == 7 
            puts titles[6]
            puts descriptions[6]
            go_back 
         elsif input == 8
            puts titles[7]
            puts descriptions[7]
            go_back 
         elsif input == 9
            puts titles[8]
            puts descriptions[8]
            go_back 
         elsif input == 10 
            puts titles[9]
            puts descriptions[9]
            go_back 
         else 
            false 
            
            
         end 

      #end 


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