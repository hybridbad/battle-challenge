feature 'Testing Player name entry form' do
  scenario 'Can run app and input 2 player names and submit' do
    sign_in_and_play
    expect(page).to have_content 'Dwight versus Bow Legs'
  end
end