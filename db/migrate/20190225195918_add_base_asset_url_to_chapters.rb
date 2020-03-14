class AddBaseAssetUrlToChapters < ActiveRecord::Migration[5.2]
  def change
    add_column :chapters, :base_asset_url, :string
  end
end
