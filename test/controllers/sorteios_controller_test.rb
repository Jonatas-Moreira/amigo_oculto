require 'test_helper'

class SorteiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sorteio = sorteios(:one)
  end

  test "should get index" do
    get sorteios_url
    assert_response :success
  end

  test "should get new" do
    get new_sorteio_url
    assert_response :success
  end

  test "should create sorteio" do
    assert_difference('Sorteio.count') do
      post sorteios_url, params: { sorteio: { descricao: @sorteio.descricao } }
    end

    assert_redirected_to sorteio_url(Sorteio.last)
  end

  test "should show sorteio" do
    get sorteio_url(@sorteio)
    assert_response :success
  end

  test "should get edit" do
    get edit_sorteio_url(@sorteio)
    assert_response :success
  end

  test "should update sorteio" do
    patch sorteio_url(@sorteio), params: { sorteio: { descricao: @sorteio.descricao } }
    assert_redirected_to sorteio_url(@sorteio)
  end

  test "should destroy sorteio" do
    assert_difference('Sorteio.count', -1) do
      delete sorteio_url(@sorteio)
    end

    assert_redirected_to sorteios_url
  end
end
