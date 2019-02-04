class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # to use `postgres_copy`
  acts_as_copy_target
end
