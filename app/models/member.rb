class Member < ActiveRecord::Base
  attr_accessible :name,:telphone, :tutor_id
  belongs_to :tutor
  belongs_to :leader, :class_name=>"Member",:foreign_key=>'leader_id'
end
