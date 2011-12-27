module PostsHelper
  def tag_list(tags)
    tags.map(&:name).join(", ")
  end
end
