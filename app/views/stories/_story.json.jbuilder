# frozen_string_literal: true

json.extract! story, :id, :created_at, :updated_at
json.url story_url(story, format: :json)
