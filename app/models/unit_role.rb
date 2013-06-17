class UnitRole < ActiveRecord::Base
	
  # Model associations
  belongs_to :user		# Foreign key
  has_one 	 :project, :dependent => :destroy  # Foreign key
  belongs_to :team 		# Foreign key

  attr_accessible :project_id, :user_id, :team_id

  # Model validations/constraints
  validates_uniqueness_of :user_id, :scope => :team_id		# A user can only be added to a project once
end 