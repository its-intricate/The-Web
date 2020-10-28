feature "player entry" do
  scenario "displays name" do
    sign_in_and_play
    expect(page).to have_content "Player 1: \"Ollie\"\nis facing.........\nPlayer 2: \"Esther\""
  end
end
