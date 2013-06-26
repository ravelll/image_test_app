require 'exifr'

module MicropostsHelper
  def get_exif(micropost)
    @exif = EXIFR::JPEG.new(micropost.content)
  end
end
