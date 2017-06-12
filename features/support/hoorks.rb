Before() do
	$driver.start_driver
	$driver.wait{10}
  if Elements.new.is_element_present("id","innerTextView") == true
    SkipOnBoarding.new.skipOnBoardingScreen
  end
  if Elements.new.is_element_present("id","btLoginGoogle") == true
    Login.new.loginWithGoogle
  end
end

After do |scenario|
	if scenario.failed?
		unless File.directory?("screenshots")
			FileUtils.mkdir_p("screenshots")
		end

		time_stamp = Time.now.strftime("%d-%m-%Y_%H.%M.%S")
		screenshot_name = "#{time_stamp}.png"
		screenshot_file = File.join("screenshots", screenshot_name)
		$driver.screenshot(screenshot_file)
		embed("#{screenshot_file}", "image/png")
	end
	$driver.driver_quit
end

AfterConfiguration do
	FileUtils.rm_r("screenshots") if File.directory?("screenshots")
end
