# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

employees = [{:first_name => 'Ryan', :last_name => 'Smith', :username => 'smithr', :password => '12345', :hours_worked => 8, :pay_per_hour => 60, :isManager => 0 },
    	  {:first_name => 'Sheila', :last_name => 'Headlee', :username => 'headlees', :password => '12345', :hours_worked => 8, :pay_per_hour => 60, :isManager => 0 },
    	  {:first_name => 'Chad', :last_name => 'Anderson', :username => 'andersonc', :password => '12345', :hours_worked => 5, :pay_per_hour => 10, :isManager => 1 },
      	  {:first_name => 'Sean', :last_name => 'Conrad', :username => 'conrads', :password => '12345', :hours_worked => 5, :pay_per_hour => 60, :isManager => 1 },
      	  {:first_name => 'Ron', :last_name => 'Peterson', :username => 'pertersonr', :password => '12345', :hours_worked => 5, :pay_per_hour => 60, :isManager => 1 },
    	  {:first_name => 'Todd', :last_name => 'Simpson', :username => 'simpsont', :password => '12345', :hours_worked => 5, :pay_per_hour => 60, :isManager => 1 },
    	  {:first_name => 'Jana', :last_name => 'Kirchman', :username => 'kirchmanj', :password => '12345', :hours_worked => 5, :pay_per_hour => 60, :isManager => 1 },
      	  {:first_name => 'Ryan', :last_name => 'Jackson', :username => 'jacksonr', :password => '12345', :hours_worked => 5, :pay_per_hour => 60, :isManager => 1 }
  	 ]

employees.each do |employee|
  Employee.create!(employee)
end
