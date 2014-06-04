require 'faker'
I18n.enforce_available_locales = false

class Generator

  def initialize(length)
    @length = length
  end

  def people
    @length.times.map do
      [Faker::Name.first_name, Faker::Name.last_name]
    end
  end

  def companies
    companies = []
    (@length / 2).times.map do
      companies << Faker::Company.name
    end
    companies
  end

  def generate
    these_companies = companies
    i = 0
    people.map do |person|
      result = (person << these_companies[i])
      i += 1
      i = 0 if i == (@length / 2)
      result
    end
  end

end