Given /^there are the following users:$/ do |table|
  # table is a | user@ticketee.com | password |pending
  table.hashes.each do |attributes|
    @user = User.create!(attributes)
  end
end
