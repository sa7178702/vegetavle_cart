class V1::ApiTablesController < ApplicationController
      protect_from_forgery with: :null_session
def index
    @api_table = ApiTable.all
    render json: {status: 'SUCCESS', message: 'All user list', data: @api_table},status: :ok
end
def create
    @api_table = ApiTable.new(api_params)
    if @api_table.save
      render json: {status: 'SUCCESS', message: 'successful created', data: @api_table},status: :ok
    else
      render json: {status: 'Not Created', message: 'Not created successful', data: @api_table},status: :ok
    end
end
def show
    @api_table = ApiTable.find(params[:id])
    render json: {status: 'SUCCESS', message: 'user data', data: @api_table},status: :ok
 end
private
def api_params
  params.require(:api_table).permit(:name ,:email ,:password ,:auth)
end
end
