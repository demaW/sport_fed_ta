class AbstractElement

  def initialize(wrapped_element, name, page)
    @wrapped_element = wrapped_element
    @name = name
    @page = page
  end


  def is_displayed
    res = false
    if @wrapped_element.nil?
      puts "#{@wrapped_element} is nil"
      return res
    else
      begin
        res = @wrapped_element.displayed?
        print "element #{@name}: "
        puts(status ? 'DISPLAYED' : 'NOT DISPLAYED ')
      rescue
        puts "Element does not exist"
      end
      return res
    end
  end

  def get_name
    @name
  end

  def get_page
    @page
  end

end