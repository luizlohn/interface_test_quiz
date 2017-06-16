Dado(/^que esteja na tela Home$/) do
  Elements.new.is_element_present("id", "txtUserName") == true
end

Quando(/^clicar no botão Play$/) do
  $driver.find_element(id: "btPlay").click
end

Quando(/^clicar no tópico Going Out$/) do
  wait{find_element(id: "txtTopicName")}
  Elements.new.array_element_compare("id","txtTopicName","Going out" )
end

Então(/^o jogo deverá carregar$/) do
end
