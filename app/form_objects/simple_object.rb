class SimpleObject
  include Virtus

  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations


  attribute :name, String
  attribute :email, String
  attribute :age, Integer
  attribute :birthday, DateTime
  attribute :published, Boolean, :default => true
  attribute :reason, String

  validates :reason, presence: true

  # … more validations …

  # Forms are never themselves persisted
  def persisted?
    false
  end

  def save
      if valid?
      persist!
      true
    else
      false
    end
  end

  private

  def persist!

  end
end