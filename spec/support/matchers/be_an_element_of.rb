RSpec::Matchers.define :be_an_element_of do |expected|
  match do |actual|
    expected.include?(actual)
  end
end
