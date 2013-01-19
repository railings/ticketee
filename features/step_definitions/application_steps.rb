Given /^I have run the seed task$/ do
  load Rails.root + "db/seeds.rb"
end

When /^(?:|I )attach the file "([^"]*)" to "([^"]*)"$/ do |path, field|
  attach_file(field, File.expand_path(path))
end

Then /^show me the page$/ do
  save_and_open_page
end

Then /^I should not see the "([^"]*)" element$/ do |css|
  page.should_not(have_css(css),
    "Expected to not see the #{css} element, but did.")
end
