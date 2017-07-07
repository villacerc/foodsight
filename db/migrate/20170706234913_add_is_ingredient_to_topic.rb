class AddIsIngredientToTopic < ActiveRecord::Migration[5.1]
  def change
    add_column :topics, :is_ingredient, :boolean, default: true
  end
end
