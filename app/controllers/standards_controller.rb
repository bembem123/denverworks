class StandardsController < ApplicationController

      def inquire
        @standard =Standard.new
      end

      def success
        @standard = Standard.new(params[:standard])
        @standard.request = request

        if @standard.deliver
          flash.now[:error] = nil
        else
          flash.now[:error] = 'Cannot send message'
          render :inquire
        end
      end

end
