class Project < ActiveRecord::Base
  has_many :previews

  def preview_attributes=(preview_attributes)
    preview_attributes.each do |a|
      previews.build(a)
    end
  end

end
