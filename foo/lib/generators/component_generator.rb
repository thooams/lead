class ComponentGenerator < Rails::Generators::Base
  argument :component_name, required: true, desc: "Component name in snake_case"

  def create_directory
    empty_directory "#{component_path}"
  end

  def create_view_file
    create_file "#{component_path}/_#{component_name}.html.erb" do
      "<div class=\"#{component_name} js-#{component_name}\">\n  \n</div>"
    end
  end

  def create_css_file
    create_file "#{component_path}/#{component_name}.scss" do
      "@import '../../config/index.scss';\n\n.#{component_name} {\n    \n}\n"
    end
  end

  def create_static_directory
    empty_directory "#{component_path}/static"
  end

  def create_js_file
    create_file "#{component_path}/#{component_name}.js" do
      # require component's CSS inside JS automatically
      "import './#{component_name}.scss'\n// Import static files here. For instance: import './static/logo.png'\n"
    end
  end

  def import_component
    inject_into_file "app/frontend/packs/application.js", before: /\n\/\/ END/ do
      "\nimport 'components/#{component_name}/#{component_name}'"
    end
  end

  protected

  def component_path
    "app/frontend/components/#{component_name}"
  end
end
