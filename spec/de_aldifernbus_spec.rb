require_relative 'de_aldifernbus'
##need to add vcr so that you're not calling the website each time? or need to call the
#website because you're getting different info... not just gathering from an api

describe 'crawl' do 

	it "something that tests crawling" do 
		pending #test it here
	end
end

describe 'travel results' do 

	it "outputs the correct information for specific search parameters"
	  pending #test that actually gives two specific from and to parameters correctly outputs what it's supposed to
  end
end 

describe 'time conversion' do 

	it "correctly converts the departs at and arrives at time to correct DateTime syntax"
	  pending #code that gives a sample time and expects it to eq correct DateTime
  end

end