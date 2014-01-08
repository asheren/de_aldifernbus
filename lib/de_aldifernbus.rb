require 'open-uri'
#require 'faraday'
require 'mechanize'

##initialize the class to get mechanize going.
##then use mechanize to get to the correct form page and submit it
#NEW CLASS once form is submitted, use nokogiri to parse the inforamtion 
#and get a hash of travel results
#make a separate class that outlines all the possible retrievables?

class DeAldiFernbus

	#attr_reader :conn

	def initialize #works and establishes connection
		agent = Mechanize.new
		page = agent.get('https://system04.derticketservice.de/channel/2/affiliate/univers/') 
	end

	def find(from, going_to, departure_at)
		form['name'] = 'aldifernbus'
		#aldifernbus = page.form(aldifernbus) #returns nil because on the page, the name of the form is nil
		aldifernbus = agent.page.forms#returns a hash of array (4 hashes of arrays)
		#code that initiates the find... what we're finding
		aldifernbus.field_with(:name => 'list').options[0].select
		aldifernbus.radiobuttons_with(:name => 'box')[1].check
		form.checkbox_with(:name => 'box').check


  	#page = agent.submit(aldifernbus_form)
  	agent.page.link_with(:type => 'submit').click
  	#agent.page.search(".name").map(&:text).map(&:strip)
  	form.submit
  	pp page
  end
  	@parsed_travel_results = {}
	  
	  travel_results.crawl # = doc.css('departure_station', 'departs_at', 'arrival_station','arrives_at', 
	  	      #'duration_in_minutes', 'service_agencies', 'changeovers', 'vehicle',
		      #  'extra', 'fares') #figure out how to do a hash in a hash for fares; also, am I finding the right thing here? are these the css codes?
	  @parsed_travel_results << travel_results
	  #need to pass it through a separate parser as well or will nokogiri do the job effectively?
	end 



	#return the information in a hash?

	def departs_at_and_arrives_at_conversion
		#code is what translates site departure at time into ruby object DateTime
	end

end

