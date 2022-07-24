class BinarySearchNumber {
    int binarySearch(int arr[], int left, int right, int x) {
        if (right >= left) {
            int mid = left + (right - left) / 2;
            if (arr[mid] == x) return mid;
            if (arr[mid] > x) return binarySearch(arr, left, mid - 1, x);

            return binarySearch(arr, mid + 1, right, x);
        }
        return -1;
    }

}
public class BinarySearch{
    public static void main(String args[])
    {
        BinarySearchNumber number = new BinarySearchNumber();
        int arr[] = { 2, 10, 40, 3, 5, 56, 90, 32, 76, 54 };
        int n = arr.length;
        int x = 76;
        int result = number.binarySearch(arr, 0, n - 1, x);
        System.out.println("Element found at index " + result);
    }
}