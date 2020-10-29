feature 'hit point value' do
  scenario 'displays opponents hit point' do
    sign_in_and_play
    expect(page).to have_content "100/100 HP"
  end
end
