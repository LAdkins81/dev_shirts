class Item < ActiveRecord::Base
  has_many :item_orders
  has_many :ratings
  has_many :comments
end
