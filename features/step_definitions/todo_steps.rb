Given("I am on the todos page") do
  visit root_path
end

When('I fill in the field with testid {string} with {string}') do |testid, value|
  find("[data-testid='#{testid}']").set(value)
end

When('I click the button with testid {string}') do |testid|
  find("[data-testid='#{testid}']").click
end

Then('I should see a todo item with text {string}') do |text|
  expect(page).to have_css('[data-testid="todo-item"]', text: text)
end

Then('I should see {string}') do |text|
  expect(page).to have_content(text)
end
