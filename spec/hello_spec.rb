# frozen_string_literal: true

require 'request_helper'
require 'pry'

RSpec.describe 'API requests' do
  describe 'GET /' do
    let(:films) do
      [
        'Arrietty, Hiromasa Yonebayashi, 2010',
        'Castle in the Sky, Hayao Miyazaki, 1986',
        'Earwig and the Witch, Gorō Miyazaki, 2021',
        'From Up on Poppy Hill, Gorō Miyazaki, 2011',
        'Grave of the Fireflies, Isao Takahata, 1988',
        "Howl's Moving Castle, Hayao Miyazaki, 2004",
        "Kiki's Delivery Service, Hayao Miyazaki, 1989"
      ]
    end

    it 'returns the Studio Ghibli films with director and release year in alphabetical order' do
      get '/'

      expect(response).to be_ok
      expect(JSON.parse(response.body)).to include(*films)
    end
  end
end

# TODO: Tutorial at min 9:40.
