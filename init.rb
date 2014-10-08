Redmine::Plugin.register :redmine_enhanced_textarea do
  name 'Redmine Enhanced Textarea plugin'
  author 'Benoit Zugmeyer & Florent Solt'
  description 'Enhanced Textarea'
  version '0.0.1'
  url 'https://github.com/florentsolt/redmine_enhanced_textarea'
end

class EnhancedTextareaViewListener < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(context)
    javascript_include_tag("enhanced-textarea.js", :plugin => "redmine_enhanced_textarea")
  end
end
