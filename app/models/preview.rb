class Preview < ActiveRecord::Base
  belongs_to :project  
  has_attachment :storage => :file_system, 
                 :path_prefix => 'public/previews/',
                 :thumbnails => { :thumb => [300,300] },
                 :max_size => 10.megabytes,
                 :resize => 600,
                 :processor => 'ImageScience'

  validates_as_attachment
  
  #The block will be executed just before the thumbnail is saved.
  #We need to set extra values in the thumbnail class as
  #we want it to have the same extra attribute values as the original image
  #except for the default flag that is always set to false
  before_thumbnail_saved do |record, thumbnail|
    thumbnail.project_id = record.project_id
  end
  
end
