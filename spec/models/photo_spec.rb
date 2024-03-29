# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Photo, type: :model do
  describe 'Testing Associations' do
    context 'Model Associations' do
      it { should belong_to(:photoable) }
    end
  end
  describe 'Testing validations' do
    context 'validations' do
      it { is_expected.to validate_presence_of(:image) }
    end
    context 'positive validations' do
      it 'Image is valid as its type valid(png, jpeg, jpg, webp)' do
        photo = build(:photo)
        expect(photo.save).to eq(true)
      end
    end
    context 'negative validations' do
      it 'Image is invalid as its type invalid txt' do
        photo = build(:photo, :invalid_image)
        expect(photo.save).to eq(false)
        expect(photo.errors.full_messages).to include('you tried uploading wrong file')
      end
    end
  end
end
