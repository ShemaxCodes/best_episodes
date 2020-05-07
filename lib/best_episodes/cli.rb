#require "../lib/episode.rb"
 

class CLI

   def call 
      puts " "
      puts "Welcome to Best Episodes for The Office Super Fans !"
      puts "====================================================" 
      puts " "
      puts "Please select the show by its number."
      puts "1. The Office"
      puts " "
      @number = gets.chomp 

      if @number == 1 
         puts "**Best Episodes for The Office**"
         puts "================================="
         puts ep_ten 
         puts get_page.css("p.article__paragraph.article__paragraph--left b")[1].text
         puts get_page.css("p.article__paragraph.article__paragraph--left b")[2].text
         puts get_page.css("p.article__paragraph.article__paragraph--left b")[3].text
         puts get_page.css("p.article__paragraph.article__paragraph--left b")[4].text
      else 
         puts "Please try again."
   end 


   
#Asks user if they want to continue (y/n)
  

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