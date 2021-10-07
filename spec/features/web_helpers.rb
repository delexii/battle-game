def sign_in_and_play
  visit("/")
  fill_in :player1_name, with: "Ewa"
  fill_in :player2_name, with: "Delia"
  click_button "Submit"
end
