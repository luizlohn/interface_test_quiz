class Elements
  def is_element_present(locator, element)
    $driver.wait{10}
    result = $driver.find_elements(locator, element).size() > 0
    if result
      result = $driver.find_element(locator, element).displayed?
    end
    return result
    $driver.wait{3000}
  end
end
