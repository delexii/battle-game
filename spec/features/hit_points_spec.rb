require "./battle_app"

feature "view hit points" do
  scenario "see player 2 hp" do
    sign_in_and_play
    expect(page).to have_content("Delia: 50 HP")
  end
end
