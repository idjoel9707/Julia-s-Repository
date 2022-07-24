import java.util.*;

class Unique {
    public static void main(String[] args) {

        int[] nums1 = {1, 2, 3, 4, 5};
        int[] nums2 = {2, 5, 3, 4};

        for(int i = 0; i < nums1.length; i++) {
            int flag = 1;
            for(int j = 0; j < nums2.length; j++) {
                if (nums1[i] == nums2[j]) {
                    flag += 1;
                }
            }
            if(flag == 1) {
                System.out.print(" " + nums1[i]);
            }
        }

    }
}