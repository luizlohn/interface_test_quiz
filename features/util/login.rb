class Login
  def loginWithFacebook
    find_element(id: "btLoginFacebook").click
  end
  def loginWithGoogle
    find_element(id: "btLoginGoogle").click
    wait{find_element(id: "button2")}
    if Elements.new.is_element_present("id", "button2") == true
      puts find_element(id: "com.google.android.gms:id/account_name").text
      if find_element(id: "com.google.android.gms:id/account_name").text == "teste.bravi11@gmail.com"
        find_element(id: "com.google.android.gms:id/account_name").click
        wait{find_element(id: "txtUserName")}
      else
        find_element(id: "button2").click
        wait { find_element(id: "identifierId").click}
        find_element(id: "identifierId").send_key("teste.bravi11@gmail.com")
        wait { find_element(id: "identifierNext").click }
        find_element(class: "android.widget.EditText").send_key("bravi2016")
        wait { find_element(id: "passwordNext").click }
        wait { find_element(id: "signinconsentNext").click }
      end
    end
    wait{find_element(id: "txtUserName")}
  end
end
