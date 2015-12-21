require_relative("config")
require_relative("migrations/create_users.rb")
require_relative("migrations/create_visits.rb")
require_relative("migrations/change_age_to_born_on.rb")

CreateUsers.migrate(:up)
CreateVisits.migrate(:up)
CreateChangeToBornOn.migrate(:up)