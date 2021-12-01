# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


jQuery ->
  $('#interventions_building_id').parent().hide() 
  buildings = $('#interventions_building_id').html()
  console.log(buildings)
  $('#interventions_customer_id').change ->
    customer = $('#interventions_customer_id :selected').text()
    options = $(buildings).filter("optgroup[label=#{customer}]").html();    
    console.log(options)
    if options
      $('#interventions_building_id').html("<option value=''></option>" + options)
      $('#interventions_building_id').parent().show() 

    else
      $('#interventions_building_id').empty()
      $('#interventions_building_id').parent().hide() 


  $('#interventions_battery_id').parent().hide() 
  batteries = $('#interventions_battery_id').html()
  console.log(batteries)
  $('#interventions_building_id').change ->
    building = $('#interventions_building_id :selected').text()
    options2 = $(batteries).filter("optgroup[label=#{building}]").html();    
    console.log(options2)
    if options2
      $('#interventions_battery_id').html("<option value=''></option>" + options2)
      $('#interventions_battery_id').parent().show() 

    else
      $('#interventions_battery_id').empty()
      $('#interventions_battery_id').parent().hide() 


  $('#interventions_column_id').parent().hide() 
  columns = $('#interventions_column_id').html()
  console.log(columns)
  $('#interventions_battery_id').change ->
    battery = $('#interventions_battery_id :selected').text()
    options3 = $(columns).filter("optgroup[label=#{battery}]").html();    
    console.log(options3)
    if options3
      $('#interventions_column_id').html("<option value=''></option>" + options3)
      $('#interventions_column_id').parent().show() 

    else
      $('#interventions_column_id').empty()
      $('#interventions_column_id').parent().hide() 


  
  $('#interventions_elevator_id').parent().hide() 
  elevators = $('#interventions_elevator_id').html()
  console.log(elevators)
  $('#interventions_column_id').change ->
    column = $('#interventions_column_id :selected').text()
    options4 = $(elevators).filter("optgroup[label=#{column}]").html();    
    console.log(options4)
    if options4
      $('#interventions_elevator_id').html("<option value=''></option>" + options4)
      $('#interventions_elevator_id').parent().show() 

    else
      $('#interventions_elevator_id').empty()
      $('#interventions_elevator_id').parent().hide() 




    
  




















