# frozen_string_literal: true

# Relationship Model
class Relationship < ApplicationRecord
  belongs_to :follower, class_name: 'User'
  belongs_to :followed, class_name: 'User'
end
