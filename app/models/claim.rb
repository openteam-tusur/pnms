class Claim < ActiveRecord::Base
  has_many :reports, :dependent => :destroy
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
