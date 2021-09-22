class SalonsController < ApplicationController
   before_action :set_salon, only: [:edit, :update, :destroy]

   def new
      @salon = Salon.new 
   end

   def create
      @salon = Salon.new(salon_params)

      if @salon.save
         flash[:notice] = "salon was created successfully"
         redirect_to new_salon_path
      else
         render 'new'

      end
   end

   def edit

   end

   def update
   
      if @salon.update(salon_params)
         flash[:notice] = "salon was updated successfully"
         redirect_to my_salon_path
      else
         render 'edit'
      end
   end


   def destroy
      
      @salon.destroy
      flash[:notice] = "this data deleted successfully"

      redirect_to my_salon_path
   end

private

   def set_salon
      @salon = Salon.find(params[:id ])
   end

   def salon_params
      params.require(:salon).permit(:name, :location, :image)
   end

end