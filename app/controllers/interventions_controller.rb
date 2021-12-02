require 'zendesk_main'

class InterventionsController < ApplicationController
 
  def index
    @interventions = Intervention.new()
  end




  def create 
    @interventions = Intervention.new(interventions_params)
    @interventions.author = current_user.id
    @interventions.result = 'Incomplete'
    @interventions.status =  'Pending'
    @interventions.start_at =  nil
    @interventions.end_at =  nil
    ZendeskAPI::Ticket.create!($client, :subject => "Task", :requester => { :name => @interventions.company_name, :email => "marcapc@outlook.com" }, :comment => { :body => "Subject: #{@interventions.company_name}

    Comment: The company #{@interventions.company_name} has made a interventon for a #{@interventions.building_id} building and wants the #{@interventions.plan} service. 
    
    interventions informations: 
    #{@interventions.battery_id}
    #{@interventions.column_id}
    #{@interventions.elevator_id}
    #{@interventions.elevator_id}
    
  
    The company #{@interventions.company_name} can be reached at #{@interventions.email}." }, :priority => "urgent")

  

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



  def interventions_params
    
  params.require(:interventions).permit(:author , :result, :report, :status, :customer_id, :building_id, :battery_id, :column_id, :elevator_id, :employee_id, :start_at, :end_at) 

  end



end