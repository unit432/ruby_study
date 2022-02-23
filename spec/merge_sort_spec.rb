require 'merge_sort'

describe MergeSort do
  describe '.merge_sort' do
    it 'should sort array' do
      expect(MergeSort.new.sort([88, 76, 3, 4, 2, 11, 9, 12, 1, 8, 888]))
        .to eq([1, 2, 3, 4, 8, 9, 11, 12, 76, 88, 888])
    end

    context 'when array is empty' do
      it 'returns empty array' do
        expect(MergeSort.new.sort([])).to eq([])
      end
    end
  end
end
