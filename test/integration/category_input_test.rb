require 'test_helper'

class CategoryInputTest < ActionDispatch::IntegrationTest
  
  def setup
    @book = books(:TomSawyer)
    @category = categories(:one)
  end
  
end
