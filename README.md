# html2markdown-feedstock

A feedstock for `html2markdown` on conda-forge compatible channels (prefix.dev).

## About

html2markdown is a command-line tool to convert HTML to Markdown. It even works
with entire websites and can convert HTML from URLs, files, or stdin.

- Homepage: https://html-to-markdown.com
- Repository: https://github.com/JohannesKaufmann/html-to-markdown
- License: MIT

## Channel

The package can be published on:
[https://prefix.dev/jwintz](https://prefix.dev/jwintz)

## Installation

```bash
pixi workspace channel add --prepend https://prefix.dev/jwintz
pixi add html2markdown
```

Or install globally:

```bash
pixi global install -c https://prefix.dev/jwintz -c conda-forge html2markdown
```

## Build

To build the package locally:

```bash
rattler-build build --recipe recipe/recipe.yaml
```

## Usage

```bash
# Convert HTML file to Markdown
html2markdown input.html > output.md

# Convert from URL
html2markdown https://example.com

# Convert from stdin
echo "<strong>bold</strong>" | html2markdown
```

## Recipe Source

This recipe is converted from the Homebrew formula:
https://github.com/Homebrew/homebrew-core/blob/master/Formula/h/html2markdown.rb
