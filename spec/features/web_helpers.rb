def sign_in_and_play
  visit("/")
  fill_in :Player1_name, with: "Ewa"
  fill_in :Player2_name, with: "Delia"
  click_button "Submit"
end