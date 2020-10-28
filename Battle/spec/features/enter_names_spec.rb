feature "player entry" do
  scenario "displays name" do
    visit '/'
    fill_in 'p1', with: 'Ollie'
    fill_in 'p2', with: 'Esther'
    click_button "Let's GO!!!!!!"
    expect(page).to have_content 'Player 1: Ollie\nPlayer 2: Esther'
  end
end
