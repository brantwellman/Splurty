require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
   
	test "unique_tag" do
		quote = Quote.create(:author => "Brant Wellman", :saying => "The sky is bluer than the water.")		
		expected = 'BW#' + quote.id.to_s
		actual = quote.unique_tag
		assert_equal expected, actual
	end


end
