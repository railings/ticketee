Given /^I have run the seed task$/ do
  load Rails.root + "db/seeds.rb"
end

When /^(?:|I )attach the file "([^"]*)" to "([^"]*)"$/ do |path, field|
  attach_file(field, File.expand_path(path))
end