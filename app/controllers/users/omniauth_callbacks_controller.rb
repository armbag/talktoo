class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  # def linkedin
  #   @user = User.from_linkedin(request.env['omniauth.auth'])
  #   if @user.persisted?
  #     sign_in_and_redirect @user, event: :authentication
  #   else
  #     session['devise.linkedin'] = request.env['omniauth.auth']
  #     redirect_to new_user_registration_url
  # end
  def linkedin
    user = User.find_for_linkedin_oauth(request.env['omniauth.auth'])
    puts "#1"*33

    if user.persisted?
      puts "#2"*33

      sign_in_and_redirect user, event: :authentication
      set_flash_message(:notice, :success, kind: 'linkedin') if is_navigational_format?
      puts "#3"*33
    else
      puts "#4"*33

      session['devise.linkedin_data'] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end
end
