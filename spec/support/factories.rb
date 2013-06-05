FactoryGirl.define do
		sequence :name do |n|
    	"John Smith#{n}"
  	end

		factory :app do
	  	name {generate(:name)}
			url 'http://www.buckley.com'
			code_url 'http://www.code.com'
			description 'comment for doghub'
			email 'matt@buckley.com'

			trait :static_name do
				name "Zorg"
			end

		# factory :comment do
		# 	first_name "dave"
		# 	last_name 'dave'
		# 	email 'asd@asd.com'
		# 	content 'I love this app!'
		# 	app_id 1
		# end

	end

end
