class ItemsController < ApplicationController			

    before_action :get_item,only:[:update,:show,:edit,:destroy]
	def index
		@items=Item.all
		
	end
	def create
		@item=Item.create(params[:item].permit!)
		if @item.errors.empty?
			redirect_to item_path(@item)
		else
			render "items/show"
		end
	end
	def update
		@item.update_attributes(params[:item].permit(:price, :name,:weight,:real))
		redirect_to item_path @item
	end
	def show

	  if  @item
		render "items/show"
	  else
		render plain: "Page not found",status:404
	  end
	end
	def new
		@item=Item.new
	end
	def edit
	end
	def destroy
		@item.destroy()
		redirect_to action:"index"
	end

	def check
		@item=Item.find(params[:id])
		render plain:"True #{@item.id}"
	end
	private
	def get_item
		@item=Item.find(params[:id])
	end
end
