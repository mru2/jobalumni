# Global markdown renderer
module MD
  extend self

  def render(*args)
    renderer.render(*args).html_safe
  end

  def renderer
    @_renderer ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  end
end
