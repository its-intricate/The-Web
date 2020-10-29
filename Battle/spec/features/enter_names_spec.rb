feature "player entry" do
  scenario "displays name" do
    sign_in_and_play
    expect(page).to have_content "Player 1: Melissa\nis facing.........\nPlayer 2: Esther\n"
  end
end
