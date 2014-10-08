class AbstractElement

  def initialize(wrapped_element, name, page)
    @wrapped_element = wrapped_element
    @name = name
    @page = page
  end



  def is_displayed
    if @wrapped_element.nil?
      @res = @wrapped_element.displayed?
      print "element #{@name}: "
      puts(status  ? 'DISPLAYED' : 'NOT DISPLAYED ')
      return @res
    else
      puts "#{@wrapped_element} is nil"
      return false
    end
  end






  def get_name
    @name
  end

  def get_page
    @page
  end

end