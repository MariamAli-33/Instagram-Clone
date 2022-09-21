# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Story, type: :model do
  context 'Associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:photos).dependent(:destroy) }
  end

  context 'validations' do
    it { is_expected.to validate_length_of(:content).is_at_least(0) }
    it { is_expected.to validate_length_of(:content).is_at_most(500) }

    it 'validates presence of photos' do
      story = build(:story)
      create(:photo, :story_photo)
      story.save
      expect(story.photos.count >= 1).to eq(true)
    end
  end
  it 'validates absence of photos' do
    story = build(:story, :invalid_story)
    story.save
    expect(story.photos.count.nil?).to eq(false)
    expect(story.errors.full_messages).to include('Please attach images with story')
  end
  context 'Callbacks' do
    it { is_expected.to callback(:delete_story).after(:commit) }
  end
end