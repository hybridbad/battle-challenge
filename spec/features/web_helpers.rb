def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Dwight'
  fill_in :player_2_name, with: 'Bow Legs'
  click_button 'Submit'
end