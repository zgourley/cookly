class User < ActiveRecord::Base
  has_many :meals
  has_many :cooks, through: :meals 
end
