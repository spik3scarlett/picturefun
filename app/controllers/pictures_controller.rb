class PicturesController < ApplicationController
  def destroy
    Picture.find(params[:id]).destroy
    flash[:success] = "Picture deleted"
    redirect_to pictures_url
  end

  def index
    @pictures = Picture.paginate(page: params[:page])
  end

  def new
    @picture = Picture.new
  end

  def show
   @picture = Picture.find(params[:id])
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      flash[:success] = "Picture saved successfully!"
      redirect_to @picture # to jest to samo co > redirect_to user_url(@user) < This is because Rails automatically infers from redirect_to @user that we want to redirect to user_url(@user).
    else
      flash[:danger] = "Picture not saved!"
      render 'new'
    end
  end

  def edit
     @picture = Picture.find(params[:id])
  end

  def update
   @picture = Picture.find(params[:id])
    if @picture.update_attributes(user_params) #
      flash[:success] = "Profile updated"
      redirect_to pictures_path
    else
      render 'edit'
    end
  end

private

    def picture_params
      params.require(:picture).permit(:name, :url)
    end

end
