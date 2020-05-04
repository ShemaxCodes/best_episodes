require 'open-uri'
require 'nokogiri'
require 'pry'

#module BestEpisodes::CLI::Scraper 

    class Episode 
        attr_accessor :title, :season, :episode_number 
        @@episodes = []
        def self.get_page

            html = open("https://www.cleveland.com/entertainment/2020/03/the-office-at-15-ranking-the-10-best-episodes.html")
            doc = Nokogiri::HTML(html)
        end 

        def self.scrape_show 
            binding.pry
            episode_ten = get_page.css("#YWH273QDXVBTLBLL4ALSVSNUGU").text
            episode_nine = get_page.css("#AO3JILON3REBZJVWSRGDX3A3AE").text
            episode_eight = get_page.css("").text

            
        end 
        

        def self.scrape_description
        nine_des = get_page.css("#KIZBKG6CYZFVRCASNDGHDSQGKY").text
        end 
        Episode.scrape_show
        
    end 
#end 