# Makefile docs

[![Make](https://img.shields.io/badge/make-black?style=flat&logo=gnu&logoColor=ffffff&color=000000)](https://fr.wikipedia.org/wiki/GNU_Make)
[![AWK](https://img.shields.io/badge/awk-black?style=flat&color=000000)](https://en.wikipedia.org/wiki/AWK)

Display your makefile documentation with `makefile-docs.awk`, a POSIX-compatible extension of a simple awk one-liner.

## Getting Started

### Prerequisites

This script requires:

- [AWK](https://en.wikipedia.org/wiki/AWK)
- [GNU Make](https://www.gnu.org/software/make/) (now installed by default on POSIX-compatible operating systems such as macOS, ubuntu, ...)

## Usage

Insert this script in your `Makefile`

```bash
help:
 @awk \
  -v tab_width=2 \
  -F ':.*?##' \
  -f makefile-docs.awk \
  $(MAKEFILE_LIST)
```

In your `Makefile`, add section titles, arguments, descriptions to your commands

```bash
### Section title:

command: ## [args] Description
 @echo "command"
```

Run the `make help` command

```bash
make help
```

## License

Distributed under the MIT License. See `LICENSE` for more information.
