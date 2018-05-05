feature 'Allows user to enter name' do
  scenario 'Displays name' do
    visit('/')
    fill_in 'player_name', with: 'Sam'
    click_button('Submit')
    expect(page).to have_content "Player 1: Sam"
  end
end

feature 'Displays options' do
  scenario 'Gives user the choice of rock, paper, or scissors' do
    start_game
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end

feature 'Attack screen shows the winner' do
  scenario 'The game ends' do
    start_game
    click_button('Rock')
    expect(page).to have_content "!"
  end

  scenario 'The game ends' do
    start_game
    click_button('Paper')
    expect(page).to have_content "!"
  end

  scenario 'The game ends' do
    start_game
    click_button('Scissors')
    expect(page).to have_content "!"
  end
end
