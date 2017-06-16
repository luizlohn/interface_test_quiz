require './features/pages/home_profile_page'

module IOS
  class HomeProfile < BaseLoginPage

    attr_reader :driver

    def initialize(driver)
      @driver = driver

      play_button = @driver.id('')
      challenge_button = @driver.id('')
      mundial_possition_value = @driver.id('')
      coins_value = @driver.id('')
      country_value = @driver.id('')
      name_value = @driver.id('')
      setting_button = @driver.class('')
      super(play_button, challenge_button, mundial_possition_value, coins_value, country_value, name_value, setting_button  )
    end

    def error_message
      @driver.id('LoginErrorLabel')
    end

  end
end