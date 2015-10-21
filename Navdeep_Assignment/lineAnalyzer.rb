class LineAnalyzer
  attr_reader :highest_wf_count, :highest_wf_words, :content, :line_number

  def initialize(content, line_number)
    @content=content
    @line_number=line_number
    calculate_word_frequency
  end

  def calculate_word_frequency                                         
    frequency = Hash.new(0)
     words = @content.split(' ')
    words.each { |word|  frequency[word] += 1;}                                                   
      
    store_words = frequency.max_by{|k,v| v}
    max_occurence_words = store_words[1]
    @highest_wf_words = frequency.select{|key, value| value == max_occurence_words }
    @highest_wf_count = max_occurence_words

   # print @highest_wf_count
   # print @highest_wf_words
  end
  
end
#LineAnalyzer.new("ff ff v", 1)
  