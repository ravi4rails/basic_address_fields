namespace :add_address_fields do
  
  desc "This will add fields to respected models"
  
  task :generate_address_components, [:modelname] => [:environment] do |t, args|
  	`rails g migration add_address_fields_to_"#{args[:modelname]}" address:string city:string state:string country:string latitude:float longitude:float`
  	sleep 2
  	`rails db:migrate`
  end

end
