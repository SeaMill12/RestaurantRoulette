# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
gardens = [{:garden_name => "Front Yard", :user_id => '0', :size_x => '10', :size_y => '10', :plants => [["Large Pot"]]},
            {:garden_name => "Back Yard", :user_id => '0', :size_x => '10', :size_y => '10', :plants => [["Small Pot"]]}]
            
plants = [{:plant_name => 'Potatoes', :plant_date => '25-Nov-1992', :plant_size => "Medium Pot", :water_freq => "7"},
    	  {:plant_name => 'Tomatoes', :plant_date => '26-Oct-1984', :plant_size => "Medium Pot", :water_freq => "7"},
    	  {:plant_name => 'Corn', :plant_date => '21-Jul-1989', :plant_size => "Medium Pot", :water_freq => "7"},
      	  {:plant_name => 'Green Beans', :plant_date => '10-Aug-2011', :plant_size => "Medium Pot", :water_freq => "7"},
      	  {:plant_name => 'Apples', :plant_date => '5-Jan-2001', :plant_size => "Medium Pot", :water_freq => "7"},
      	  {:plant_name => 'Cucumbers', :plant_date => '25-Apr-2001', :plant_size => "Medium Pot", :water_freq => "7"},
      	  {:plant_name => 'Squash', :plant_date => '6-Apr-1968', :plant_size => "Medium Pot", :water_freq => "7"},
      	  {:plant_name => 'Bell Peppers', :plant_date => '5-Nov-2004', :plant_size => "Medium Pot", :water_freq => "7"},
      	  {:plant_name => 'Carrots', :plant_date => '12-Jun-1981', :plant_size => "Medium Pot", :water_freq => "7"},
      	  {:plant_name => 'Spinach', :plant_date => '21-Jun-2000', :plant_size => "Medium Pot", :water_freq => "7"},
      	  {:plant_name => 'Water Mellons', :plant_date => '25-Nov-1992', :plant_size => "Medium Pot", :water_freq => "7"},
    	  {:plant_name => 'Zucinni', :plant_date => '26-Oct-1984', :plant_size => "Medium Pot", :water_freq => "7"},
    	  {:plant_name => 'Asparagus', :plant_date => '21-Jul-1989', :plant_size => "Medium Pot", :water_freq => "7"},
      	  {:plant_name => 'Lima Beans', :plant_date => '10-Aug-2011', :plant_size => "Medium Pot", :water_freq => "7"},
      	  {:plant_name => 'Penuts', :plant_date => '5-Jan-2001', :plant_size => "Medium Pot", :water_freq => "7"},
      	  {:plant_name => 'Grass Seed',  :plant_date => '25-Apr-2001', :plant_size => "Medium Pot", :water_freq => "7"},
      	  {:plant_name => 'Squash', :plant_date => '6-Apr-1968', :plant_size => "Medium Pot", :water_freq => "7"},
      	  {:plant_name => 'Beats', :plant_date => '5-Nov-2004', :plant_size => "Medium Pot", :water_freq => "7"},
      	  {:plant_name => 'Cabbage', :plant_date => '12-Jun-1981', :plant_size => "Medium Pot", :water_freq => "7"},
      	  {:plant_name => 'Rhubarb', :plant_date => '21-Jun-2000', :plant_size => "Medium Pot", :water_freq => "7"}
  	 ]
gardens.each do |garden|
    Garden.create!(garden)
end
    
plants.each do |plant|
  Plant.create!(plant)
end
