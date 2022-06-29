class PostHottest < ApplicationRecord
  broadcasts_to ->(_post_hottests) { :post_hottests_list }
end
