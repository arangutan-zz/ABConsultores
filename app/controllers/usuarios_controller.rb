class UsuariosController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy ,:actualizar_password]

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
        format.html { redirect_to '/usuarios/index', notice: 'El usuario se creo correctamente' }
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
        format.html { redirect_to '/usuarios/index', notice: 'El usuarios se edito correctamente' }
      else
        format.html { redirect_to '/usuarios/index' }
      end
    end

  end

  def edit
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to '/usuarios/index', notice: 'El usuarios se elimino correctamente' }
      format.json { head :no_content }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.pdf  do
        pdf = UsuarioPdf.new(@user, current_user)
        send_data pdf.render, filename: "prueba.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end

  end

  def actualizar_password

  end

  def update_password

    @user = User.find(current_user.id)
    if @user.update(user_password_params)
      # Sign in the user by passing validation in case his password changed
      sign_in @user, :bypass => true
      redirect_to root_path
    else
      redirect_to usuarios_actualizar_password_path(current_user)
    end
  end


  private
   # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :cargo, :nombre, :cargo, :apellido, :telefono, :empresa_id, :rol, :username , :password, :password_confirmation)
    end

    def user_password_params
      # NOTE: Using `strong_parameters` gem
      params.required(:user).permit(:password, :password_confirmation)
    end

end
