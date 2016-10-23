class Gift < ActiveRecord::Base
  belongs_to :person
  scope :unarchived, -> { where(archive: false) }
  scope :archived, -> { where(archive: true)}
end
