module Api
  module Serializers
    class Company
      def call(object)
        serialize(object)
      end

      private

      def serialize(object)
        data = create_hash(object)

        JSON.generate(data)
      end

      def create_hash(object)
        if object.is_a?(Array)
          { companies: object.map { |obj| attributes(obj) } }
        else
          { company: attributes(object) }
        end
      end

      def attributes(company)
        {
          id: company&.dig(:id),
          name: company&.dig(:name),
          slug: company&.dig(:slug),
          created_at: company&.dig(:created_at),
          updated_at: company&.dig(:updated_at)
        }
      end
    end
  end
end
