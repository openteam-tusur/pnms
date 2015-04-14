class Report < ActiveRecord::Base
  belongs_to :claim
end

# == Schema Information
#
# Table name: reports
#
#  id         :integer          not null, primary key
#  title      :text
#  authors    :text
#  kind       :string(255)
#  section    :string(255)
#  annotation :text
#  claim_id   :integer
#  created_at :datetime
#  updated_at :datetime
#
