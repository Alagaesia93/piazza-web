# frozen_string_literal: true

class CreateOrganizations < ActiveRecord::Migration[7.1]
  def change
    create_table :organizations, &:timestamps
  end
end
