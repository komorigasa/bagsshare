class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  has_many :reservations


  #必須項目
  validates :travel_type, presence:true
  validates :travel_country, presence:true
  validates :departure_port, presence:true
  validates :arrival_port, presence:true


  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

end

