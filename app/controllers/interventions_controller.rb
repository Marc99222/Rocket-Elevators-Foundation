class InterventionsController < ApplicationController
  def index
    @interventions = Intervention.new()
  end




  def create 

    @interventions = Intervention.new(interventions_params)



  end 








  # def create
  #   @quote = Quote.new(quote_params)
  #   quote_price = @quote.price
  #   quote_elevator_needed = @quote.elevator_needed
  #   price_per_elevator = (quote_price.to_f / quote_elevator_needed.to_f)
  #   ZendeskAPI::Ticket.create!($client, :subject => "Task", :requester => { :name => @quote.company_name, :email => "rocketeam1234@gmail.com" }, :comment => { :body => "Subject: #{@quote.company_name}

  #     Comment: The company #{@quote.company_name} has made a quote for a #{@quote.building_type} building and wants the #{@quote.plan} service. 
      
  #     quote informations: 
  #     #{@quote.elevator_needed}
  #     #{price_per_elevator.round(2)}
  #     #{@quote.price}
  #     #{@quote.fees}
  #     #{@quote.total_price}
      
  #     The company #{@quote.company_name} can be reached at #{@quote.email}." }, :priority => "urgent")
  #     @quote.save
  #   redirect_to "#home"
  # end







  # ZENDESKst



  # ZendeskAPI::Ticket.create!($client, :subject => "Task", :requester => { :name => @quote.company_name, :email => "rocketeam1234@gmail.com" }, :comment => { :body => "Subject: #{@quote.company_name}

  #   Comment: The company #{@quote.company_name} has made a quote for a #{@quote.building_type} building and wants the #{@quote.plan} service. 
    
  #   quote informations: 
  #   #{@quote.elevator_needed}
  #   #{price_per_elevator.round(2)}
  #   #{@quote.price}
  #   #{@quote.fees}
  #   #{@quote.total_price}
    
  #   The company #{@quote.company_name} can be reached at #{@quote.email}." }, :priority => "urgent")






  def interventions_params
  params.require(:interventions).permet(:author , :result, :report, :status, :customer_id, :battery_id, :column_id, :elevator_id, :employee_id) 

  end



end