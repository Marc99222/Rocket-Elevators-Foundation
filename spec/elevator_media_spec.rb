require 'elevator_media'
require 'rails_helper'
require 'json'
require 'open-uri'

describe ElevatorMedia do
    describe "Streamer" do

        describe ".getContent" do
            context 'test api call' do 
                it 'return a string ' do
                    expect(ElevatorMedia::Streamer.getContent("",false, false)).to eq("<div> haha </div>")
                end
            end 
            
            context 'Chuck Norris Joke ' do 
                it 'return a joke' do
                    file = JSON.load(open('https://api.chucknorris.io/jokes/random'))
                    puts("#{file["value"]} ***********")
                    expect(ElevatorMedia::Streamer.getContent(file,true,false)).to eq("<div>#{file["value"]}</div>")
                   
                end
            end 

            context 'intervention status' do 
                it 'status' do
                    file = JSON.load(open('https://rocket-elevators-fundation-rest-api.azurewebsites.net/api/interventions/Pending'))
                    puts("#{file[0]["status"]}")
                    expect(ElevatorMedia::Streamer.getContent(file,false,true)).to eq("<div>#{file[0]["status"]}</div>")
                end
            end

            # context 'Deck of Cards' do 
            #     it 'An API request' do
            #     file = JSON.load(open('https://deckofcardsapi.com/api/deck/new/shuffle/?deck_count=1'))
            #     puts("#{file}")
            #     expect(ElevatorMedia::Streamer.getContent(file,false)).to eq("<div>#{file[0]["status"]}</div>")

            #     end
            # end

            context "Create a intervention media file" do 
                
                it 'return a intervention quote' do 
                json = {
                    author: 2, 
                    result: "Incomplet",
                    report: "Test1",
                    status: "pending",
                    customer_id: 1,
                    building_id: 1,
                    battery_id: 1,
                    column_id: 1,
                    elevator_id: 1,
                    employee_id: 1,
                    start_at: nil,
                    end_at: nil

                }
         
                file = JSON.parse(json.to_json)
                # file = JSON.stringify(json)
                puts(" *******************************************")
                puts("#{file["status"]} ")
                puts(" *******************************************")
                expect(ElevatorMedia::Streamer.getContent(file,false,false)).to eq("<div>#{file["status"]}</div>")
                
                
                end
            end 

        end
    end
end

