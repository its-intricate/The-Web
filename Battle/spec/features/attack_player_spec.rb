feature "player actions" do
  scenario "attack player" do
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content("Melissa has attacked Esther!")
    expect(page).to have_content("Esther: 90/100 HP")
  end
end
