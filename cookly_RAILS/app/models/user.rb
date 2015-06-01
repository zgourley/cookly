class User < ActiveRecord::Base
  has_many :meals
  has_many :cooks, through: :meals 
  has_many :ratings, through: :cooks 
end
