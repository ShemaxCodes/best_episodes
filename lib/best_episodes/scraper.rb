class BestEpisodes::CLI::Scraper 

@@episodes = []

def get_page
html = open("https://www.cleveland.com/entertainment/2020/03/the-office-at-15-ranking-the-10-best-episodes.html")
doc = Nokogiri::HTML(html)
end 

def self.scrape_episodes 
    self.get_page.css("")
end 



end 