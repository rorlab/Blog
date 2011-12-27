class Comment < ActiveRecord::Base
  belongs_to :post
  default_scope order("created_at desc")
end
