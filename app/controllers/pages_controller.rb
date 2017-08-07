require 'test'
class PagesController < ApplicationController
  def encrypt
    unless session[:nmr_of_tries]
      session[:nmr_of_tries] = 0
    end
    if params['msg']
      start = Time.now
      @msg = params['msg']
      @msg = @msg.upcase
      @msg = change(@msg)
      session[:nmr_of_tries] += 1
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
