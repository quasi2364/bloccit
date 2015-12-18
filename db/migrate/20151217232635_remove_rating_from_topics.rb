class RemoveRatingFromTopics < ActiveRecord::Migration
  def change
    remove_column :topics, :rating, :integer
  end
end
