class WordSynth
  def initialize
    @effects = []
  end

  def add_effect(*effect)
    effect.each do |e|
      @effects << e
    end
  end

  def play(original_words)
    @effects.inject(original_words) do |words, effect|
      effect.call(words)
    end
  end
end
