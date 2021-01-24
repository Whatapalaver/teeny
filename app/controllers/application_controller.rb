class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  private

  def integration_test?
    Rails.env.test?
  end

  def observable_redirect_to(url)
    if integration_test?
      render plain: "If this wasn't an integration test, you'd be redirected to: #{url}"
    else
      redirect_to url
    end
  end
end
