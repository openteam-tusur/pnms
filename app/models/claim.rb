class Claim < ActiveRecord::Base
  validates_presence_of :surname, :name, :patronymic,
    :email, :birthdate, :gender, :contact_phone, :work_phone,
    :post, :organization_title, :organization_abbr,
    :postcode, :country, :locality

  normalize_attributes :surname, :name, :patronymic,
    :email, :birthdate, :gender, :contact_phone, :work_phone,
    :academic_degree, :academic_status, :post, :organization_title, :organization_abbr,
    :postcode, :country, :locality

  extend Enumerize

  enumerize :gender, :in => [:male, :female]
  enumerize :academic_degree, :in => [:bachelor, :master_degree, :candidate_of_science, :doctor_of_science]

  has_many :reports, :dependent => :destroy

  def self.priority_countries
    return [ 'BY', 'CN', 'RU', 'US', 'FI', 'FR', 'JP', ] if I18n.locale == :ru
    return [ 'BY', 'CN', 'FI', 'FR', 'JP', 'RU', 'US', ] if I18n.locale == :en
  end
end

# == Schema Information
#
# Table name: claims
#
#  id                 :integer          not null, primary key
#  surname            :string(255)
#  name               :string(255)
#  patronymic         :string(255)
#  email              :string(255)
#  birthdate          :date
#  gender             :string(255)
#  contact_phone      :string(255)
#  work_phone         :string(255)
#  academic_degree    :string(255)
#  academic_status    :string(255)
#  post               :string(255)
#  organization_title :text
#  organization_abbr  :string(255)
#  postcode           :string(255)
#  country            :string(255)
#  region             :string(255)
#  district           :string(255)
#  locality           :string(255)
#  street             :string(255)
#  house              :string(255)
#  building           :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#
