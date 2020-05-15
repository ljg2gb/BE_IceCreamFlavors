# IceCreamFlavors

This is a practice repo fr strong params and validations. On the frontend (https://github.com/ljg2gb/FE_IceCreamFlavors) I will be learning full CRUD controlled forms, DOM manipulation, eventListeners, custom fetch requests, etc. 

BE notes:
* Create new Rais api (rails new name_of_directory --api)
* Create resources (rails g resource with attributes)
* Enable cors, uncomment cors and bcrypt from Gemfile
* run bundle install
* Double check migrations for proper references syntax, and :password_digest
* add validations including "has_secure_password" in corresponding models
* add controller actions: create a private method for strong_params, and modify create and update controller actions to take in strong_params as the parameter
* add error messages in the models. If you add a message, rails defaults the validation to true. ex. "validates :name, :username, :email, :password, presence: {message: "All fields are required"}" 
* modify relevant controller actions with if else statements to accomodate error messages: "render json: @user.errors.messages"
* migrate models 
