# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

employees = [{id => '001', :First_Name => 'Ryan', :Last_Name => 'Smith', :username => 'smithr', :password => '12345', :hours_worked => '8', :Pay_per_hour => '60', :isManager => 0 },
    	  {id => '002', :First_Name => 'Sheila', :Last_Name => 'Headlee', :username => 'headlees', :password => '12345', :hours_worked => '8', :Pay_per_hour => '60', :isManager => 0 },
    	  {id => '003', :First_Name => 'Chad', :Last_Name => 'Anderson', :username => 'andersonc', :password => '12345', :hours_worked => '5', :Pay_per_hour => '10', :isManager => 1 },
      	  {id => '004', :First_Name => 'Sean', :Last_Name => 'Conrad', :username => 'conrads', :password => '12345', :hours_worked => '5', :Pay_per_hour => '60', :isManager => 1 },
      	  {id => '005', :First_Name => 'Ron', :Last_Name => 'Peterson', :username => 'pertersonr', :password => '12345', :hours_worked => '5', :Pay_per_hour => '60', :isManager => 1 },
    	  {id => '006', :First_Name => 'Todd', :Last_Name => 'Simpson', :username => 'simpsont', :password => '12345', :hours_worked => '5', :Pay_per_hour => '60', :isManager => 1 },
    	  {id => '007', :First_Name => 'Jana', :Last_Name => 'Kirchman', :username => 'kirchmanj', :password => '12345', :hours_worked => '5', :Pay_per_hour => '60', :isManager => 1 },
      	  {id => '008', :First_Name => 'Ryan', :Last_Name => 'Jackson', :username => 'jacksonr', :password => '12345', :hours_worked => '5', :Pay_per_hour => '60', :isManager => 1 }
  	 ]

employees.each do |employee|
  Employee.create!(employee)
end
