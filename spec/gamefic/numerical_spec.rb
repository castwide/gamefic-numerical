# frozen_string_literal: true

RSpec.describe Gamefic::Numerical do
  it 'has a version number' do
    expect(Gamefic::Numerical::VERSION).not_to be nil
  end

  it 'parses numeric words' do
    token = 'twenty thousand guns'
    result = Gamefic::Query::Numerical.new.filter(nil, token)
    expect(result.match).to eq(20_000)
    expect(result.remainder).to eq('guns')
  end

  it 'parses integers' do
    token = '20 guns'
    result = Gamefic::Query::Numerical.new.filter(nil, token)
    expect(result.match).to eq(20)
    expect(result.remainder).to eq('guns')
  end

  it 'parses mixed numbers' do
    token = '20 thousand guns'
    result = Gamefic::Query::Numerical.new.filter(nil, token)
    expect(result.match).to eq(20_000)
    expect(result.remainder).to eq('guns')
  end
end
