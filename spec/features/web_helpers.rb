def sign_in_and_play
  visit("/")
  fill_in :Player1, with: "Ewa"
  fill_in :Player2, with: "Delia"
  click_button "Submit"
end