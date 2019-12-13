
    def my_uniq(arr) # [1, 2, 1, 3, 3]
        uniques = []
        arr.each do |ele|
            uniques << ele unless uniques.include?(ele)
        end
        uniques
    end

    def two_sum(arr)
        pairs = []
        
        arr.count.times do |start|
            (start+1).upto(arr.length-1) do |fin|
                pairs << [start, fin] if arr[start] + arr[fin] == 0         
            end
        end
        pairs
    end


    def my_transpose(matrix)
        transposed = Array.new(matrix.length) {Array.new()}

        matrix.each do |subArray|
            subArray.each.with_index do |ele, i|
                transposed[i] << ele
            end
        end

        transposed
    end


