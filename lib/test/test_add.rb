require_relative '../../lib/test/base_test'
require_relative '../../lib/business/home_page_bo'
class TestAdd < BaseTest


  def test_add
    puts 'Start'
    home_BO = HomePageBO.new
    assert(home_BO.exist,'Fail')
  end

end