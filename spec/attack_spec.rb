feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Dwight attacked Bow Legs'
  end

  scenario 'reduces player 2 hp by 10 when attacked' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Bow Legs: 100HP'
    expect(page).to have_content 'Bow Legs: 90HP'
  end
end