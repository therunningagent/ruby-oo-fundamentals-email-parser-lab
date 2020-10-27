# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :email_addresses
    def initialize(emails)
      @emails = emails
    end
    def parse
      new_list = @emails.split(" ")
      new_list.each do |email|
        email.delete!(",")
      end
      new_list.uniq
    end
  end

