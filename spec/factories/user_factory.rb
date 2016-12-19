FactoryGirl.define do
  	factory :user do
	    sequence :email do |n|
	      "haihn#{n}@gmail.com"
	    end

	    password '123123123'
   	end
end
