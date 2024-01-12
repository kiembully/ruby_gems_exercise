require "ruby_gems_exercise"

RSpec.describe RubyGemsExercise do
  describe ".words" do
    it "returns correct number of words" do
      result = RubyGemsExercise.words(4)

      expect(result.split(" ").length).to eq 4
    end

    it "contains valid words" do
      words = RubyGemsExercise.words(4)
      result = words.split(" ").all? do |word|
        RubyGemsExercise::WORDS.include?(word)
      end

      expect(result).to eq true
    end

    context "when a custom list of words is provided" do
      it "contains valid words" do
        valid_words = ["ruby", "gems", "spec", "rails", "ipsum"]
        words = RubyGemsExercise.words(10, valid_words)

        result = words.split(" ").all? do |word|
          valid_words.include?(word)
        end

        expect(result).to eq true
      end
    end
  end

  describe ".sentences" do
    it "returns correct number of sentences" do
      result = RubyGemsExercise.sentences(5)

      expect(result.split(".").length).to eq 5
    end

    it "capitalizes first letter of the sentence" do
      generated_sentences = RubyGemsExercise.sentences(4)
      result = generated_sentences.split(".").all? do |sentence|
        first_char = sentence.strip[0]
        first_char == first_char.capitalize
      end

      expect(result).to eq true
    end
  end

  describe ".paragraphs" do
    it "returns correct number of paragraphs" do
      result = RubyGemsExercise.paragraphs(3)

      expect(result.split("\n").length).to eq 3
    end
  end
end
