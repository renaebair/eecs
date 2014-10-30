module ApplicationHelper
	def handbook_url
		Handbook.last.attachments.first.file_url
	end

  def render_markdown(content)
    return if content.nil?
    markdown = Redcarpet::Markdown.new(
      Redcarpet::Render::HTML,
      :autolink => true, :space_after_headers => true
    )
    markdown.render(content).html_safe
  end
end
