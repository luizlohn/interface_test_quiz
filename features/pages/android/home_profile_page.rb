require './features/pages/home_profile_page'

module Android
  class HomeProfile < BaseLoginPage

    attr_reader :driver

    def initialize(driver)
      @driver = driver

      play_button = @driver.id('btPlay')
      challenge_button = @driver.id('btChallenge')
      mundial_possition_value = @driver.id('txtUserOrdinalPosition')
      coins_value = @driver.id('txtUserCoins')
      country_value = @driver.id('txtUserTitle')
      name_value = @driver.id('txtUserName')
      setting_button = @driver.class('btSettings')
      super(play_button, challenge_button, mundial_possition_value, coins_value, country_value, name_value, setting_button  )
    end

    def error_message
      @driver.id('login_error')
    end

  end
end