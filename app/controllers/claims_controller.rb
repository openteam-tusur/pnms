class ClaimsController < ApplicationController
  def index
  end

  def new
    @claim = Claim.new
  end


  private
  def claim_params
    params.require(:claim).permit(
      :surname, :name, :patronymic,
      :email, :birthdate, :gender,
      :contact_phone, :work_phone,
      :academic_degree, :academic_status,
      :post, :organization_title,
      :organization_abbr,
      :postcode, :country, :locality)
  end
end
