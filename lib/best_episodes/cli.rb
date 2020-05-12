#require "../lib/episode.rb"
 

class CLI

   def call 
     greeting 
     menu 
     list_episodes
     description
     goodbye 
   end 
   
#Asks user if they want to continue (y/n)
  
   def greeting 

      puts " "
      puts "Welcome to Best Episodes for The Office Super Fans !"
      puts "====================================================" 
      puts " "
      puts "Please select the show by entering its number."
      puts "1. The Office"
      puts " "

   end 

   def menu 
      input = gets.chomp 

      if input == 1 
         puts "**Best Episodes for The Office**"
         puts "================================="
         puts " "
      else input < 1 || > 1
         puts "Please try again."
      input = gets.chomp 
      end 


      case input 
      when "1"
         list_episodes
      end 

   end 


   def list_episodes
     Show.create_title_from_array(title_array)

      message = "Enter the number of your desired episode for more info."
      puts message 
      input = gets.chomp 
      while input != "exit"
         if input > 0 && input < Show.all.length
           episode = Show.all[input - 1]

   end 


   def descriptions 
      
     
   end 


   def go_back 
      puts "Type 'exit' to go back to the menu."
   end 
end 