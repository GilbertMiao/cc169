# Given an image represented by an NxN matrix, where each pixel in the image is 4
# bytes, write a method to rotate the image by 90 degrees.

def rotate_matrix(matrix)
  n = matrix.length

  (n/2).times do |layer|
    final = n - layer - 1
    (layer..final-1).each do |i|
      offset = i - layer
      # save top
      top = matrix[layer][i]
      # left to top
      matrix[layer][i] = matrix[final - offset][layer]
      # bottom to left
      matrix[final - offset][layer] = matrix[final][final - offset]
      # right to bottom
      matrix[final][final - offset] = matrix[i][final]
      # top to right
      matrix[i][final] = top
    end
  end
  matrix
end
