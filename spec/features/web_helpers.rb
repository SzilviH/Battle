def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Archie'
  fill_in :player_2_name, with: 'Ozzy'
  click_button 'Submit'
end
