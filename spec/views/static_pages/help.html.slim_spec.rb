require 'rails_helper'

RSpec.describe "static_pages/help.html.slim", type: :view do
  it 'full_title help' do
    expect("Ruby on Rails Sample App").to(eq(full_title))
    expect("Help | Ruby on Rails Sample App").to(eq(full_title("Help")))
  end
end
