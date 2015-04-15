class ClaimsController < ApplicationController
  def index
  end

  def new
    @claim = Claim.new
  end

  def create
    @claim = Claim.new(claim_params)
    if @claim.save
      if I18n.locale == :ru
        redirect_to ru_registratsiya_done_path
      else
        redirect_to en_registration_done_path
      end
    else
      render 'new'
    end
  end

  def done
  end

  private
  def claim_params
    params.require(:claim).permit(
      :surname, :name, :patronymic,
      :email, :birthdate, :gender,
      :contact_phone, :work_phone,
      :academic_degree,
      :academic_degree_ru,
      :academic_degree_en,
      :academic_status,
      :academic_status_en,
      :academic_status_ru,
      :post, :organization_title,
      :organization_abbr,
      :postcode, :country, :locality,
      reports_attributes: [
        :title,
        :authors,
        :kind,
        :kind_ru,
        :kind_en,
        :section,
        :annotation,
        :attachment,
        :_destroy
      ]
    )
  end
end
