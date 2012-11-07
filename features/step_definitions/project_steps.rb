Given /^(?:|I )am on (.+)/ do |page_name|
  visit path_to(page_name)
end

When /^I follow "([^"]*)"$/ do |link|
  click_link(link)
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^I press "([^"]*)"$/ do |button|
  click_button(button)
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end


def path_to(page_name)
  case page_name

  when /the home\s?page/
    '/'

  #when /the project page for "([^\"]*)"/
  #  project_path(Project.find_by_name!($1))
  # Add more mappings here.

  else
    begin
      page_name =~ /the (.*) page/
      path_components = $1.split(/\s+/)
      self.send(path_components.push('path').join('_').to_sym)
    rescue Object => e
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end