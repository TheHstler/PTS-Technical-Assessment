
class RemoveDuplicatesSolutionSolution {

    public int RemoveDuplicates(int[] nums) {

        int n = nums.length; //This is the length od the array and also checks the array is empty 
        if (n <= 1) {
            return n;

        }

        int idx = 1; // idx keeps track of where to put the next unique number

                // Start from the second number and checks each one
        for (int i = 1; i < n; i++) {
                        // If this number is different from the one before it, it's unique
            if (nums[i] != nums[i - 1]) {
                                // Puts the unique number in the right spot and move the idx forward
                nums[idx++] = nums[i];
            }
        }
                // idx is now the number of unique numbers, so return it
        return idx;
    }

// Main Method 
    // Create an instance of the solution class
 public static void main(String[] args) {
        RemoveDuplicatesSolutionSolution solution = new RemoveDuplicatesSolutionSolution();
        
            // Define an example array with possible duplicates
        int[] numbers = {1, 2, 5, 5, 7, 8, 9}; // Change this to test other arrays


            // Calls the method to remove duplicates and get the count of unique numbers
        int uniqueCount = solution.RemoveDuplicates(numbers);

            // Prints the number of unique numbers and the unique numbers themselves
        System.out.println("Number of unique numbers: " + uniqueCount);
        System.out.print("Unique numbers: ");
        for (int i = 0; i < uniqueCount; i++) {
            System.out.print(numbers[i] + " ");
        }
        System.out.println();
    }
}