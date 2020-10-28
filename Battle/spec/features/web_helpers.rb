def sign_in_and_play
  visit '/'
  fill_in 'p1', with: 'Ollie'
  fill_in 'p2', with: 'Esther'
  click_button "Let's GO!!!!!!"
end
