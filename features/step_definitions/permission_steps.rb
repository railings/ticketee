Given /^"([^"]*)" can ([^"]*?) ([o|i]n)?\s?the "([^"]*)" project$/ do
  |user_email, permission, on, project_name|
  create_permission(user_email, find_project(project_name), permission)
end

def create_permission(email, object, action)
  Permission.create!(:user => User.find_by_email!(email),
                     :thing => object,
                     :action => action)
end

def find_project(project_name)
  Project.find_by_name!(project_name)
end