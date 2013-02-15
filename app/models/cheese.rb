class Cheese < ActiveRecord::Base
  attr_accessible :cheese_description, :cheese_name, :milk_type, :origin_country, :pasteurized, :taste, :texture

  validates_presence_of :cheese_name, :cheese_description, :origin_country, :milk_type, :pasteurized, :taste, :texture

  belongs_to :user
end
