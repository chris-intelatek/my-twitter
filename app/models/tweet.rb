class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes

  validates :message, presence: true, length: {maximum: 140, too_long: "A tweet cannot be more than 140 characters."}
  
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
  
end
