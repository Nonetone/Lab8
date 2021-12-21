# frozen_string_literal: true

Rails.application.routes.draw do
  get 'my/user_input'
  get 'my/user_output'
  root 'my#user_input'
end
