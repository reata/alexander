# Alexander
Alexander is a HOME directory backup to build portability and avoid device lock-in.

The backup includes:
- General software configuration:
  - Git: ~/.gitconfig
- mirror setup for repository of software:
  - PyPI: ~/.pip/
  - Maven: ~/.m2/
  - sbt: ~/.sbt/
- Documentation for sensitive information migration:
  - GPG: ~/.gnupg/
  - SSH: ~/.ssh/


## Boot up a new device
It's always nice to get a new device, and it's also painful to set up for it. Here's a semi-automated guide to get this job 
done, reducing the pain to enjoy more fun:

### Shared Pieces to Get Started
- VPN
- [Google Chrome - The Fast & Secure Web Browser Built to be Yours](https://www.google.com/chrome/)
- [Tabby - a terminal for a modern age](https://tabby.sh/)
- OS specific
  - Ubuntu
    - [Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
  - macOS
    - [Homebrew - The Missing Package Manager for macOS (or Linux)](https://brew.sh/)
- [Oh My Zsh - a delightful & open source framework for Zsh](https://ohmyz.sh/)

### Automated Setup
execute `${OS}_install.sh` script to install software packages automatically.

### Post Installation
- check `${OS}_post_installation.md` docs to configure the device to work better.
- copy each backup directory (based on README.md if available)

## Behind the Name

This project is named after **Iron Fist Alexander** (AKA Alexander, Warrior Jar), an NPC in Elden Ring. 
Iron Fist Alexander is a large Living Jar who set out from his home one day in search of adventure, 
seeking to become a mighty warrior.


Quote from Iron Fist Alexander
> Yes, indeed, I too have a home. Though it is one to which I have vowed not to return.

Quote from Jar Bairn
> Uncle Alexander said he won't be back again. "My home is of the past. And the past, as they say, is a different country."
