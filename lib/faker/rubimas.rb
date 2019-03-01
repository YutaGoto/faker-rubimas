require 'faker/rubimas/version'

module Faker
  module Rubimas
    require 'rubimas'

    class Error < StandardError; end

    ::Rubimas.theaterdays!

    class << self
      def name
        sample_idol.name.full
      end

      def favorite
        sample_idol.favorites.sample
      end

      def hobby
        ::Rubimas.all.map(&:hobbies).flatten.sample
      end

      def talent
        sample_idol.talents.sample
      end

      def idol_type
        sample_idol.idol_type
      end

      def color
        sample_idol.color
      end

      def cv
        sample_idol.cv
      end

      def unit_name
        sample_unit.name
      end

      def unit_member_names
        sample_unit.members.map { |member| member.name.full }
      end

      private

      def sample_idol
        ::Rubimas.all.sample
      end

      def sample_unit
        ::Rubimas::Unit.all.sample
      end
    end
  end
end
