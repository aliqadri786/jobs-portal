module ApplicationHelper

    def render_svg(name, styles: 'fill-current text-gray-500', title: nil)
        filename = "#{name.svg}"
        title ||= name.underscore.humanize
        inline_svg_tag(filename, arial: true, nocoment: true, title: title, class: styles)
    end

    def admin?
        user_signed_in? && current_user.admin?
    end

    def author_of(resource)
        user_signed_in? && current_user.id=resource.user_id
    end
end
