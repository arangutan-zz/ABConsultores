class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  belongs_to :empresa

  devise :database_authenticatable,:recoverable, :rememberable, :trackable, :validatable


  def isAdmin?
  	rol == 'administrador'
  end


  def isSuperAdmin?
  	rol == 'superadmin'
  end

end
