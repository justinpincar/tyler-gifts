class Recipient < ActiveRecord::Base
  belongs_to :user

  has_and_belongs_to_many :traits

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << ["id", "user_id", "user_email", "name", "age", "gender", "traits", "created_at", "updated_at"]
      all.each do |recipient|
        array = [recipient.id, recipient.user_id, recipient.user.email]
        array.concat [recipient.name, recipient.age, recipient.gender]
        array.concat [recipient.traits.collect(&:name).join("|")]
        array.concat [recipient.created_at, recipient.updated_at]
        csv << array
      end
    end
  end
end

