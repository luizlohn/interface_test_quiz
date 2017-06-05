require "appium_lib"

# if (ENV['ORIGINAPPIUM']=='local') && (ENV['ORIGINOS']=='android')
# 	caps = Appium.load_appium_txt file: File.expand_path("./../android/androidlocalserver.txt", __FILE__), verbose: true
# elsif (ENV['ORIGINAPPIUM']=='remote') && (ENV['ORIGINOS']=='android')
# 		caps = Appium.load_appium_txt file: File.expand_path("./../android/androidremoteserver.txt", __FILE__), verbose: true
# elsif (ENV['ORIGINAPPIUM']=='local') && (ENV['ORIGINOS']=='ios')
# 		caps = Appium.load_appium_txt file: File.expand_path("./../ios/ioslocalserver.txt", __FILE__), verbose: true
# elsif (ENV['ORIGINAPPIUM']=='remote') && (ENV['ORIGINOS']=='ios')
# 		caps = Appium.load_appium_txt file: File.expand_path("./../ios/iosremoteserver.txt", __FILE__), verbose: true
# else
# 		caps = Appium.load_appium_txt file: File.expand_path('./', __FILE__), verbose: true
# end

def caps
	{ caps: { deviceName: "Emulator",
			  platformName: "Android",
			  app: "/Users/luizlohn/codes/interface_test_mobile/app/QuizyourEnglish_v1.0.5_apkpure.com.apk",
        platformVersion: "7.1",
				appPackage: "cambridgeenglish.bravi.quiz",
				appActivity: "quiz.ui.SplashActivity",
			  newCommandTimeout: 3600,
	  appium_lib: {  wait: 20,
	  				debug: false
	  			  }
	}}
end

Appium::Driver.new(caps)
Appium.promote_appium_methods Object
