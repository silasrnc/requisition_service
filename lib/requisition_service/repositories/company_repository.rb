class CompanyRepository < Hanami::Repository
  def find_by(hash)
    return unless hash

    companies.where(hash).limit(1).first
  end

  def random(number = 10)
    ids = Array.new(number) { rand(1...200) }

    companies.where(id: ids.uniq)
  end
end
