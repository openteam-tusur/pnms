class ApplicationController < CommonController
  include Cmsable

  private

  def remote_url
    origin_request_path, parts_params = request.fullpath.split('?')
    request_path = origin_request_path
    request_path = '/ru/registratsiya' if origin_request_path.match(/\A\/ru\/registratsiya.*/)
    request_path = '/en/registration' if origin_request_path.match(/\A\/en\/registration.*/)
    request_path = '/ru/registratsiya/done' if origin_request_path.match(/\A\/ru\/registratsiya\/done/)
    request_path = '/en/registration/done' if origin_request_path.match(/\A\/en\/registration\/done/)
    request_path = '/ru/manage' if origin_request_path.match(/\A\/manage.*/)

    ["#{cms_address}#{request_path.gsub('//', '/').split('/').compact.join('/')}.json", parts_params].compact.join('?')
  end
end
