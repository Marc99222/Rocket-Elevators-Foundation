class InterventionsController < ApplicationController
  #  before_action :correct_user
  def index
    @interventions = Intervention.new()
  end


  # def set_current_user
  #   @author = current_user
  #   if session[:user_id]
  #     Current.user = User.find_by(id: session[:user_id])


  def create 
   
  # 2 @author.correct_user()
  
    

    @interventions = Intervention.new(interventions_params)
    @interventions.author = current_user.id
    @interventions.result = 'Incomplete'
    @interventions.status =  'Pending'
    @interventions.start_at =  nil
    @interventions.end_at =  nil
    
    




    # puts(@intervention.author)
    puts("***************************************************#{@interventions.author}")
    puts("***************************************************#{@interventions.result}")
    puts("***************************************************#{@interventions.status}")
    puts("***************************************************#{@interventions.report}")
    puts("***************************************************#{@interventions.customer_id}")
    puts("***************************************************#{@interventions.building_id}")
    puts("***************************************************#{@interventions.battery_id}")
    puts("***************************************************#{@interventions.column_id}")
    puts("***************************************************#{@interventions.elevator_id}")
  
    @interventions.save
  redirect_to "intervention/#index"



  end 



  # def correct_user
  #   @interventions = current_user.interventions.find_by(id: params[:author])
  #   redirect_to root_url if @interventions.nil?
  # end







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
    
  params.require(:interventions).permit(:author , :result, :report, :status, :customer_id, :building_id, :battery_id, :column_id, :elevator_id, :employee_id, :start_at, :end_at) 

  end



end