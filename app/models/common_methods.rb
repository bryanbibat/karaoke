module CommonMethods
  def description_html
    Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true).render(description)
  end
end
