# Rocket-Elevators-Foundation

# LINK FOR THE WEBSITE : 

http://www.marcapc.com/


# A new form to formulate the request

<img width="1280" alt="Capture d’écran, le 2021-12-03 à 22 30 54" src="https://user-images.githubusercontent.com/91087569/144695357-4b3ca8f3-8667-40b0-b5e4-b470c68cc9cf.png">


# Sending a service ticket to ZenDesk

At the time of saving the service request, the website form creates a new ticket of type "problem" or "question" in ZenDesk. It adds in the detail section of the created ticket all the data entered in the form:

1- The Requester

2- The Customer (Company Name)

3- Building ID

4- The Battery ID

5- The Column ID if specified

6- Elevator ID if specified

7- The employee to be assigned to the task

8- Description of the request for intervention

**** The code for Zendesk are commented in controller Intervention file in the def create function because i have somme issues with the creation of my Zendesk account.

# POSTMAN JSON LINK FOR THE APIREST : 

https://www.getpostman.com/collections/b3fb8bfc5767a9283f8c

# RSPEC

For start the test put this command in the terminal:

bundle exec rspec --format documentation 

# Security 

1- Vulnerable and Outdated Components

command in the terminal for updating the gem : Bundle update

2- Broken Access Control 

controller quote: 
before_action :authenticate_user!, :only => [:index]

3- Identification and Authentication Failures 

app/models/user.rb: 

validate :password_complexity
 def password_complexity
   # Regexp extracted from https://stackoverflow.com/questions/19605150/regex-for-password-must-contain-at-least-eight-characters-at-least-one-number-a
   return if password.blank? || password =~ /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,70}$/
   errors.add :password, 'Complexity requirement not met. Length should be 8-70 characters and include: 1 uppercase, 1 lowercase, 1 digit and 1 special character'
 end

4- Cryptographic Failures

#in config/environments/production.rb
   config.to_prepare { Devise::SessionsController.force_ssl }
   config.to_prepare { Devise::RegistrationsController.force_ssl }

# Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
 config.force_ssl = true

Application controller : 
First  add : 

protect_from_forgery prepend: true, with: :exception 
   skip_before_action :verify_authenticity_token

Add this two methods in application_controller.rb
# Tell Devise to redirect after sign_in
   def after_sign_in_path_for(resource_or_scope)
       "https://marcapc.com/"
   end
 
   # Tell Devise to redirect after sign_out
   def after_sign_out_path_for(resource_or_scope)
           "https://marcapc.com/"
   end
Final result :



5- 2021-Insecure Design


https://www.google.com/recaptcha/admin/create

https://www.google.com/recaptcha/about/



