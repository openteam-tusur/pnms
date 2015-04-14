class Report < ActiveRecord::Base
  belongs_to :claim

  extend Enumerize
  enumerize :kind, :in => [:one, :two]
  enumerize :section, :in => [:one, :two]

  has_attached_file :attachment, :storage => :elvfs, :elvfs_url => Settings['storage.url']
  validates_attachment :attachment, content_type: { content_type: "application/rtf"  }
end

# == Schema Information
#
# Table name: reports
#
#  id                      :integer          not null, primary key
#  title                   :text
#  authors                 :text
#  kind                    :string(255)
#  section                 :string(255)
#  annotation              :text
#  claim_id                :integer
#  created_at              :datetime
#  updated_at              :datetime
#  attachment_file_name    :string(255)
#  attachment_content_type :string(255)
#  attachment_file_size    :integer
#  attachment_updated_at   :datetime
#  attachment_url          :text
#
