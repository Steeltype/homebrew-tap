# Steeltype Homebrew tap

Casks for software published by Steeltype LLC.

```bash
brew install --cask steeltype/tap/crocprobe
```

`crocprobe` installs [CrocProbe](https://crocprobe.com/), visual DevTools for
real phones, for Apple silicon Macs on macOS 13 or later. The cask fetches the
same notarized disk image the download page serves, at the same URL and hash.

Inspection is free and needs no account. Interact, Modify, and agent access
are licensed features; see https://crocprobe.com/pricing.html. Use of the
software is governed by the CrocProbe license agreement at
https://crocprobe.com/eula.txt.

`brew uninstall --zap --cask crocprobe` also removes
`~/Library/Application Support/CrocProbe`, which holds an installed license
file. A license can be reinstalled with its redemption code; see
https://crocprobe.com/support.html.
