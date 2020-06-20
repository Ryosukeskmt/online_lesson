class AddUnderstandingToImpression < ActiveRecord::Migration[5.2]
  def change
    add_column :impressions, :understanding, :string
  end
end
