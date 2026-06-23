class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
       /*
        int n=nums.size();
        for(int i=0;i<n;i++){
            for(int j=i+1;j<n;j++){
                if(nums[i]+nums[j]==target)return {i, j};
            }
        }
        return {};
        */

        int n=nums.size();
        unordered_map<int, int>mpp;
        for(int i=0;i<n;i++){
            int rem= target-nums[i];
            if(mpp.find(rem)!=mpp.end())return {i, mpp[rem]};
            mpp[nums[i]]=i;
        }
        return {};
    }
};

// Synced seamlessly with LeetHub Pro
// Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
// Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna