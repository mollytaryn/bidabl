feature "User Signs Up" do

  before do
    page.driver.block_unknown_urls
    visit root_path
    find("#sign-up-form").click
  end

  scenario "Happy Path", :js => true do
    fill_in "Username", with: "JoeyJ"
    fill_in "Email", with: "joe@example.com"
    fill_in "Password", with: "password1"
    fill_in "Password confirmation", with: "password1"
    click_button "Enter"
    page.should have_content("Welcome, JoeyJ")
    # open_last_email
    # current_email == "joe@example.com"
    # current_email.should have_subject("Welcome to Median")
    # current_email.should have_body_text("We hope you're completely average.")
    current_path.should == user_path(User.last)
    click_on "Sign Out"
    find("#sign-in-form").click
    fill_in "Email", with: "joe@example.com"
    fill_in "Password", with: "password1"
    click_button "Enter"
    page.should have_content("Welcome back, Joe")
  end

  scenario "Error Path", :js => true do
    fill_in "Username", with: ""
    fill_in "Email", with: "joeexample.com"
    fill_in "Password", with: "password1"
    fill_in "Password confirmation", with: "food"
    click_button "Enter"
    page.should have_content("Please fix the errors below to continue.")
    page.should have_content("can't be blank")
    page.should have_content("must be an email address")
    page.should have_content("doesn't match Password")
    fill_in "Username", with: "JoeyJ"
    fill_in "Email", with: "joe@example.com"
    fill_in "Password", with: "password1"
    fill_in "Password confirmation", with: "password1"
    click_on "Enter"
    page.should have_content("Welcome, JoeyJ")
  end

  scenario "invalid username", :js => true do
    fill_in "Username", with: "b"
    fill_in "Email", with: "brad@example.com"
    fill_in "Password", with: "password1"
    fill_in "Password confirmation", with: "password1"
    click_button "Enter"
    page.should have_content("Please fix the errors below to continue.")
    page.should have_content("is too short (minimum is 2 characters)")
    fill_in "Username", with: "Brad"
    fill_in "Email", with: "brad@example.com"
    fill_in "Password", with: "password1"
    fill_in "Password confirmation", with: "password1"
    click_on "Enter"
    page.should have_content("Welcome, Brad")
  end
end