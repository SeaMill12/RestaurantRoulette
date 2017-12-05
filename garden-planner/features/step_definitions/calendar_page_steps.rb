Given(/^I am on the homepage$/) do
  visit root_path
  #pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click on the "calendars_index_path" link$/) do
  visit calendars_index_path
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be redirected to the calendar page$/) do
  expect(page).to have_content("Is it time to water your garden?")
  #pending # Write code here that turns the phrase above into concrete actions
end

Given(/^there are plants in the garden$/) do
  visit root_path
  #within('table#viewer') do
  #	page.find('#td')
  #end
  if (Garden.find(plants) != nil)
	return true
  end
  #page.find('garden_name')
  #pending # Write code here that turns the phrase above into concrete actions
end

And(/^I am on the calendar page$/) do
  visit calendars_index_path
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see content in the calendar$/) do
  expect(page).to have_content("Watering Time!")
  #pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I am on the Calendar Page$/) do
  visit calendars_index_path
  #pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click the home button$/) do
  click_on('Garden Planner')
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be taken to the home page$/) do
  expect(page).to have_content("Add Plant")
  #pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click on the button to the right of the current month's name$/) do
  page.find('#next').click
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the calendar for next month$/) do
  d=(Date.today).strftime("%B")
  d2=(Date.today + 1.month).strftime("%B")
  expect(page).to have_content(d2)
  #pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click on the button to the left of the current month's name$/) do
  page.find('#previous').click
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the calendar for the previous month$/) do
  d3=(Date.today).strftime("%B")
  d4=(Date.today - 1.month).strftime("%B")
  expect(page).to have_content(d4)
  #pending # Write code here that turns the phrase above into concrete actions
end