class Garden < ActiveRecord::Base
    serialize :plants       #required to save arrays in SQLech
end
