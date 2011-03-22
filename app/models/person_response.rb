class PersonResponse < ActiveRecord::Base
  belongs_to :person
  belongs_to :response
end
