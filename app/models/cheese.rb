class Cheese < ActiveRecord::Base

  attr_accessible :image, :cheese_description, :cheese_name, :milk_type, :origin_country, :pasteurized, :taste, :texture

  validates_presence_of :cheese_name, :origin_country, :milk_type, :taste, :texture
  validates_attachment :image, presence: true, content_type: {content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']}, size: {less_than: 3.megabytes}

  has_attached_file :image , :styles => { :medium => "400x300>", :thumb => "100x100>" },
      :storage => :s3,
      :s3_credentials => "#{Rails.root}/config/s3.yml",
      :path => "assets/:class/:attachment/:id/:style.:extension",
      #:path => ":attachment/activities/:id/:style.:extension",
      :s3_permissions => 'public_read',
      :s3_protocol => 'http',
      :bucket => 'choose-cheese'


  #scope :search, lambda{|search| where("cheese_name: LIKE ?", "%#{search}%")}

  def self.search(search)
    if search
      find(:all, :conditions => ['cheese_name ILIKE ?', "%#{search}%"] )
    else
      find(:all)
    end
  end

end
