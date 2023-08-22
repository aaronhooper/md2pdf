# 📟 ⇒ 📄 md2pdf

A set of bash scripts to convert Markdown documents to PDF via LaTeX.

## Prerequisites

You'll need to install the latest version of MacTeX, along with
`pandoc`.

If you want to render emoji, you'll also need to install the `emoji`
package from CTAN using the `tlmgr` package manager. Don't worry, it
comes bundled with MacTeX!

## Install

Clone the repository.

```bash
git clone <this_url>
```

## Usage

The main script you will want to use is `./bin/run.sh`.

In `./bin/run.sh`, configure `SRC_DIR` to the folder where your Markdown
is located, and `DIST_DIR` to the folder where you want your PDFs to go,
both relative to the directory you will run the command in. For example,
if you wish to run the command in the root of the project and want your
src and dist folders to be located there (the default setting) then set
`SRC_DIR` to `"./src"` and `DIST_DIR` to `"./dist"`.

Assuming these defaults, run the script with the following:

```bash
bin/run.sh src/document.md
```

Your freshly pressed PDFs will be saved to `dist` and opened in Preview!
😎

## Gotchas

If you're linking to images using the `![alt text](./path/to/image.png)`
syntax, the path will be relative to the directory `run.sh` has been run
in, not the src folder. If you are using the defaults, put your images
folder in the root folder outside of `./src`, and run the command there
as well.
