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
      puts "Please select the show by typing its number."
      puts "1. The Office"
      puts " "

   end 

   def menu 
      input = gets.chomp 

      if input == 1 
         puts "**Best Episodes for The Office**"
         puts "================================="
         puts " "
      else input < 1 
         puts "Please try again."
      input = gets.chomp 
      end 

      case input 
      when "1"
         list_episodes
      end 

   end 



   def list_episodes
      ep_ten = get_page.css("#YWH273QDXVBTLBLL4ALSVSNUGU").text

   end 


   def description
      ten_des = get_page.css("#2H5WFESI2NFFHEFCZKABI7JKTU").text
   end 


   def go_back 
      puts "Type 'exit' to go back to the menu."
   end 
end 