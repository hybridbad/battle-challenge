feature 'Testing Player name entry form' do
  scenario 'Can run app and input 2 player names and submit' do
    visit('/')
    fill_in :player_1_name, with: 'James'
    fill_in :player_2_name, with: 'Emily'
    click_button 'Submit'
    expect(page).to have_content 'James versus Emily'
  end
end