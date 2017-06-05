class Login
  def loginWithFacebook
    $driver.find_element(id: "btLoginFacebook").click
  end
  def loginWithGoogle
    $driver.find_element(id: "btLoginGoogle").click
    $driver.find_element(id: "identifierId").send_key("testes.luiz.lohn@gmail.com")
    $driver.find_element(id: "identifierNext").click
    $driver.find_element(class: "android.widget.EditText").send_key("Teste123")
    $driver.find_element(id: "passwordNext").click
    $driver.find_element(id: "signinconsentNext").click
  end
end
