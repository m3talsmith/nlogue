module NoticesHelper
  def render_notices(additional_errors = {})
    flash.merge!(additional_errors) unless additional_errors.empty?
    render :partial => "shared/notices"
  end
end