# coding: utf-8
icon = ["donut1","donut2","donut3","donut4"]
food_title = ["ココアドーナツ","ウインナードーナツ","ベビスタードーナツ"]
ingredients = ["豆腐200g、ホットケーキミックス150g、ココア少々",
			   "豆腐200g、ホットケーキミックス150g、ウインナー3，4本",
			   "豆腐200g、ホットケーキミックス150g、ベビースター少々"]

0.upto(3) do |idx|
    
    path = Rails.root.join("db/seeds/development", "#{icon[idx/3]}.jpeg")
    file = Rack::Test::UploadedFile.new(path, "image/jpeg", true)
    
    Donut.create(
        user_id: 1,
        title: "#{food_title[idx]}",
        material: "#{ingredients[idx]}",
        image: file
    )
end