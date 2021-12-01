# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/




jQuery ->
  $('#interventions_building_id').parent().hide() 
  buildings = $('#interventions_building_id').html()
  console.log(buildings)
  $('#interventions_customer_id').change ->
    customer = $('#interventions_customer_id :selected').text()
    options = $(buildings).filter('optgroup[label="' + customer + '"]').html();    
    console.log(options)
    if options
      $('#interventions_building_id').html(options)
      $('#interventions_building_id').parent().show() 

    else
      $('#interventions_building_id').empty()
      $('#interventions_building_id').parent().hide() 





























# jQuery ->
#   $('#interventions_building_id').parent().hide() 
#   buildings = $('#interventions_building_id').html()

#   $('#interventions_battery_id').parent().hide() 
#   batteries = $('#interventions_battery_id').html()

#   $('#interventions_column_id').parent().hide() 
#   columns = $('#interventions_column_id').html()

#   $('#interventions_elevator_id').parent().hide() 
#   elevators = $('#interventions_elevator_id').html()

#   $('#interventions_employee_id').parent().hide() 
#   employees = $('#interventions_employee_id').html()

#   console.log(buildings)
#   $('#interventions_customer_id').change ->
#     customer = $('#interventions_customer_id :selected').text()
#     options = $(buildings).filter('optgroup[label="' + customer + '"]').html();    
#     console.log(options)
#     if options
#       $('#interventions_building_id').html(options)
#       $('#interventions_building_id').parent().show() 

#     else
#       $('#interventions_building_id').empty()
#       $('#interventions_building_id').parent().hide() 


#  console.log(batteries)
#   $('#interventions_building_id').change ->
#     customer = $('#interventions_customer_id :selected').text()
#     options = $(buildings).filter('optgroup[label="' + customer + '"]').html();    
#     console.log(options)
#     if options
#       $('#interventions_building_id').html(options)
#       $('#interventions_building_id').parent().show() 

#     else
#       $('#interventions_building_id').empty()
#       $('#interventions_building_id').parent().hide() 















# jQuery ->
#     $('#interventions_battery_id').parent().hide() 
#     batteries = $('#interventions_battery_id').html()
#      console.log(batteries)
#     $('#interventions_building_id').change ->
#      building = $('#interventions_building_id :selected').text()
#      options = $(batteries).htmlfilter('optgroup[label="' + building + '"]').html();    
#     console.log(options)
#     if options
#       $('#interventions_battery_id').html(options)
#       $('#interventions_battery_id').parent().show() 
           
#     else
#       $('#interventions_battery_id').empty()
#       $('#interventions_battery_id').parent().hide() 



jQuery ->
  $('#interventions_building_id').parent().hide() 
  buildings = $('#interventions_building_id').html()
  console.log(buildings)
  $('#interventions_customer_id').change ->
    customer = $('#interventions_customer_id :selected').text()
    options = $(buildings).filter('optgroup[label="' + customer + '"]').html();    
    console.log(options)
    if options
      $('#interventions_building_id').html(options)
      $('#interventions_building_id').parent().show() 

    else
      $('#interventions_building_id').empty()
      $('#interventions_building_id').parent().hide() 

