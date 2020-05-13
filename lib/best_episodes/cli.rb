#require "../lib/episode.rb"
 

class CLI

   def call 
     greeting 
     list_episodes
     description
     goodbye 
   end 
   
  
   def greeting 

      puts " "
      puts "Welcome to Best Episodes of The Office for Super Fans !"
      puts "====================================================" 
      puts " "
      puts list_episodes
      puts " "

   end 



   def list_episodes
      Show.create_title_from_array(title_array) #List of episodes for user to select from 
      puts " "
      puts "Enter the number corresponding with each episode title to get more information about each episode."
      puts " "
     
      input = gets.chomp 
      while input != "exit"
         if input.to_i == 1 
           episode = Show.all[input - 1]

   end 


   def descriptions 
      
     
   end 


   def print_episodes


   end 

   def go_back 
      puts "Type 'exit' to end or 'list' to go back to the menu."
   end 
end 