require "./battle_app"

feature "confirm attack" do
  scenario "attack player 2 and get a confirmation" do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Ewa attacked Delia"
  end
end