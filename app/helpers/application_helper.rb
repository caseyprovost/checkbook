module ApplicationHelper
  def top_nav_link(text, path, **options)
    link_to text, path, class: "#{request.path.starts_with?(path) ? 'bg-gray-600 text-white' : 'text-gray-300'} px-3 py-2 rounded-md text-sm font-medium"
  end
end
