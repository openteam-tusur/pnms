class ClaimsController < ApplicationController
  def index
  end

  def new
    @claim = Claim.new
  end

  def create
    @claim = Claim.new(claim_params)
    if @claim.save!
      redirect_to root_path
    else
      render 'new'
    end
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
      :postcode, :country, :locality,
      reports_attributes: [:title, :authors, :kind, :section, :annotation, :attachment, :_destroy])
  end
end
