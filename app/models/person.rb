class Person < ActiveRecord::Base
  has_many :gifts
  default_scope { order("created_at ASC") }
end
