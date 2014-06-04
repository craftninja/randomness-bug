require 'generator'

describe Generator do
  it 'generates a list of people for a length of 4' do
    generator = Generator.new(4)
    actual = generator.people.length
    expected = 4
    expect(actual).to eq(expected)
  end

  it 'generates a list of companies for a length of 4' do
    generator = Generator.new(4)
    actual = generator.companies.length
    expected = 2
    expect(actual).to eq(expected)
  end

  it 'maps two people to one company' do
    generator = Generator.new(4)
    employments = generator.generate
    company = []
    employments.each do |employment|
      company << employment[2]
    end
    company.uniq!
    actual = company.length
    expected = 2
    expect(actual).to eq(expected)
  end

end
