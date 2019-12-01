feature "choose" do
  scenario "display players names" do
    sign_in
    expect(page).to have_content("test_player_1 vs test_player_2")
  end 
end