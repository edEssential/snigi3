class Contact < ActiveRecord::Base
  attr_accessible :email, :name, :user_message, :message_text, :thanks_text
  
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << ["Name", "Email"]
      csv << []
      all.each do |contact|
        csv << [contact.name, contact.email]
      end
    end
  end
  
end