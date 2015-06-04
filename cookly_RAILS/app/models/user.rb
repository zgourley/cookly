class User < ActiveRecord::Base

  has_secure_password

  has_many :meals
  has_many :cooks, through: :meals 
  has_many :ratings, through: :cooks 

  def accepted_meals
    self.meals.where(confirmed:true)
  end

  def unaccepted_meals
    self.meals.where(confirmed:false)
  end



end
