json.extract! review, :id, :post_id, :body, :created_at, :updated_at
json.url review_url(review, format: :json)