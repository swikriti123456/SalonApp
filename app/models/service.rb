class Service < ApplicationRecord

	belongs_to :salon

	has_one_attached :image

	 has_many :user_services
     has_many :users, through: :user_services

	def find_data(service_id)
		price = find(service_id).price

	 return	price
	end
end
