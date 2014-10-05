class Post < ActiveRecord::Base
  belongs_to :user
  has_many :replies

  has_attached_file :cloudpic, :styles => {
    :thumb    => ['100x100#',  :jpg, :quality => 70],
    :preview  => ['480x480#',  :jpg, :quality => 70],
    :large    => ['600>',      :jpg, :quality => 70],
    :retina   => ['1200>',     :jpg, :quality => 30]
  },
  :convert_options => {
    :thumb    => '-set colorspace sRGB -strip',
    :preview  => '-set colorspace sRGB -strip',
    :large    => '-set colorspace sRGB -strip',
    :retina   => '-set colorspace sRGB -strip -sharpen 0x0.5'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :cloudpic, :content_type => /\Aimage\/.*\Z/
  validates :answer, :choice1, :choice2, :choice3, presence: true
end
