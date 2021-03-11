module Exercise
  module Arrays
    class << self
      def replace(array)
        max = array.reduce(array.first) { |max_v, v| v > max_v ? v : max_v }
        array.map { |v| v.positive? ? max : v }
      end

      def search(array, query)
        return -1 if array.empty?
        bisearch(array, query, 0, array.length - 1)
      end

      def bisearch(array, query, left, right)
        middle = (left + (right - left) / 2).to_i

        return middle if array[middle] == query

        return -1 if left == right

        if array[middle] > query
          bisearch(array, query, left, middle)
        else
          bisearch(array, query, middle + 1, right)
        end
      end
    end
  end
end
