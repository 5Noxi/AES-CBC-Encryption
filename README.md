# AES 256-Bit CBC Encryption - Combined With Further Obfuscation

PowerShell encryption using  AES CBC (ECB insecure, CFB/OFB obsolete) and further obfuscation to make it hard to reverse your code. Based on [xencrypt](https://github.com/the-xentropy/xencrypt), but no longer comparable, as everything has been revised. `Input File` is mandatory, if the `Output File` path isn't set, it'll use the current file name and adds `NV-`. Default iteration is `2`, increasing it too much can end up in errors (you should test whether it still starts normally, if not, run the encryption again). A combination with <#1312093573730140252> is possible (before).

- `256` bit encryption key / `128` bit block size 
   - `Gzip` and `Deflate` compression
   - Cipher block chaining mode
   - Random padding mode (not `None`)
- Randomized variable names
   - Each variable gets created with a random amount of `16-32` characters from the "Arabic, Chinese, Japanese, Russian, Greek, Korean" alphabets & a preconfigured name
- Randomized comments for additional confusion
   - Using a configured character preset - length of `70-80`
- Many parts of the decryption stub are reversed and encoded
- Adjustable iterations (default is `2`)
- Different character obfuscation (last layer only)

`Detailed Logging` - Displays the padding modes, compression types and found patterns (character obfuscation)

`Add Dead Branches` - Adds dead `if` blocks (amount can be changed with `$insc`)

 ## Discord Server 
- https://discord.gg/E2ybG4j9jU
