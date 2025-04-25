class Solution:
    def reverseVowels(self, s: str) -> str:
       
        vowels = "aeiouAEIOU"
        word = list(s)  # Convert to list to allow modifications
        left, right = 0, len(word) - 1

        while left < right:
            if word[left] not in vowels:
                left += 1
            elif word[right] not in vowels:
                right -= 1
            else:
                word[left], word[right] = word[right], word[left]
                left += 1
                right -= 1

        return ''.join(word)

        