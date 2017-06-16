class BaseLoginPage

  attr_accessor :account_name_field, :login_google_button, :user_next_button, :password_next_button, :login_google_confirm_button, :username, :password, :login_button

  def initialize(account_name_field, login_google_button, user_next_button, password_next_button, login_google_confirm_button, username, password, login_button)
    @account_name_field = account_name_field
    @login_google_button = login_google_button
    @user_next_step_auth = user_next_button
    @pass_next_step_auth = password_next_button
    @login_confirm_button = account_name_field
    @username = username
    @password = password
    @login_button = login_button
  end

  def get_account_name(account)
    @account_name_field.text(account)
  end

  def click_to_auth_google
    begin
      $driver.hide_keyboard
    rescue Exception => e
      puts e
    end
    @login_google_button.click
  end

  def click_to_next_user_step
    begin
      $driver.hide_keyboard #dont fail if keyboard is already hidden
    rescue Exception => e
      puts e
    end
    @user_next_step_auth.click
  end

  def click_to_next_password_step
    begin
      $driver.hide_keyboard #dont fail if keyboard is already hidden
    rescue Exception => e
      puts e
    end
    @pass_next_step_auth.click
  end

  def click_to_confirm_google_auth
    begin
      $driver.hide_keyboard #dont fail if keyboard is already hidden
    rescue Exception => e
      puts e
    end
    @login_confirm_button.click
  end

  def fill_email(username)
    @username.send_keys(username)
  end

  def fill_password(password)
    @password.send_keys(password)
  end

  def click_to_login_button
    begin
      $driver.hide_keyboard #dont fail if keyboard is already hidden
    rescue Exception => e
      puts e
    end
    @login_button.click
  end

end