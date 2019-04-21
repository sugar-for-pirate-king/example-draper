# frozen_string_literal: true

#
# Music Controller
#
class MusicsController < ApplicationController
  def index
    @musics = MusicDecorator.decorate_collection(Music.all)
  end
end
