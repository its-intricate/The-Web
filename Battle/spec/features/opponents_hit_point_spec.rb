feature 'hit point value' do
  scenario 'displays opponents hit point' do
    sign_in_and_play
    expect(page).to have_content "1000/1000 HP"
  end
end
