class ProfilesController < ApplicationController

  before_action :find_profile, only: [:show, :update, :destroy, :edit]

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      redirect_to root_path, notice: "プロフィール登録が完了しました"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @@profile.update(profile_params)
      redirect_to root_path, notice: "プロフィールを更新しました"
    else
      render :edit
    end
  end
  
  private

  def profile_params
    params.require(:profile).permit(:name, :detail, :image)
  end

  def find_profile
    @profile = Profile.find(params[:id])
  end

end
