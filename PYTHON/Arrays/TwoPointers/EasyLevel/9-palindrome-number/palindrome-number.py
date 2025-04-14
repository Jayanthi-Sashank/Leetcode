class Solution:
    def isPalindrome(self, x: int) -> bool:
        x=str(x)
        d=x[::-1]
        if x==d:
            return True
        else:
            return False