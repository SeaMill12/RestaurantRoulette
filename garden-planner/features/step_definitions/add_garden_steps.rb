Then(/^I put in "(.*)" for the title/) do |title|
    fill_in('Title', :with => title)
end

Then(/^I put in "(.*)" for the x size/) do |title|
    fill_in('Garden Size x', :with => title)
end

Then(/^I put in "(.*)" for the y size/) do |title|
    fill_in('Garden Size y', :with => title)
end

Then(/^I push Save/) do
    click_button("Save")
end


Then("I push Back to Garden") do
  page.find('#back').click
end

Then('I press "Delete"') do 
    page.find('#delete_garden').click
end

Then("I should see {string}") do |string|
  page.find('#CurrentGarden').should have_content(string)
end

Then("I should be at the test garden page") do
  page.find('#CurrentGarden').should have_content('Test')
end

Then("I should be at the root garden page") do
  page.find('#CurrentGarden').should have_content('Front Yard')
end