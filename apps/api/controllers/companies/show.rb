module Api
  module Controllers
    module Companies
      class Show
        include Api::Action
        before :validate_params!

        params do
          required(:id).filled(:int?)
        end

        def initialize(repository: CompanyRepository.new)
          @repository = repository
        end

        def call(params)
          company = @repository.find_by(id: params.get(:id))

          halt 404, ErrorTemplate.messages(['Company not found']) unless company
          status 200, CompanyTemplate.one(company)
        end

        private

        def validate_params!
          halt 422, ErrorTemplate.messages(params.errors) unless params.valid?
        end
      end
    end
  end
end
