module ElevatorMedia

    class Streamer

        def self.getContent(input, isjoke,intervention) 
            
            if input ==  ""
                "<div> haha </div>"
                
            elsif isjoke

            "<div>#{input["value"]}</div>"

            elsif intervention
                "<div>#{input[0]["status"]}</div>"

            else 
                @interventions = Intervention.new(input)
                @interventions.save
                puts(@interventions.id)
                "<div>#{input["status"]}</div>"

            end
        end
    end
end