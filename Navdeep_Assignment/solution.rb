require './lineAnalyzer'

class Solution

begin
  attr_reader :analyzers, :highest_count_across_lines, :highest_count_words_across_lines
end

  def analyze_file
    @analyzers = []
    line_number = 0
    File.foreach('test.txt') do |line|
      storeAnalyzer = LineAnalyzer.new(line, line_number)
      @analyzers.push(storeAnalyzer)
      line_number+=1
    end
  end

  def calculate_line_with_highest_frequency()
    @highest_count_words_across_lines = []
    @highest_count_across_lines = 0
   # print @analyzers
    @analyzers.each do |line|
      @highest_count_across_lines = line.highest_wf_count if @highest_count_across_lines < line.highest_wf_count
      #print @highest_count_across_lines
    end
    @analyzers.each do |line|                  
      @highest_count_words_across_lines.push(line) if @highest_count_across_lines === line.highest_wf_count
      #print @highest_count_words_across_lines
    end
#print @analyzers
    print_highest_word_frequency_across_lines
  end

  def print_highest_word_frequency_across_lines

    puts 'The following words have highest frequency per line'

    @highest_count_words_across_lines.each do |lines|

     print lines.highest_wf_words.keys
     puts " (appears in line #{lines.line_number})'"

    end
  end
end

sol = Solution.new()
sol.analyze_file()
sol.calculate_line_with_highest_frequency()

