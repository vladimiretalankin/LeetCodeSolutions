#118
class Solution:
    def generate(self, numRows: int) -> List[List[int]]:
        output = [[1]]
        if numRows == 1:
            return output
        output = [[1],[1,1]]
        if numRows == 2:
            return output        
        for i in range(2, numRows):
            output.append([])
            output[i].append(1)
            for j in range(1, len(output[i-1])):
                output[i].append(output[i-1][j-1] + output[i-1][j])
            output[i].append(1)
        return output
