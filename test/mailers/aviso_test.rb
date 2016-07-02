require 'test_helper'

class AvisoTest < ActionMailer::TestCase
  test "sorteio" do
    mail = Aviso.sorteio
    assert_equal "Sorteio", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
