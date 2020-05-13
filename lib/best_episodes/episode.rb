require 'open-uri'
require 'nokogiri'
require 'pry'

#module BestEpisodes::CLI::Scraper 

#This file acts as the Scraper file 
    class Episode 
       
       

        def self.get_page

            html = open("https://www.cleveland.com/entertainment/2020/03/the-office-at-15-ranking-the-10-best-episodes.html")
            doc = Nokogiri::HTML(html)
        end 

        def self.scrape_episode_list #Scrapes each episode title with Season & Episode Number
            ep_ten = get_page.css("#YWH273QDXVBTLBLL4ALSVSNUGU").text
            ep_nine = get_page.css("#AO3JILON3REBZJVWSRGDX3A3AE").text
            ep_eight = get_page.css("#3MNBSGSUDRBYXATINLS5UN6BAY").text
            ep_seven = get_page.css("#QYJALQAZQVDABILM7ZYPMCGSM4").text
            ep_six = get_page.css("#AGSSJRGXQBGK7GWJ7KZZNO4V5Y").text
            ep_five = get_page.css("#C7ZH5AVICVFJVHC2NGNJSLYXDA").text
            ep_four = get_page.css("#Z2I6XDNCO5GBZCWZ47DXAATIGM").text
            ep_three = get_page.css("#SSH3W74PRNHQTOFIXFNJF6YZQY").text
            ep_two = get_page.css("#SB3RUAFS7NBHXJJHONEU7G2NEM").text
            ep_one = get_page.css("#ZUJRZJVXZNBXDNDDWQ5KUQU7GA").text
            title_array = [ep_one, ep_two, ep_three, ep_four, ep_five, ep_six, ep_seven, ep_eight, ep_nine, ep_ten]
        end 
                   
                
               
                #get_page.css("p.article__paragraph.article__paragraph--left b")[5].text => "5. The Finale"
                #this encapsulation only scraped the episode title, leaving out season and episode number

        def self.scrape_description_list
            #description = []
                ten_des = get_page.css("#2H5WFESI2NFFHEFCZKABI7JKTU").text
                nine_des = get_page.css("#KIZBKG6CYZFVRCASNDGHDSQGKY").text
                eight_des = get_page.css("#5GJNNQRI6VHYBB2B227ZSEDZSA").text 
                seven_des = get_page.css("#FSTAVKCFERDHNMZYLVGV5NR64Q").text 
                six_des = get_page.css("#YZ4UQ6HDNVFQPGZNBLJO7XOCFM").text 
                five_des = get_page.css("#SKLEHYF3NBH4FMB7RD6CLNSXXY").text 
                four_des = get_page.css("#GO3NIJEGTRHIPOUJMQFSEOFCJI").text 
                three_des = get_page.css("#SRBCNNMDABFDJHYSDUXUNS4DIA").text 
                two_des = get_page.css("#Y2BMJR3WVJEYDEOI7FNHZQT4GE").text 
                one_des = get_page.css("#54GZBIS5IBEPXHQFTLLUZULYYA").text 
                description_array = [one_des, two_des, three_des, four_des, five_des, six_des, seven_des, eight_des, nine_des ten_des]
                    #description << ten_des
                     #puts 
                        #description
        end 
        #binding.pry

    end 
#end
Episode.scrape_description_list