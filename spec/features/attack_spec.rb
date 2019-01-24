feature 'Attacking' do
  # As Player 1,
  # So I can win a game of Battle,
  # I want to attack Player 2, and I want to get a confirmation
  scenario 'attack player_2' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content "Archie attacked Ozzy!"
  end
  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP by 10
  scenario 'reduce player_2 HP by 10' do
    sign_in_and_play
    click_button 'Attack!'
    #click_link 'OK'
    expect(page).not_to have_content 'Ozzy - HP:100'
    expect(page).to have_content 'Ozzy - HP:90'
  end
end
