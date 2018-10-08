RSpec.describe Special do
  describe 'Validations' do

    describe 'Relationships' do
      it 'belongs to one comedian' do
        association = described_class.reflect_on_association(:comedian)
        
        expect(association.macro).to eq :belongs_to
      end
    end
  end
end