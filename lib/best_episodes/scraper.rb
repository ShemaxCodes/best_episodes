require 'open-uri'
require 'pry'

class BestEpisodes::CLI::Scraper 

@@episodes = []

def get_page
html = open("https://www.cleveland.com/entertainment/2020/03/the-office-at-15-ranking-the-10-best-episodes.html")
doc = Nokogiri::HTML(html)
end 

def self.scrape_episode_title 
    self.get_page.css("")
end 


def self.scrape_episode_description

end 
end 