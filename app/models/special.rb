class Special < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :comedian

  def self.average_runtime
    average(:runtime) 
  end

end