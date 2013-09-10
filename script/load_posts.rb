Post.transaction do
	(1..100).each do |i|
		Post.create(:title=>"Post#{i}", :text=>"This is the #{i} post I send")
	end
end