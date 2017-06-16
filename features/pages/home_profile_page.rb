class BaseLoginPage

  attr_accessor :play_button, :challenge_button, :mundial_possition_value, :coins_value, :country_value, :name_value, :setting_button

  def initialize(play_button, challenge_button, mundial_possition_value, coins_value, country_value, name_value, setting_button)
    @play_button = play_button
    @challenge_button = challenge_button
    @mundial_possition_value = mundial_possition_value
    @coins_value = coins_value
    @country_value = country_value
    @name_value = name_value
    @setting_button = setting_button
  end

  def click_to_play
    begin
      $driver.hide_keyboard
    rescue Exception => e
      puts e
    end
    @play_button.click
  end

  def click_to_challenge
    begin
      $driver.hide_keyboard
    rescue Exception => e
      puts e
    end
    @challenge_button.click
  end

  def get_mundial_possition
    @mundial_possition_value.text
  end

  def get_coins_value
    @coins_value.text
  end

  def get_country_value
    @country_value.text
  end

  def get_name_value
    @name_value.text
  end

  def click_to_setting
    begin
      $driver.hide_keyboard
    rescue Exception => e
      puts e
    end
    @setting_button.click
  end


end