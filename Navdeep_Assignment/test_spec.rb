require 'rspec'
require_relative './LineAnalyzer'
require_relative './Solution'

describe LineAnalyzer do
  before { @lineAnalyzer = LineAnalyzer.new("aa aa b", 1)}

  it "should give highest frequency of words" do
  	expect(@lineAnalyzer.calculate_word_frequency()).to eq 2
  end
	

#LineAnalyzer.new("aa aa b", 1).calculate_word_frequency()
end



describe Solution do
  before { @solution = Solution.new()}

  it "analyze_file" do
  	expect(@solution.analyze_file()).to eq nil
  end

 it "calculate_line_with_highest_frequency" do
	@solution.analyze_file()
  	@solution.calculate_line_with_highest_frequency()
  	#sol = Solution.new
  	#puts sol.analyzers
	expect(@solution.print_highest_word_frequency_across_lines()).should_not be_nil
#expect(@solution.print_highest_word_frequency_across_lines()).to eq 1
 
  end

end