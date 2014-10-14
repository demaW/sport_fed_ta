require_relative '../uimap/home_page_ui'
require 'logger'
require_relative '../utils/log'

class HomePageBO
  def initialize()
    @home_page = HomePageUI.new
    $logger.info "#{self.inspect}"
  end

  def exist
    @home_page.exist
  end
end