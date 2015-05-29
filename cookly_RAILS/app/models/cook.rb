class Cook < ActiveRecord::Base
  has_many :ratings
  has_many :meals
  has_many :users, through: :meals

  validates :cook_name, presence: true
end
