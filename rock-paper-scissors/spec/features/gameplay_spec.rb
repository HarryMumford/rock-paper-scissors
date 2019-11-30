feature "gameplay" do
  scenario "it displays the users' and opponents' name" do
    visit("/")
    fill_in "user", with: "test_user_1"
    click_on "Submit"
    expect(page).to have_content("test_user_1 vs cpu")
  end
end