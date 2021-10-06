require './battle_app'

feature "player names" do
  scenario "asks players to submit form with names" do
    visit ('/')
    fill_in :Player1, with: "Ewa"
    fill_in :Player2, with: "Delia"
    click_button "Submit"
    expect(page).to have_content("Ewa vs Delia")
  end
end
