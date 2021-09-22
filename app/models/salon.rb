class Salon < ApplicationRecord

	has_many :services
	belongs_to :address
	has_one_attached :image

	validates :name, :location,:salon_image, presence: true
	validates :name,format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" },length: { minimum: 5,message: "name should be minimum 5 character" },
	uniqueness: true


	 

	def self.check_db(salon_id)
		where(id: salon_id).first
	end

	def self.check_name(salon_id)
		where(id: salon_id).first
	end
end
