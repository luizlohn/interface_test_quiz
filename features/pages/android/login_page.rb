require './features/pages/login_page'

module Android
  class LoginPage < BaseLoginPage

    attr_reader :driver

    def initialize(driver)
      @driver = driver

      account_name_field = @driver.id('com.google.android.gms:id/account_name')
      login_google_button = @driver.id('btLoginGoogle')
      user_next_button = @driver.id('identifierNext')
      password_next_button = @driver.id('passwordNext')
      login_google_confirm_button = @driver.id('signinconsentNext')
      username = @driver.id('identifierId')
      password = @driver.class('android.widget.EditText')
      login_button = @driver.id('login_bt')
      super(account_name_field, login_google_button, user_next_button, password_next_button, login_google_confirm_button, username, password, login_button)
    end

    def error_message
      @driver.id('login_error')
    end

  end
end