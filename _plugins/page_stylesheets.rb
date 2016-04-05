module Jekyll
  class PageStylesheets < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text.empty? ? 'stylesheets' : text
    end

    def render(context)
      stylesheet_names = context.registers[:page][@text]
      if stylesheet_names.nil?
        ""
      else
        stylesheet_names.map do |name|
          %Q(
            <link rel="stylesheet" href="/assets/#{name.strip}.css">
          )
        end.join("\n")
      end
    end
  end
end

Liquid::Template.register_tag('page_stylesheets', Jekyll::PageStylesheets)
