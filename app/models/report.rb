class Report < ActiveRecord::Base
  belongs_to :claim

  extend Enumerize

  enumerize :kind, :in => [:message, :report, :lecture, :poster, :invited_lector, :oral]
  enumerize :kind, :in => [:message, :report, :lecture, :poster] if I18n.locale == :ru
  enumerize :kind, :in => [:invited_lector, :oral, :poster] if I18n.locale == :en

  enumerize :section, :in => [:photonic_crystal_structure, :nonlinear_optical_material, :nanoheterostructure, :semi_conducting_microstructure,
                              :nanometer_system_measuring, :photonic_quantum_system_facility, :nano_biophoton]

  has_attached_file :attachment, :storage => :elvfs, :elvfs_url => Settings['storage.url']
  validates_attachment :attachment, content_type: { content_type: "application/rtf"  }

  validates_presence_of :title, :authors, :kind, :section, :annotation, :attachment
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
