module Api
  module Controllers
    module Companies
      class Index
        include Api::Action

        def initialize(repository: CompanyRepository.new)
          @repository = repository
        end

        def call(_)
          companies = @repository.random
          status 200, CompanyTemplate.list(companies)

          # companies = @repository.random.map(&:to_h)
          # status 200, Api::Serializers::Company.new.call(companies)
        end
      end
    end
  end
end
