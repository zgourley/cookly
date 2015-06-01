class Rating < ActiveRecord::Base
  belongs_to :cook
  belongs_to :user
end
