class Solution:
    def isPalindrome(self, x: int) -> bool:
        if x < 0:
            return False  # negative numbers are not palindromes
        return str(x) == str(x)[::-1]