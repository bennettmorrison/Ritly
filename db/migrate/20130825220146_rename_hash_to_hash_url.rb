class RenameHashToHashUrl < ActiveRecord::Migration
  def change
  	rename_column :urls, :hash, :hash_urls
  end
end
