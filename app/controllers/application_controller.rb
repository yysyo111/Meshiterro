class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:top]
  # :authenticate_user!とすることによって、「ログイン認証されていなければ、ログイン画面へリダイレクトする」機能
  # exceptは指定したアクションをbefore_actionの対象から外す
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def after_sign_in_path_for(resource)
    post_images_path
  end
  # サインイン後にどこに遷移するかを設定しているメソッド
  
  def after_sign_out_path_for(resource)
    about_path
  end
  # サインアウト後にどこに遷移するかを設定するメソッド
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
