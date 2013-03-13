class Member < ActiveRecord::Base
  attr_accessible :name,:telphone, :tutor_id,:leader_id,:is_leader
  belongs_to :tutor
  belongs_to :leader, :class_name=>"Member",:foreign_key=>'leader_id'

  validates :telphone, :numericality => true
  validates :name, :presence => true
  #validates :tutor_id, :presence => true
end
