class PackagesController < ApplicationController

      def new
        @package =Package.new
      end

      def create
        @package = Package.new(params[:package])
        @package.request = request

        if @package.deliver
          flash.now[:error] = nil
        else
          flash.now[:error] = 'Cannot send message'
          render :new
        end
      end
end
