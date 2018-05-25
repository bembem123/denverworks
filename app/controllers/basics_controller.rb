class BasicsController < ApplicationController


    def new
      @basic =Basic.new
    end

    def create
      @basic = Basic.new(params[:basic])
      @basic.request = request

      if @basic.deliver
        flash.now[:error] = nil
      else
        flash.now[:error] = 'Cannot send message'
        render :new
      end
    end

end
