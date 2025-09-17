# My System Configuration

This repository contains my personal system configuration files. The setup is managed by [omiros](https://github.com/TheGhostHuCodes/omiros), a simple, custom-built tool for declarative system configuration management on macOS.

## How It Works

The `omiros` tool reads the `system.toml` file to orchestrate the entire setup. This includes:

1.  **Installing Packages:** Installing command-line tools and applications via Homebrew (`formulae` and `casks`).
2.  **Installing App Store Apps:** Installing applications from the Mac App Store.
3.  **Linking Dotfiles:** Symlinking the configuration files from the `dotfiles/` directory to their correct locations in the user's home directory.
4.  **Installing VSCode Extensions:** Installing specified Visual Studio Code extensions.
5.  **Configuring macOS:** Applying system settings for the Dock and Safari.

## Directory Structure

-   `system.toml`: The main configuration file that defines all packages, applications, dotfiles, and settings to be managed.
-   `dotfiles/`: This directory contains the actual configuration files (dotfiles) for various applications and tools like Alacritty, Fish, Git, and more.

## Usage

To apply this configuration:

1.  **Clone this repository:**
    ```bash
    git clone https://github.com/TheGhostHuCodes/sys-config.git
    cd sys-config
    ```

2.  **Install and run `omiros`:**
    Follow the installation and usage instructions on the [omiros GitHub repository](https://github.com/TheGhostHuCodes/omiros). Running `omiros` from within this directory will apply the entire system configuration.