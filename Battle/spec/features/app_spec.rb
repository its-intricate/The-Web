feature "checking homepage" do
  scenario "Testing infrastructure" do
    visit '/'
    expect(page).to have_content('Testing infrastructure working!')
  end

end
