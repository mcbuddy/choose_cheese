class Cheese < ActiveRecord::Base
  attr_accessible :image, :cheese_description, :cheese_name, :milk_type, :origin_country, :pasteurized, :taste, :texture

  validates_presence_of :cheese_name, :origin_country, :milk_type, :pasteurized, :taste, :texture
  validates_attachment :image, presence: true, content_type: {content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']}, size: {less_than: 5.megabytes}

  has_attached_file :image
end
