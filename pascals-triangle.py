#118
class Solution:
    def generate(self, numRows: int) -> List[List[int]]:
        if numRows == 1:
            return [[1]]
        output = [[1],[1,1]]
        if numRows == 2:
            return output        
        for i in range(2, numRows):
            output.append([])
            output[i].append(1)
            for j in range(1, i):
                output[i].append(output[i-1][j-1] + output[i-1][j])
            output[i].append(1)
        return output
