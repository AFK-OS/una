<div id="top"></div>

<h1 align="center">Una</h1>
<h3 align="center">v1.1.7</h3>

<br>

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

  <p align="center">
    A complete MPR helper.
    <br>
    <a href="https://github.com/AFK-OS/una/wiki"><strong>Explore the docs »</strong></a>
    <br>
    <br>
    <a href="https://github.com/AFK-OS/una/issues">Report Bug</a>
    ·
    <a href="https://github.com/AFK-OS/una/issues">Request Feature</a>
  </p>
</div>

Una is a complete MPR helper written in `bash` (kinda demonstrates the power of shell scripts lol). It was created since the only other helper which is still being maintained, `tap`, had issues with handling dependencies from the MPR and regular APT dependencies. Una is a replacement for `tap` which has implemented all the features present in `tap` and more.

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- INSTALLATION -->
## Installation

```sh
wget -qO - 'https://proget.hunterwittenborn.com/debian-feeds/makedeb.pub' | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/makedeb-archive-keyring.gpg &> /dev/null

echo 'deb [signed-by=/usr/share/keyrings/makedeb-archive-keyring.gpg arch=all] https://proget.hunterwittenborn.com/ makedeb main' | \
sudo tee /etc/apt/sources.list.d/makedeb.list

sudo apt-get update && sudo apt-get install makedeb

git clone https://mpr.makedeb.org/una-bin.git && cd una-bin
makedeb -si && cd .. && rm -rf una-bin

una update; sudo mkdir -p /var/lib/una
una help
```


<!-- ROADMAP -->
## Roadmap

- [x] Support for installing and removing packages.
- [x] Support for dependencies from the MPR.
- [x] Support for updates.
- [x] Support for searching for packages.
- [x] Support for showing package information.
- [x] Support for auto-completions.
- [x] Support for cloning packages from the MPR, separate from installation.
- [x] Auto updater.
- [x] Implement all the features listed on https://docs.makedeb.org/mpr/list-of-mpr-helpers/.
- [x] Install `-git` package if main package doesn't exist.

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork this repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a pull request

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<p align="right">(<a href="#top">back to top</a>)</p>

[contributors-shield]: https://img.shields.io/github/contributors/AFK-OS/una.svg?style=for-the-badge
[contributors-url]: https://github.com/AFK-OS/una/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/AFK-OS/una.svg?style=for-the-badge
[forks-url]: https://github.com/AFK-OS/una/network/members
[stars-shield]: https://img.shields.io/github/stars/AFK-OS/una.svg?style=for-the-badge
[stars-url]: https://github.com/AFK-OS/una/stargazers
[issues-shield]: https://img.shields.io/github/issues/AFK-OS/una.svg?style=for-the-badge
[issues-url]: https://github.com/AFK-OS/una/issues
[license-shield]: https://img.shields.io/github/license/AFK-OS/una.svg?style=for-the-badge
[license-url]: https://github.com/AFK-OS/una/blob/master/LICENSE
