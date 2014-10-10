require_relative 'abstract_element'
class Button < AbstractElement
  def initialize(element)
    super (element)
    $logger.info ("#{self.inspect} initialized")
  end

  def click
    super
    $logger.info "#{__method__} on element"
  end
end