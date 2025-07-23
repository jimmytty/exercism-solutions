package spiralmatrix

import (
    "slices"
)

func InitMatrix(size int) [][]int {
    matrix := make([][]int, 0)

    for i := 0; i < size; i++ {
        row := make([]int, 0)
        for j := 0; j < size; j++ {
            row = append(row, 0)
        }
        matrix = append(matrix, row)
    }

    return matrix
}

func RotateMatrix(cur [][]int) [][]int {
    size := len(cur)
    mat  := InitMatrix(size)

    for i := 0; i < size; i++ {
        for j := 0; j < size; j++ {
            row := size - 1 - j
            col := i
            mat[row][col] = cur[i][j]
        }
    }

    return mat
}

func SpiralMatrix(size int) [][]int {
    if size == 0 {
        return [][]int{}
    }

    matrix := InitMatrix(size)

    n := 1
    i := 0

    for n <= size * size {
        if ! slices.Contains(matrix[i], 0) {
            i++
        }
        for j := 0; j < size; j++ {
            if matrix[i][j] > 0 {
                continue
            }
            matrix[i][j] = n
            n++
        }
        matrix = RotateMatrix(matrix)
    }

    for matrix[0][0] != 1 {
        matrix = RotateMatrix(matrix)
    }

    return matrix
}
