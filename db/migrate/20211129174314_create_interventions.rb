class CreateInterventions < ActiveRecord::Migration[5.2]
  def change
    create_table :interventions do |t|

  
      t.string :author
      t.string :result    
      t.string :report 
      t.string :status     
      t.datetime :start_at, null: true
      t.datetime :end_at,  null: true


      
    end
  end
end



# Author (EmployeeID of the ticket author) 
# CustomerID
# BuildingID
# BatteryID
# ColumnID (Can be null if none specified)
# ElevatorID (May be null if none specified)
# EmployeeID (Can be null if none specified)
# Start date and time of the intervention (must be null and void because it is not filled in the form. The field will be edited later at the time of the intervention)
# End date and time of the intervention (must be null and void because not filled in the form. The field will be edited later at the conclusion of the intervention)
# Result (Incomplete by default)
# Report (To persist the Description field)
# Status (Pending by default)
