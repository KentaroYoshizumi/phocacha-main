3.times do |n|
  shop = Shop.new(
    name: "testショップ_#{n}",
    fee: 100,
    time_required: 10,
  )

  12.times do |m|
    shop.photos.build(
      name: "フード名_#{m}",
      price: 500,
      description: "フード_#{m}の説明文です。"
    )
  end

  shop.save!
end
