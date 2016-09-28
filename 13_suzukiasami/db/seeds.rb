29.times do
  Blog.create(
    title:   Faker::Number.between(1, 29),
    body:   ForgeryJa(:monetary).popularity_money,
    category: ForgeryJa(:address).full_address,
  )
end