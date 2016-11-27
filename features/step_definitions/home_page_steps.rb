Given(/^there's a person named "(.*?)" with "(.*?)" email$/) do |fullname, email|
  first_name, last_name = fullname.split(' ')
  @person = FactoryGirl.create(:person, first_name: first_name, last_name: last_name, email: email)
end

When(/^I am on the homepage$/) do
  visit root_path
end

Then(/^I should see "(.*?)" person$/) do |fullname|
  first_name, last_name = fullname.split(' ')
  @person = Person.where(first_name: first_name, last_name: last_name).first

  expect(page).to have_content(@person.first_name)
  expect(page).to have_content(@person.last_name)
  expect(page).to have_content(@person.email)
end
