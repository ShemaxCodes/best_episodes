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
            get_page.css("b").text
            @@episodes << get_page.css("b").text
            @@episodes
            
        end 

        Episode.scrape_show
        
    end 
#end 