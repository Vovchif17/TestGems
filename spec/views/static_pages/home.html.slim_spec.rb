require 'rails_helper'

RSpec.describe "static_pages/home.html.slim", type: :view do
  it 'full_title help' do
    expect("Ruby on Rails Sample App").to(eq(full_title))
    expect("Home | Ruby on Rails Sample App").to(eq(full_title("Home")))
  end
end
