# frozen_string_literal: true

class MyController < ApplicationController

  def user_input; end

  def user_output
    happy = []
    a = params[:happynum].to_i
    0.upto(a) do |i|
      digits = i.digits.reverse
      if digits.length < 6
        (6 - digits.length).times do
          digits.prepend(0)
        end
      end
      happy.push(i) if digits.slice(0, 3).sum == digits.slice(3, 3).sum
    end
    @happy_result = happy
  end
end
