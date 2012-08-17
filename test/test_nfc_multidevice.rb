require "test/unit"
require "nfc"

class TestNFCMultidevice < Test::Unit::TestCase

  # you should use 2 nfc device

  def setup
    @nfc_1 = NFC.new 0
    @nfc_2 = NFC.new 1
  end

  def test_connect
    assert_not_nil @nfc_1.device
    assert_not_nil @nfc_2.device
  end

  def test_find
    assert_not_nil @nfc_1.find
    assert_not_nil @nfc_2.find
  end

  def test_nfc_3
    assert_raise(RuntimeError){
      nfc = NFC.new 2
      nfc.find
    }
  end

end

