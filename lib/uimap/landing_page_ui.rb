class LandingPageUI
  attr_accessor :hashElement
  def initialize
  @hashElement = {
      login_button: {xpath: "//a[@class='btn btn-primary btn-login']"},
      input_login: {id: 'email'},
      input_password: {id: 'password'},
      login_submit: {xpath: "//button[@class='btn btn-primary btn-login']"}
  }
  end
end