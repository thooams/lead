module ApplicationHelper
  def component(component_name, locals = {}, &block)
    name = component_name.split("-").first
    format = ".#{locals[:format]}" if locals[:format]
    render("components/#{name}/#{component_name}#{format}", locals, &block)
  end
  alias c component
end
