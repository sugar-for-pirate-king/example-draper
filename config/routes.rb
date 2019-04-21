# frozen_string_literal: true

Rails.application.routes.draw do
  root 'musics#index'

  resources :musics
end
