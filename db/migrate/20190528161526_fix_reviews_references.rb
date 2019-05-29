class FixReviewsReferences < ActiveRecord::Migration[5.2]
  def change
    remove_reference :reviews, :user, index: true, foreign_key: true

    add_reference :reviews, :reviewer, index: true
    add_foreign_key :reviews, :users, column: :reviewer_id

    add_reference :reviews, :reviewed, index: true
    add_foreign_key :reviews, :users, column: :reviewed_id
  end
end
