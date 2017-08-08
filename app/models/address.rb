class Address < ActiveRecord::Base
  belongs_to :user

  # lots and lots of validations
end
