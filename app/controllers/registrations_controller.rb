class RegistrationsController < Devise::RegistrationsController

  def new
    super()
  end

  def edit
    super()
  end

  def delete
    super()
  end

  def create
    if verify_recaptcha
      super
      @user.save!
      role = Role.find(3)
      @user.roles << role
      @user.save!

    else
      build_resource
      clean_up_passwords(resource)
      flash[:alert] = "There was an error with the recaptcha code below. Please re-enter the code and click submit."
      render_with_scope :new
    end
  end
end
