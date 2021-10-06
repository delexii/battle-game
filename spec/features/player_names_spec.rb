require './battle_app'

feature "player names" do
  scenario "asks players to submit form with names" do
    sign_in_and_play
    expect(page).to have_content("Ewa vs Delia")
  end
end
