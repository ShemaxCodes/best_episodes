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
           one = Show.all[0]
           puts one.title
           puts one.description
           go_back 
         elsif input == 2 
            two = Show.all[1]
            puts two.title
            puts two.description
            go_back 
         elsif input == 3 
            three = Show.all[2]
            puts three.title 
            puts three.description 
            go_back 
         elsif input == 4
            four = Show.all[3]
            puts four.title
            puts four.description
            go_back
            #binding.pry
         elsif input == 5
            five = Show.all[4]
            puts five.title
            puts five.description
            go_back 
            #binding.pry
         elsif input == 6 
            six = Show.all[5]
            puts six.title
            puts six.description
            go_back 
         elsif input == 7 
            sev = Show.all[6]
            puts sev.title
            puts sev.description
            go_back 
         elsif input == 8
            e = Show.all[7]
            puts e.title
            puts e.description
            go_back 
         elsif input == 9
            nine = Show.all[8]
            puts nine.title
            puts nine.description
            go_back 
         elsif input == 10 
            ten = Show.all[9]
            puts ten.title
            puts ten.description
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