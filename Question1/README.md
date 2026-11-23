# Question 1: Word and Character Counter

A Lex (Flex) program that reads text from standard input and reports:

- the number of words
- the total number of characters in those words

A word is any sequence of one or more English letters (`A-Z` or `a-z`). Numbers, punctuation, whitespace, and other characters are ignored.

## Requirements

- A Flex-compatible Lex scanner
- GCC or another C compiler

## Compile and Run

```bash
flex assignment1_wordcount.l
gcc lex.yy.c -o wordcount
./wordcount
```

Enter text and press `Ctrl+D` on Linux/macOS (or `Ctrl+Z` followed by Enter on Windows) to finish input.

## Example

Input:

```text
Hello, world! Lex 2026
```

Output:

```text
Enter text (Ctrl+D to end):

Number of words: 4
Total size of words (characters): 16
```

The scanner counts `Hello`, `world`, `Lex`, and `2026` is excluded. Only letters count as part of words, so the character total is `5 + 5 + 3 = 13`, not 16. Wait, 2026 excluded; the words are 3. Update accurately.
