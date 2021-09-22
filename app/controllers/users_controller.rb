class UsersController < ApplicationController

	def my_salon
		@salon = Salon.all
	end

	def my_service
		puts "hii swikriti ranjan"
		@service = Service.where(salon_id: params[:salon_id])
		#byebug
		#@service = Service.find(params[:id])
		#@service = Service.all
	end

	def my_appointment
		#@appointments = current_user.salons
	
		@appointments = current_user.services
		
		@salon_name = Usersalon.where(user_id: current_user.id)
		
		#@tracked_service_id = Service.find(params[:id])
		#@tracked = current_user.services
		#@tracked = Service.where(id: @tracked_salon).uniq
	
		#@tracked = Service.find(id: params[:service_id])

	end

	#def show 
	#	@user = User.find(params[:id])
    #	@tracked_salon = @user.salons
	#end
end