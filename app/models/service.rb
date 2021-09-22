class Service < ApplicationRecord

	belongs_to :salon
	validates :service_type, :hair_stylist,:service_image, :price, presence: true, uniqueness: true

	validates :price, numericality: { only_integer: true }
	validates :service_type, :hair_stylist, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }

	has_one_attached :image

	 has_many :user_services
     has_many :users, through: :user_services


	def find_data(service_id)
		price = find(service_id).price

	 return	price
	end
end
