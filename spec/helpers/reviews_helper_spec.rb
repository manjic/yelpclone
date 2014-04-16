require 'spec_helper'

require 'spec_helper'

describe ReviewsHelper do
  describe '#star_rating' do
    context '0' do
      it 'returns 5 empty stars' do
        expect(star_rating(0)).to eq '☆☆☆☆☆'
      end
    end

    context '1-4 stars' do
      it 'returns 1 star for each point, the rest are empty' do
        expect(star_rating(3)).to eq '★★★☆☆'
      end
    end

    context '5 stars' do
      it 'returns 5 filled in stars' do
        expect(star_rating(5)).to eq '★★★★★'
      end
    end

    context 'float' do
      it 'rounds to the nearest star' do
        expect(star_rating(3.7)).to eq '★★★★☆'
      end
    end

    context 'message given instead of numerical rating' do
      it 'returns the message as-is' do
        expect(star_rating('No reviews yet')).to eq 'No reviews yet'
      end
    end
  end
end