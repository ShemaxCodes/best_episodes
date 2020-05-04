require 'open-uri'
require 'pry'

#module BestEpisodes::CLI::Scraper 

    class Episode 
        attr_accessor :title, :season, :episode_number 


        @@episodes = []

        def self.get_page
        html = open("https://www.cleveland.com/entertainment/2020/03/the-office-at-15-ranking-the-10-best-episodes.html")
        binding.pry
        doc = Nokogiri::HTML(html)
        end 

        def self.scrape_show 
            
            get_page.css("b")
            #testing 
        end 

        Episode.scrape_show
        
    end 
#end 