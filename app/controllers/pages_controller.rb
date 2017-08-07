require 'test'
class PagesController < ApplicationController
  def encrypt

    if params['msg']
      start = Time.now
      @msg = params['msg']
      @msg = @msg.upcase
      @msg = change(@msg)
      @end_time = Time.now - start
    elsif params['dec']
      start = Time.now
      @msg = params['dec']
      @msg = @msg.upcase
      @msg = decrypt(@msg)
      @end_time = Time.now - start
    end
  end

  def about
  end
  def index
  end
end
