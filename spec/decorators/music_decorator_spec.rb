# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MusicDecorator, type: :controller do
  describe '#title' do
    it 'is expeted to return title' do
      music = Music.new(title: 'Nande').decorate
      expect(music.title).to eq 'Nande'
    end

    it 'is expected to returns `Judul tidak tersedia`' do
      music = Music.new(title: nil).decorate
      expect(music.title).to eq 'Judul tidak tersedia'
    end
  end

  describe '#render' do
    it 'expected to render _music' do
      music = Music.new.decorate
      expect(music.render).to render_template('musics/_music')
    end
  end
end
