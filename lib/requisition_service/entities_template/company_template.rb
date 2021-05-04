class CompanyTemplate < Hanami::Entity
  COMPANY_ATTRIBUTES = %i[id name slug created_at updated_at].freeze

  class << self
    def one(company)
      { company: allowed_attributes(company) }.to_json
    end

    def list(companies)
      companies = companies&.map do |company|
        allowed_attributes(company)
      end

      { companies: companies }.to_json
    end

    def allowed_attributes(company = nil)
      company&.to_h&.select { |k, _| COMPANY_ATTRIBUTES.include?(k) }
    end
  end
end
