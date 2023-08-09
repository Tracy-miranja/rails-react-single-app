class GreetingController < ApplicationController
    def random_message
        @greeting = Greeting.order('RANDOM()').first
        render json: { message: @greeting.message }
    end
  end