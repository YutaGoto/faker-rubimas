require "faker/rubimas/version"

module Faker
  module Rubimas
    require "rubimas"

    class Error < StandardError; end

    ::Rubimas.theaterdays!

    def self.name
      sample_idol.name.full
    end

    def self.favorite
      sample_idol.favorites.sample
    end

    def self.hobby
      sample_idol.hobbies.sample
    end

    def self.talent
      sample_idol.talents.sample
    end

    def self.idol_type
      sample_idol.idol_type
    end

    def self.color
      sample_idol.color
    end

    def self.cv
      sample_idol.cv
    end

    def self.unit_name
      sample_unit.name
    end

    def self.unit_member_names
      sample_unit.members.map {|member| member.name.full }
    end

    private

    def self.sample_idol
      ::Rubimas.all.sample
    end

    def self.sample_unit
      ::Rubimas::Unit.all.sample
    end
  end
end
