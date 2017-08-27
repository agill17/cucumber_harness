module Find_Element

  def self.by_id(id, driver)
    element = nil
    begin
      element = driver.find_element(:id => "#{id}")
    rescue Selenium::WebDriver::Error::NoSuchElementException => e
      puts e
    end
    return element
  end
  def self.by_class(classs, driver)
    element = nil
    begin
      element = driver.find_element(:class => classs)
    rescue Selenium::WebDriver::Error::NoSuchElementException => e
      puts e
    end
    return element
  end
  def self.by_name(name, driver)
    element = nil
    begin
      element = driver.find_element(:name => name)
    rescue Selenium::WebDriver::Error::NoSuchElementException => e
      puts e
    end
  end
  def self.by_class_name(class_name, driver)
    element = nil
    begin
      element = driver.find_element(:class_name => class_name)
    rescue Selenium::WebDriver::Error::NoSuchElementException => e
      puts e
    end
  end
  def self.by_text(v_text, driver)
    element = nil
    begin
      element = driver.find_element(:text => v_text)
    rescue Selenium::WebDriver::Error::NoSuchElementException => e
      puts e
    end
  end
  def self.by_link_text(a_text, driver)
    element = nil
    begin
      element = driver.find_element(:link_text => a_text)
    rescue Selenium::WebDriver::Error::NoSuchElementException => e
      puts e
    end
  end
  def self.by_partial_link_text(a_text, driver)
    element = nil
    begin
      element = driver.find_element(:partial_link_text => a_text)
    rescue Selenium::WebDriver::Error::NoSuchElementException => e
      puts e
    end
  end
  def self.by_tag_name(tag, driver)
    element = nil
    begin
      element = driver.find_element(:tag_name => tag)
    rescue Selenium::WebDriver::Error::NoSuchElementException => e
      puts e
    end
  end

end ##Ends Find_Element

module Find_Elements

    def self.by_id(id, driver)
      elements = nil
      begin
        elements = driver.find_elements(:id => id)
      rescue Selenium::WebDriver::Error::NoSuchElementException => e
        puts e
      end
      return elements
    end
    def self.by_class(classs, driver)
      elements = nil
      begin
        elements = driver.find_elements(:class => classs)
      rescue Selenium::WebDriver::Error::NoSuchElementException => e
        puts e
      end
      return elements
    end
    def self.by_name(name, driver)
      elements = nil
      begin
        elements = driver.find_elements(:name => name)
      rescue Selenium::WebDriver::Error::NoSuchElementException => e
        puts e
      end
    end
    def self.by_class_name(class_name, driver)
      elements = nil
      begin
        elements = driver.find_elements(:class_name => class_name)
      rescue Selenium::WebDriver::Error::NoSuchElementException => e
        puts e
      end
    end
    def self.by_text(v_text, driver)
      elements = nil
      begin
        elements = driver.find_elements(:text => v_text)
      rescue Selenium::WebDriver::Error::NoSuchElementException => e
        puts e
      end
    end
    def self.by_link_text(a_text, driver)
      elements = nil
      begin
        elements = driver.find_elements(:link_text => a_text)
      rescue Selenium::WebDriver::Error::NoSuchElementException => e
        puts e
      end
    end
    def self.by_partial_link_text(a_text, driver)
      elements = nil
      begin
        elements = driver.find_elements(:partial_link_text => a_text)
      rescue Selenium::WebDriver::Error::NoSuchElementException => e
        puts e
      end
    end
    def self.by_tag_name(tag, driver)
      elements = nil
      begin
        elements = driver.find_elements(:tag_name => tag)
      rescue Selenium::WebDriver::Error::NoSuchElementException => e
        puts e
      end
    end

end ##Ends Find_Elements

module Element_Action

    def self.click(element, driver)
      element.click
    end
    def self.double_click (element, driver)
      driver.action.double_click(element).perform
    end
    def self.clear (element, driver)
      element.clear
    end
    def self.hover_over (element, driver)
      driver.action.move_to(element).perform
    end
    def self.drag_and_drop (draggable, droppable, driver)
      driver.action.drag_and_drop(draggable, droppable).perform
    end
    def self.clear (element, driver)
      element.clear
    end
    def self.clear_and_type(element, text, driver)
      element.clear
      element.send_keys(text)
    def self.get_text(element, driver)
      text = element.text
      return text
    end


end ### Ends Element_Action

module Keyboard_Action

    def self.keyboard_copy(element, driver)
      element.send_keys(:control,"c")
    end
    def self.keyboard_paste(element, driver)
      element.send_keys(:control,"v")
    end
    def self.keyboard_cut(element, driver)
      element.send_keys(:control,"x")
    end
    def self.keyboard_tab(element, driver)
      element.send_keys(:tab)
    end
    def self.keyboard_enter(element, driver)
      element.send_keys(:enter)
    end

  end ### Ends Keyboard_Action

end

module Browser

  def self.get_title(driver)
    title = driver.title
    return title
  end
  def self.switch_iframe(iframe_element_id, driver)
    driver.switch_to.frame(Find_Element.by_id(iframe_element_id))
  end

end
