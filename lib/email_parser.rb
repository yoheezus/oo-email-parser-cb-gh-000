# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

    @@emails = []

    attr_accessor :emails

    def initialize(emails)
        @emails = emails

    end

    def parse
        split_white_space = @emails.split(" ")
        remove_commas = split_white_space.collect { |item| item.chomp(",")}
        unique_emails = remove_commas.uniq
        unique_emails.each { |email| @@emails << email }
        unique_emails
    end

    def self.all_emails
        @@emails
    end
end
