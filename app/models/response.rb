class Response < ActiveRecord::Base
  belongs_to :category
  belongs_to :engineer_type
end
