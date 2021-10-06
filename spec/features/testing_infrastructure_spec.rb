require './battle_app'

feature "testing infrastructure" do
  scenario "displays homepage" do
    visit ("/testing")
    expect(page).to have_content("Testing infrastructure working!")
  end
end
