class Cook < ActiveRecord::Base
  has_many :ratings
  has_many :meals
  has_many :users, through: :meals
end
