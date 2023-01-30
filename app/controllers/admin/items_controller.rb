class Admin::ItemsController < ApplicationController

  def new
    @shop_image = ShopImage.new
  end

  def create
    @shop_image = PostImage.new(shop_image_params)
    @shop_image.user_id = current_user.id
    @shop_image.save
    redirect_to shop_images_path
  end

  def index
  end

  def show
  end

  def destroy
  end


  private

  def post_image_params
    params.require(:soph_image).permit(:items_name, :image, :caption)
  end

end
