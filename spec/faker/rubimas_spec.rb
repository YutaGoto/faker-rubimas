RSpec.describe Faker::Rubimas do
  it "has a version number" do
    expect(Faker::Rubimas::VERSION).not_to be nil
  end

  describe ".idol_name" do
    subject{ Faker::Rubimas.idol_name }

    let(:all_idols){ ::Rubimas.all.map { |idol| idol.name.full } }

    it{ should_not be_blank }
    it{ should be_an_element_of all_idols }
  end

  describe ".favorite" do
    subject{ Faker::Rubimas.favorite }

    let(:all_favs){ ::Rubimas.all.map { |idol| idol.favorites }.flatten }

    it{ should_not be_blank }
    it{ should be_an_element_of all_favs }
  end

  describe ".hobby" do
    subject{ Faker::Rubimas.hobby }

    let(:all_hobbies){ ::Rubimas.all.map { |idol| idol.hobbies }.flatten }

    it{ should_not be_blank }
    it{ should be_an_element_of all_hobbies }
  end

  describe ".color" do
    subject{ Faker::Rubimas.color }

    let(:all_colors){ ::Rubimas.all.map { |idol| idol.color }.flatten }

    it{ should_not be_blank }
    it{ should be_an_element_of all_colors }
  end

  describe ".cv" do
    subject{ Faker::Rubimas.cv }

    let(:all_cvs){ ::Rubimas.all.map { |idol| idol.cv }.flatten }

    it{ should_not be_blank }
    it{ should be_an_element_of all_cvs }
  end

  describe ".talent" do
    subject{ Faker::Rubimas.talent }

    let(:all_talents){ ::Rubimas.all.map { |idol| idol.talents }.flatten }

    it{ should_not be_blank }
    it{ should be_an_element_of all_talents }
  end

  describe ".idol_type" do
    subject{ Faker::Rubimas.idol_type }

    let(:all_types){ ::Rubimas.all.map(&:idol_type).uniq }

    it{ should_not be_blank }
    it{ should be_an_element_of all_types }
  end

  describe ".color" do
    subject{ Faker::Rubimas.color }

    let(:all_colors){ ::Rubimas.all.map(&:color).uniq }

    it{ should_not be_blank }
    it{ should be_an_element_of all_colors }
  end

  describe ".unit_name" do
    subject{ Faker::Rubimas.unit_name }

    let(:all_units){ ::Rubimas::Unit.all.map(&:name) }

    it{ should_not be_blank }
    it{ should be_an_element_of all_units }
  end

  describe ".unit_member_names" do
    subject{ Faker::Rubimas.unit_member_names }

    let(:all_unit_members){ ::Rubimas::Unit.all.map {|unit| unit.members.map{ |member| member.name.full} }}

    it{ should_not be_blank }
    it{ should be_an_element_of all_unit_members }
  end
end
