feature "outcome" do
  scenario "it returns 'It's a draw!' if draw" do
    sign_in
    choose_rock
    choose_rock
    expect(page).to have_content("It's a draw!")
  end
end