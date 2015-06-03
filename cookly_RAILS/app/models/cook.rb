class Cook < ActiveRecord::Base
  has_many :ratings
  has_many :meals
  has_many :users, through: :meals

  accepts_nested_attributes_for :ratings

  validates :cook_name, presence: true

  # def as_json(options={})
  #   super(:except => [:password_digest, :created_at, :updated_at])
  
end
