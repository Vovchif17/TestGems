require 'rails_helper'

RSpec.describe "static_pages/contact.html.slim", type: :view do
  it 'full_title contact' do
    expect("Ruby on Rails Sample App").to(eq(full_title))
    expect("Contact | Ruby on Rails Sample App").to(eq(full_title("Contact")))
  end
end
