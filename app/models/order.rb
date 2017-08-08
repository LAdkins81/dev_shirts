class Order < ActiveRecord::Base
  belongs_to :user
  has_many :items

  # a few validations
end
