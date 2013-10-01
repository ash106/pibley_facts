# == Schema Information
#
# Table name: facts
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Fact < ActiveRecord::Base
  attr_accessible :content

  validates :content, :presence => true,
                      :length => { :minimum => 5, :maximum => 500 }
end
