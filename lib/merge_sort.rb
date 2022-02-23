# merge sort
class MergeSort
  def sort(unsorted_arr)
    array_len = unsorted_arr.size
    if array_len < 2
      unsorted_arr
    else
      mid = array_len / 2
      left_half = sort(unsorted_arr[0...mid])
      right_half = sort(unsorted_arr[mid...array_len])
      merge(left_half, right_half)
    end
  end

  private

  def merge(arr_a, arr_b)
    sorted_array = []

    while !arr_a.empty? && !arr_b.empty?

      if arr_a.first < arr_b.first
        sorted_array.push arr_a.shift
      else
        sorted_array.push arr_b.shift
      end
    end

    sorted_array.concat(arr_a).concat(arr_b)
  end
end
