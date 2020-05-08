
class Show  

    attr_accessor :title, :description


    def self.ep_list
        ep_ten = get_page.css("#YWH273QDXVBTLBLL4ALSVSNUGU").text
    end 

    def initialize(title, description)
    @title = title 
    @description = description
    end 

    
end 