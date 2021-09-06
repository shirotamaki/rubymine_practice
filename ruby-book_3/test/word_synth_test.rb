require 'minitest/autorun'
require_relative '../lib/word_synth'
require_relative '../lib/effects'

class WordSynthTest < Minitest::Test
  # エフェクトなし
  def test_play_without_effects
    synth = WordSynth.new
    assert_equal 'Ruby is fun!', synth.play('Ruby is fun!')
  end
  # リバースエフェクト
  def test_play_with_reverse
    synth = WordSynth.new
    synth.add_effect(Effects.reverse)
    assert_equal 'ybuR si !nuf', synth.play('Ruby is fun!')
  end
  # 複数のエフェクト
  def test_play_with_many_effects
    synth = WordSynth.new
    # [Effects.echo(2), Effects.loud(3), Effects.reverse, Effects.small(3)].each do |effect|
    #   synth.add_effect(effect)
    # end

    # synth.add_effect(Effects.echo(2),
    #                  Effects.loud(3),
    #                  Effects.reverse,
    #                  Effects.small(3),
    #                  Effects.reverse
    #                  # Effects.reverse
    #                  )
    synth.add_effect(Effects.echo(2))
    synth.add_effect(Effects.loud(3))
    synth.add_effect(Effects.reverse)
    synth.add_effect(Effects.small(3))
    # assert_equal '!!!YYBBUURR !!!SSII !!!!!NNUUFF', synth.play('Ruby is fun!')
    assert_equal 'yybbuurr...ssii...nnuuff...', synth.play('Ruby is fun!')
  end
end
