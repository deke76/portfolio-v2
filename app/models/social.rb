class Social < ApplicationRecord
  def snake_name
    self.name.gsub(" ", "_").downcase
  end

end
