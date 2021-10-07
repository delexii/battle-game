feature "switch turns" do
  scenario "allows players to switch turns" do
    sign_in_and_play
    expect(page).to have_content "Ewa's turn"
  end

  scenario "after player 1 attacks" do
    sign_in_and_play
    click_button "Attack"
    click_button 'OK'
    expect(page).not_to have_content "Ewa's turn"
    expect(page).to have_content "Delia's turn"
  end
end
