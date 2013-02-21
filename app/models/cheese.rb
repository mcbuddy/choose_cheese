class Cheese < ActiveRecord::Base
  attr_accessible :image, :cheese_description, :cheese_name, :milk_type, :origin_country, :pasteurized, :taste, :texture

  validates_presence_of :cheese_name, :origin_country, :milk_type, :pasteurized, :taste, :texture
  validates_attachment :image, presence: true, content_type: {content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']}, size: {less_than: 3.megabytes}

  has_attached_file :image , :styles => { :medium => "400x300>", :thumb => "100x100>" }

  searchable do
  	text :cheese_name
  	text :cheese_description
    text :origin_country
    text :milk_type
    text :taste
    text :texture
  end
end
