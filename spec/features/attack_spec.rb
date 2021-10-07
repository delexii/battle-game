require "./battle_app"

feature "confirm attack" do
  scenario "attack player 2 and get a confirmation" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "Ewa attacked Delia"
  end
end

feature "reduce Player 2 points" do
  scenario "attack reduces player 2 points" do
    sign_in_and_play
    click_link "Attack"
    expect(page).not_to have_content "Delia: 50HP"
    expect(page).to have_content "Delia: 40 HP"
  end
end
