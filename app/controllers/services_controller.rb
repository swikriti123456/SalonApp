class ServicesController < ApplicationController
before_action :set_service, only: [:edit, :update, :destroy]

	def new
		@service = Service.new 
		@salon = Salon.find(params[:salon_id])
		#@salon = Salon.all
	end

	def create
		@service = Service.new(service_params)
		@salon = @service.salon
		if @service.save
			flash[:notice] = "service was created successfully"
			redirect_to new_service_path(salon_id: @service.salon_id)
		else
			
			render 'new'
		end
			
		
	end

	def edit

	end

	def update
	
		if @service.update(service_params)
			flash[:notice] = "service was updated successfully"
			redirect_to my_service_path
		else
			render 'edit'
		end
	end


	def destroy
		
		@service.destroy
		flash[:notice] = "this data deleted successfully"

		redirect_to my_service_path
	end

private

	def set_service
		@service = Service.find(params[:id ])
	end

	def service_params
		params.require(:service).permit(:service_type, :price, :working_hr, :salon_id, :hair_stylist ,:image)
	end
end