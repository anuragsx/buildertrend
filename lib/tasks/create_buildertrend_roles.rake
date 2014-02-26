desc "A task to add roles to the roles table"

roles = ['admin', 'employee', 'client']

task create_roles: :environment do
  roles.each do |role|
    puts "creating role #{role}" 
    Role.find_or_create_by(name: role)
  end
end