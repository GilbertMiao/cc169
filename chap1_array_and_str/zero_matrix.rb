# Write an algorithm such that if an element in an MxN matrix is 0, its entire row and
# column are set to 0.

def zero_matrix(matrix)
    m = matrix.length
    n = matrix[0].length
    null_rows = {}
    null_cols = {}

    m.times do |r|
        n.times do |c|
            if matrix[r][c] == 0
                null_rows[r] = true
                null_cols[c] = true
            end
        end
    end

    # set rows to 0
    null_rows.each { |k, _v| n.times { |c| matrix[k][c] = 0 } }

    # set cols to 0
    null_cols.each { |k, _v| m.times { |r| matrix[r][k] = 0 } }

    matrix
end
