
class Show  

    attr_accessor :title, :description


    def self.ep_list
        get_page.css("p.article__paragraph.article__paragraph--left b").text #Title
Description
Watch link
    end 

    def initialize(title, description)
    @title = title 
    @description = description
    end 

    
end 