feature "gameplay" do
  scenario "it displays the players' and opponents' name" do
    visit("/")
    fill_in "player_1", with: "test_player_1"
    click_on "Submit"
    expect(page).to have_content("test_player_1 vs cpu")
  end
end