//26. Remove Duplicates from Sorted Array

int removeDuplicates(int* nums, int numsSize) {
    int result = 0;
    if(numsSize == 1){
        return 1;
    }
    for(int i=0; i<numsSize-1; i++){
        for(int j=i+1; j<numsSize; j++){
            if(nums[j] > nums[i]){
                nums[i+1] = nums[j];
                break;
            } 
            if(j == numsSize-1){
            return i+1;
            }
        }
        result = i+2;
    }
    return result;
}
