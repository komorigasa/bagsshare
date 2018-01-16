class Photo < ActiveRecord::Base
  belongs_to :listing

	has_attached_file :image,style: { medium: '300x300', thumb: '100x100' }, default_url: '/images/no_image.png'
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
