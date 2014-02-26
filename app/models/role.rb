class Role < ActiveRecord::Base
  
  has_and_belongs_to_many :users
  
  def admin?
    roles.map(&:name).include?('admin')
  end
  
end
