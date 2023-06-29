class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.string :description
      t.string :user_name
      t.string :url_image

      t.timestamps
    end
  end
end
