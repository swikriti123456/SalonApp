class UserSalonsController < ApplicationController

	def create
		@salon = Salon.check_db(params[:salon_id])
		@service = Service.find(params[:service_id])

		@user_salon = Usersalon.new(user_id: current_user.id, salon_id: @salon.id)
		@user_salon.save
		
		@user_service = UserService.new(user: current_user, service: @service)
		@user_service.save
		#binding.pry
		

			flash[:notice] = "salon  is successfully add to your list"
		#else
			#flash[:alert] = @user_salon.errors.messages
		
		redirect_to my_appointment_path

	end

	def destroy
		service = Service.find(params[:id])
		user_service = UserService.where(user_id: current_user.id, service_id: service.id).first
		user_service.destroy
		flash[:notice] = "#{service.service_type} was successfully removed from appointment list"
		redirect_to my_appointment_path
	end
end
