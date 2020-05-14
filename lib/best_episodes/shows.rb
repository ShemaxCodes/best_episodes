require 'pry'

class Show  #Objects 

    attr_accessor :title, :description
   ## teach your class how to keep track of its objects!! and make sure they get saved in initialize!!!
    @@all = []

    def initialize(title, description)
        @title = title 
        @description = description
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def self.create_from_array(title_array, description_array)
       
        title_array.each_with_index do |t, i|    
            
        episode = Show.new(t, description_array[i])
        
        end  
    end 
end 
  




        ## I'm passing in these two arrays
       ## the KEY thing is that the arrays have the episodes in the samee order
       ## I need to iterate over ONE of them
       ## and make new shows using that informationPLUS the matching attribute in the second array
       ## array.each do |something|
       ## Show.new(title, descrioptn)
       ##

    
  

#Show.create_from_array(title_array, description_array)