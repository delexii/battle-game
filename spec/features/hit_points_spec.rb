require "./battle_app"

feature "view hit points" do
  scenario "see player 2 hp" do
    visit "/"
    fill_in :Player1, with: "Ewa"
    fill_in :Player2, with: "Delia"
    click_button "Submit"
    expect(page).to have_content("Delia: 50HP")
  end
end