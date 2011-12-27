module PostsHelper
  def list_tag(tags)
    tags.map(&:name).join(", ")
  end
end
