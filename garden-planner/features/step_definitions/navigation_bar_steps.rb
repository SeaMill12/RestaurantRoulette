When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see the Garden Planner Button in the top Left$/) do
  expect(page).to have_content("Garden Planner")
end

Then(/^I should see Front Yard in the navigation bar$/) do 
  expect(page).to have_content("Front Yard")
end

Then(/^I should see Back yard in the navigation bar$/) do
  expect(page).to have_content("Back Yard")
end

Then(/^I should see Calendar$/) do
  expect(page).to have_content("Calendar")
end

Then(/^I should see Add Garden Button$/) do
  expect(page).to have_content("Add Garden")
end

Then(/^I should see Sign Up Button$/) do
  expect(page).to have_content("Sign Up")
end
Then(/^I should see Sign in Button$/) do
  expect(page).to have_content("Sign In")
end

Then(/^I press "Back Yard"$/) do 
  #within('#navbar') do
    page.find('#2').click
  #end
end

Then(/^I press "Front Yard"$/) do
  #within('#navbar') do
    page.find('#1').click
  #end
end

Then(/^I press "Add Garden"$/) do
  #within('#navbar') do
    page.find('#add_garden').click
  #end
end

Then(/^I should be at the back yard page$/) do
  find('#CurrentGarden').should have_content('Back Yard')
end

Then(/^I should be at the front yard page$/) do
  find('#CurrentGarden').should have_content('Front Yard')
end

Then(/^I should be at the Add Garden page$/) do
  page.should have_content('Create New Garden')
end

Then(/^I press "Calendar"$/) do
  #within('#navbar') do
    page.find('#calendar').click
  #end
end

Then(/^I should be at the Calendar page$/) do
  page.should have_content('Is it time to water your garden?')
end

Then(/^I press "Sign Up"$/) do
  #within('#navbar') do
    page.find('#sign_up').click
  #end
end

Then(/^I should be at the Sign Up page$/) do
  page.should have_content('Register')
end

Then(/^I press "Sign In"$/) do
  #within('#navbar') do
    page.find('#sign_in').click
  #end
end

Then(/^I should be at the Sign In page$/) do
  page.should have_content('EMail')
end