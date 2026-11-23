# Question 1: Word and Character Counter

A Lex (Flex) program that reads text from standard input and reports:

- The number of words
- The total number of characters in those words

A word is a sequence of one or more English letters (`A-Z` or `a-z`). Numbers, punctuation, whitespace, and other characters are ignored.

## Requirements

- A Flex-compatible Lex scanner
- GCC or another C compiler

## Compile and Run

```bash
flex assignment1_wordcount.l
gcc lex.yy.c -o wordcount
./wordcount
```

Enter text, then press `Ctrl+D` on Linux/macOS (or `Ctrl+Z` followed by Enter on Windows) to end input.

## Example

Input:

```text
Hello, world! Lex 2026
```

Output:

```text
Enter text (Ctrl+D to end):

Number of words: 3
Total size of words (characters): 13
```

The scanner recognizes `Hello`, `world`, and `Lex` as words. The number `2026` is excluded. The character total is calculated as `5 + 5 + 3 = 13`.
