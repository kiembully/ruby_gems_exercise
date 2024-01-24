class RubyGemsExercise
  WORDS = ["lorem", "ipsum", "dolor", "sit", "amet", "consectetur", "adipiscing", "elit"]

  def self.words(number, word_list = WORDS)
    generate_text(number, word_list).join(' ')
  end

  def self.sentences(number, word_list = WORDS)
    sentences = generate_text(number, word_list).join('. ')
    sentences.split('. ').map(&:capitalize).join('. ')
  end

  def self.paragraphs(number, word_list = WORDS)
    paragraphs = []
    number.times { paragraphs << generate_text(rand(5..15), word_list).join(' ') }
    paragraphs.join("\n")
  end

  private

  def self.generate_text(number, word_list)
    words = word_list * ((number / word_list.length) + 1)
    words.sample(number)
  end
end
