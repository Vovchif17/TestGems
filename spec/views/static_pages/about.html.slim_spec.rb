require 'rails_helper'

RSpec.describe "static_pages/about.html.slim", type: :view do
  it 'full_title about' do
    expect("Ruby on Rails Sample App").to(eq(full_title))
    expect("About | Ruby on Rails Sample App").to(eq(full_title("About")))
  end
end
