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

	end

end
