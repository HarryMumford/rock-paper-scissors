feature "outcome" do
  scenario "it displays the winner" do
    sign_in
    fill_in "choice", with: "rock"
    fill_in "choice", with: "scissors"
    expect(page).to have_content("test_player_1 wins!")
  end

  # scenario "it displays the choices" do
  #   sign_in
  #   fill_in "choice", with: "rock"
  #   fill_in "choice", with: "scissors"
  #   expect(page).to have_content("test_player_1 chose rock" && "test_player_2 chose scissors")
  # end

  # scenario "it displays the winner" do
  #   sign_in
  #   fill_in "choice", with: "rock"
  #   fill_in "choice", with: "scissors"
  #   expect(page).to have_content("test_player_1 wins!")
  # end
end