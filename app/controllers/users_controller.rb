class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @usuarios = current_user.empresa.users.all
    
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to '/users/index', notice: 'User was successfully created.' }
        format.json { render :index, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to '/users/index', notice: 'User was successfully edited.' }
      else
        format.html { redirect_to '/users/index' }
      end
    end

  end

  def edit
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to '/users/index', notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def show
  end

  private
   # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :cargo, :nombre, :cargo, :apellido, :telefono, :empresa_id, :rol, :password, :password_confirmation, :username)
    end

end
