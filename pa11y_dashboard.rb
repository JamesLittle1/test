def pa11y_dashboard(session, id)
session.visit("http://10.1.0.43:4000/#{id}/run")

errors = session.find(:id, 'errors')['innerHTML'].scan(/\d+/).first.to_i
warnings = session.find(:id, 'warnings')['innerHTML'].scan(/\d+/).first.to_i
notices = session.find(:id, 'notices')['innerHTML'].scan(/\d+/).first.to_i
ignore = session.find(:id, 'ignore')['innerHTML'].scan(/\d+/).first.to_i

puts "Errors: #{errors}\nWarnings: #{warnings}\nNotices: #{notices}\nIgnored Rules: #{ignore}"
puts "Go to http://localhost:4000/#{id}?running for more details"
if(errors > 0)
return false
else
return true
end
end
