module ApplicationHelper
  def signed_in_header
    "<p>
      Logged in as: #{current_user.email}
    </p>".html_safe
  end
end
