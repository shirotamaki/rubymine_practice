require 'minitest/autorun'
require_relative '../lib/effects'
# require_relative '../lib/word_synth'

class EffectsTest < Minitest::Test
  # リバースエフェクト
  def test_reverse
    effect = Effects.reverse
    assert_equal 'ybuR si !nuf', effect.call('Ruby is fun!')
  end
  # エコーエフェクト
  def test_echo
    effect = Effects.echo(0)
    assert_equal '  ', effect.call('Ruby is fun!')

    effect = Effects.echo(3)
    assert_equal 'RRRuuubbbyyy iiisss fffuuunnn!!!', effect.call('Ruby is fun!')
  end
  # ラウドエフェクト
  def test_loud
    effect = Effects.loud(2)
    assert_equal 'RUBY!! IS!! FUN!!!', effect.call('Ruby is fun!')

    effect = Effects.loud(3)
    assert_equal 'RUBY!!! IS!!! FUN!!!!', effect.call('Ruby is fun!')
  end

  def test_small
    effect = Effects.small(2)
    assert_equal 'ruby..is..fun..', effect.call('Ruby is fun!')
  end
end
