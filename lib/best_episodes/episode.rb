require 'open-uri'
require 'nokogiri'
require 'pry'

#module BestEpisodes::CLI::Scraper 

    class Episode 
       
       

        def self.get_page

            html = open("https://www.cleveland.com/entertainment/2020/03/the-office-at-15-ranking-the-10-best-episodes.html")
            doc = Nokogiri::HTML(html)
        end 

        def self.scrape_episode_list 
            get_page.css("p.article__paragraph.article__paragraph--left b").each do |el|
            el 
            end 

        end 
                    binding.pry
                
               
                #get_page.css("p.article__paragraph.article__paragraph--left b")[5].text => "5. The Finale"
           
           #if user_input == 1
            #puts 
            #get_page.css("#ZUJRZJVXZNBXDNDDWQ5KUQU7GA").text
          #end 







            #episode_ten = get_page.css("#YWH273QDXVBTLBLL4ALSVSNUGU").text
            #episode_nine = get_page.css("#AO3JILON3REBZJVWSRGDX3A3AE").text
            #episode_eight = get_page.css("#3MNBSGSUDRBYXATINLS5UN6BAY").text
            #episode_seven = get_page.css("#QYJALQAZQVDABILM7ZYPMCGSM4").text
            #episode_six = get_page.css("#AGSSJRGXQBGK7GWJ7KZZNO4V5Y").text
            #episode_five = get_page.css("#C7ZH5AVICVFJVHC2NGNJSLYXDA").text
            #episode_four = get_page.css("#Z2I6XDNCO5GBZCWZ47DXAATIGM").text
            #episode_three = get_page.css("#SSH3W74PRNHQTOFIXFNJF6YZQY").text
            #episode_two = get_page.css("#SB3RUAFS7NBHXJJHONEU7G2NEM").text
            #episode_one = get_page.css("#ZUJRZJVXZNBXDNDDWQ5KUQU7GA").text
         
            
        
        











        def self.scrape_description
        nine_des = get_page.css("#KIZBKG6CYZFVRCASNDGHDSQGKY").text
        end 
        
    end 
#end
 Episode.scrape_episode_list