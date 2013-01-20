
class Ppl::Entity::Contact

  attr_accessor :id
  attr_accessor :name
  attr_accessor :nicknames
  attr_accessor :email_addresses
  attr_accessor :birthday
  attr_accessor :phone_numbers
  attr_accessor :organizations
  attr_accessor :postal_address
  attr_accessor :urls

  def initialize
    @email_addresses = []
    @nicknames = []
    @organizations = []
    @phone_numbers = []
    @urls = []
  end

  def set_postal_address
    if @postal_address.nil?
      @postal_address = Ppl::Entity::PostalAddress.new
    end
    yield @postal_address
  end

  def has_email_address?(email_address)
    @email_addresses.include? email_address
  end

end

