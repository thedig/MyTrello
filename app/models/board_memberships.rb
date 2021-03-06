# == Schema Information
#
# Table name: board_memberships
#
#  id         :integer          not null, primary key
#  member_id  :integer          not null
#  board_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BoardMemberships < ActiveRecord::Base
  attr_accessible :board_id, :member_id

  belongs_to :board
  belongs_to :member, :class_name => "User", :foreign_key => "member_id"

end
