class Permission < ActiveRecord::Base
  #-------------------
  # Association
  has_many :user_permissions
  has_many :users,
    :class_name   => Outpost.config.user_class,
    :through      => :user_permissions,
    :dependent    => :destroy

  #-------------------
  # Validation
  validates :resource, uniqueness: true

  #-------------------

  def title
    self.resource.titleize
  end
end
