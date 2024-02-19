# Controller for managing greetings in the API.
module Api
  module V1
    class GreetingsController < ApplicationController
      before_action :set_default_format

      # GET /api/v1/greetings
      # Fetches a random greeting from the database.
      def index
        @greeting = Greeting.order('RANDOM()').first
        render json: { greeting: @greeting&.greeting }
      end

      private

      # Sets the default response format to JSON.
      def set_default_format
        request.format = :json
      end
    end
  end
end
