class Message < ApplicationRecord
  def full_name
    first_name + ' ' + last_name
  end

  def set_name(full__name)
    first_name = full_name.split('').first
    last_name = full_name.split('').last
  end
  
end
