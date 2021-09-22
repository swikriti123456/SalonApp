class Salon < ApplicationRecord

	has_many :services

	has_one_attached :image

	def self.check_db(salon_id)
		where(id: salon_id).first
	end

	def self.check_name(salon_id)
		where(id: salon_id).first
	end
end
