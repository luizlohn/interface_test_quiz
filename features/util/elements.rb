class Elements
  def is_element_present(how, what)
    $driver.wait{0}
    result = $driver.find_elements(how, what).size() > 0
    if result
      result = $driver.find_element(how, what).displayed?
    end
    return result
    $driver.wait{3000}
  end
end