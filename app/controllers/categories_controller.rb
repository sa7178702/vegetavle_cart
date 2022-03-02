class CategoriesController < ApplicationController
  before_action :find_category,only: [:edit, :show, :update, :destroy]
	def new
		@category = Category.new
	end

	def index
		@category = Category.all
	end

	def create
		@category = Category.new(parmas_category)
		if @category.save
			redirect_to categories_path
		else
			render "new"
		end
	end

	def show
	end

	def edit
	end

	def update
		if @category.update(parmas_category)
			redirect_to categories_path
		else
			render "edit"
		end
	end

	def destroy
		if @category.destroy
			redirect_to categories_path
	    end
	end

	private

	def parmas_category
		params.require(:category).permit(:name)
	end

	def find_category
		@category = Category.find_by(id: params[:id])
	end

end
