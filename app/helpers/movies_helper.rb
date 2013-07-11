module MoviesHelper
  def errors_for(errors)
    if errors.any?
      "<p class='text-error'>#{errors.map(&:capitalize).join("<br />")}</p>".html_safe
    end
  end
end
