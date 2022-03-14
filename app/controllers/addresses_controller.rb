class  AddressesController < ApplicationController
  before_action :find_address
def index
	@address = current_user.addresses
end

def new
	@address = Address.new
end

def create
	@address = Address.new(address_params)
	if @address.save
		redirect_to addresses_path
	else
		render "new"
	end
end

def show
	respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Address id: #{@address.id}",template: "addresses/show.html.erb"   # Excluding ".pdf" extension.
      end
    end
end

def edit
end

def update
	if @address.update(address_params)
		redirect_to addresses_path
	end
end

def destroy
	if @address.destroy
		redirect_to addresses_path
	end
end


private

def address_params
	params.require(:address).permit(:street_address, :city ,:state ,:country ,:pin_code ,:user_id)
end

def find_address
	@address = Address.find_by(id: params[:id])
end


end