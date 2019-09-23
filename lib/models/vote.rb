class Vote < ActiveRecord::Base
  # NOTE: Votes belong to the "voteable" interface, and also to voters
  belongs_to :voteable, :polymorphic => true
  belongs_to :voter,    :polymorphic => true

  # attr_accessible :vote, :voter, :voteable

  # Uncomment this to limit users to a single vote on each item.
  # validates_uniqueness_of :voteable_id, :scope => [:voteable_type, :voter_type, :voter_id]

end
