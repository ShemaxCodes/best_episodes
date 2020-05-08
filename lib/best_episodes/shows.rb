
class Show  

    attr_accessor :title, :description


    def self.ep_list #Incomplete created array 
        ep_array = [get_page.css("#YWH273QDXVBTLBLL4ALSVSNUGU").text, get_page.css("#AO3JILON3REBZJVWSRGDX3A3AE").text,
            ep_eight = get_page.css("#3MNBSGSUDRBYXATINLS5UN6BAY").text,
            ep_seven = get_page.css("#QYJALQAZQVDABILM7ZYPMCGSM4").text,
            ep_six = get_page.css("#AGSSJRGXQBGK7GWJ7KZZNO4V5Y").text,
            ep_five = get_page.css("#C7ZH5AVICVFJVHC2NGNJSLYXDA").text,
            ep_four = get_page.css("#Z2I6XDNCO5GBZCWZ47DXAATIGM").text,
            ep_three = get_page.css("#SSH3W74PRNHQTOFIXFNJF6YZQY").text,
            ep_two = get_page.css("#SB3RUAFS7NBHXJJHONEU7G2NEM").text,
            ep_one = get_page.css("#ZUJRZJVXZNBXDNDDWQ5KUQU7GA").text]
        puts ep_array
    end 

    def initialize(title, description)
    @title = title 
    @description = description
    end 

    def 
end 