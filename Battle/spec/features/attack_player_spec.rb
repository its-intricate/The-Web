feature "player actions" do
  scenario "attack player" do
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content("Melissa has attacked Esther!")
  end
end
