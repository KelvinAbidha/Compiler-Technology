# Compiler-Technology

# ICS 2401 Compiler Construction – Assignment I

Group assignment: LEX (flex) specifications. Each question lives in its own folder with its own README that explains the code and shows how to run it.

## The questions

| # | Task | Folder |
|---|------|--------|
| 1 (i) | Count the number of words in a file and their total size | [`q1_i/`](q1_i/) |
| 1 (ii) | Accept English words and replace each occurrence of the string `abc` with `ABC` | [`q1_ii/`](q1_ii/) |
| 2 | Recognize a given set of verbs (is, am, are, were, was, be, being, been, do, does, did, will, would, should, can, could, has, have, had, go) | [`q2/`](q2/) |

Open the README inside each folder for the explanation, sample input and output, and run instructions for that question.

## Repository structure

```
.
├── q1_i/         # Q1(i)  word count and total size
├── q1_ii/        # Q1(ii) abc -> ABC replacement
├── q2/           # Q2     verb recognizer
├── .gitignore
└── README.md     # this file (overview)
```

## Requirements

You need `flex` and `gcc`.

**Ubuntu / Debian / WSL**
```bash
sudo apt update
sudo apt install flex gcc
```

**macOS**
```bash
xcode-select --install
brew install flex
```

**Windows**: use WSL (Ubuntu) and the commands above, or install `flex` and `gcc` through MSYS2 or Cygwin.

Check the install:
```bash
flex --version
gcc --version
```

## General build pattern

Every program is built the same way. Go into the question's folder, then:

```bash
flex <file>.l
gcc lex.yy.c -o <name>
./<name>
```

Type your input and press **Ctrl+D** to finish (Linux, macOS, WSL). On Windows `cmd` use **Ctrl+Z**, then Enter. The exact file and program names are in each folder's README.

## Team and contributions

| Member | Contribution |
|--------|--------------|
| Josphat Munene | Q1(i) |
| Victor Nduati | Q1(ii) |
| _Name 3_ | Q2 |
| _Name 4_ | Testing and screenshots |
| Daniel Bundi | Main README |
| _Name 6_ | `.gitignore` and final check |

## Contributing (for team members)

```bash
git pull origin main
git checkout -b your-branch-name
# make your changes
git add <your files>
git commit -m "Short, clear message"
git push -u origin your-branch-name
```

Then open a pull request on GitHub and merge it with a **merge commit** so every individual commit stays visible in the history. Do not commit generated files such as `lex.yy.c` or compiled executables.
