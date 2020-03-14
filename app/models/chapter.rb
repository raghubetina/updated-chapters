# == Schema Information
#
# Table name: chapters
#
#  id             :bigint(8)        not null, primary key
#  base_asset_url :string
#  content        :text
#  title          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  vimeo_id       :string
#

class Chapter < ApplicationRecord
  before_save :append_toc_placeholder

  def append_toc_placeholder
    unless content.include?("{:toc}")
      content << "\n\n* Will be replaced with the ToC\n{:toc}"
    end
  end
end
