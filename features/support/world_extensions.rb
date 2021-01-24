module CommonUser
  def register
    visit('/')
    within(".navbar-text") do
      click_on('Register')
    end
    fill_in 'username', with: 'Erica Jong'
    fill_in 'email', with: 'example@example.com'
    fill_in 'password', with: 'password123'
    fill_in 'password_confirmation', with: 'password123'
    find('input[name="commit"]').click
  end

  def logout
    click_on('Logout')
  end

  def login
    visit('/')
    within(".navbar-text") do
      click_on('Login')
    end
    fill_in('Email', with: 'example@example.com')
    fill_in('Password', with: 'password123')
    find('input[name="commit"]').click
  end

end

World(CommonUser)