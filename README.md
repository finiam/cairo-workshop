# Cairo 101 Workshop

A minimal template for the Cairo 101 workshop

## Installing dependencies

### Step 0: Install Rust

Before we begin installing Cairo, we first need to make sure we have Rust installed.

Run the following command to check if you already have Rust installed:

```bash
cargo --version
```

If it returns a version number, skip to Step 1. If not, Rust is not present in your system and we need to install it.

We recommend following the instructions for your system, shown in the [official Rust docs](https://www.rust-lang.org/tools/install). After that, rerun the previous command to validate Rust was successfully installed.

### Step 1: Install Cairo 1.0

For Cairo, since the language is still in active developmment, we recommend compiling Cairo from source like so:

```bash
# Make sure we have the latest stable Rust version
$ rustup override set stable && rustup update

# Clone the Cairo compiler to the $HOME directory
$ cd ~ && git clone git@github.com:starkware-libs/cairo.git && cd cairo

# Generate release binaries
$ cargo build --all --release
```

**NOTE: Keeping Cairo up to date**

Now that your Cairo compiler is in a cloned repository, all you will need to do
is pull the latest changes and rebuild as follows:

```bash
$ cd ~/cairo && git fetch && git pull && cargo build --all --release
```

### Step 2: Add Cairo 1.0 executables to your path

Now that we have built the Cairo 1.0 binaries, we need to add them to the PATH environment variable.
Add the following in your `.bashrc` or `.zshrc`:

```bash
export PATH="$HOME/cairo/target/release:$PATH"
```
After that, open a new shell and check that the following command returns a version number:

```bash
cairo-compile --version
```

### Step 3: Install the Cairo package manager Scarb

[Scarb](https://github.com/software-mansion/scarb) is a package manager from Software Mansion for Cairo projects.

The installation process is similar to Cairo:

```bash
# Make sure we have the latest stable Rust version
$ rustup override set stable && rustup update

# Clone the Scarb repo to the $HOME directory
$ cd ~ && git clone git@github.com:software-mansion/scarb && cd scarb

# Generate release binaries
$ cargo build --all --release

# Add the Scarb binary to PATH
export PATH="$HOME/scarb/target/release:$PATH"
```

### Step 4 (Optional): Setup Language Server

#### VS Code Extension

- Disable previous Cairo 0.x extension if you already had it
- Install the Cairo 1 extension for proper syntax highlighting and code navigation.
Just follow the steps indicated [here](https://github.com/starkware-libs/cairo/blob/main/vscode-cairo/README.md).

#### Cairo Language Server

From [Step 1](#step-1), the `cairo-language-server` binary should be built and executing this command will copy its path into your clipboard.

```bash
$ which cairo-language-server | pbcopy
```

Update the `languageServerPath` of the Cairo 1.0 extension by pasting the path.

## Commands

The Cairo template currently supports building and testing contracts.

### Build

Build the project.

```bash
$ make build
```

### Test

Run the tests in `src/test`:

```bash
$ make test
```

### Format

Format the Cairo source code (using Scarb):

```bash
$ make fmt
```

## License

This repo was generated from the [auditless template for Cairo 1](https://github.com/auditless/cairo-template)

[MIT](https://github.com/auditless/cairo-template/blob/main/LICENSE) © [Auditless Limited](https://www.auditless.com)
