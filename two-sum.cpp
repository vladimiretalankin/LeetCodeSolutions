// 1
class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        vector<int> result;
        int nums_size = nums.size();
        for(int i=0; i < nums_size-1; i++){
            for(int j=i+1; j < nums_size; j++){
                if(nums[i] + nums[j] == target){
                    result = {i, j};
                    return result;
                }
            }
        }
        return result;
    }
};
