module ApplicationHelper
end

module ActionView::Helpers::FormHelper
  def hihi_field(method, options = {})
    Tags::TextField.new(@object_name, method, self, options).render
  end
end
