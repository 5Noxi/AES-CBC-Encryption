# Omni-Crypter
Uses AES-256 encryption and advanced obfuscation (base64 reversed, math, mba...) to make it hard to read or reverse your code. It supports compression, ensures unique keys/variables.

**Preview:**
![omnipre](https://github.com/5Noxi/Omni-Crypter/blob/main/NV-Omni1.png?raw=true)
![omnipre2](https://github.com/5Noxi/Omni-Crypter/blob/main/NV-Omni2.png?raw=true)
### Before
![before](https://github.com/5Noxi/Omni-Crypter/blob/main/Before.png?raw=true) 
### After
![after](https://github.com/5Noxi/Omni-Crypter/blob/main/After.png?raw=true)

## Discord Server 
- https://discord.gg/E2ybG4j9jU

__**Features:**__
- Multi-layer **AES-256** encryption
   - Uses `Gzip` and `Deflate` compression
- String and control flow obfuscation
   - **Extremely Randomized** variable names & decrypter stub *(Reversed/shuffled)* 
      - Obfuscates all commands/strings with MBA, then obfuscates them even further with math techniques
      - Each var gets created with a random amount of `16-33` / `32-65 chars from the "Arabic, Chinese, Japanese, Russian, Greek, Korean" alphabets & a preconfigured name
   - **Comment** confusion / randomized comments for additional obfuscation
     - Using the configured char preset - length of `70-80`
   - **Each layer** gets different commands *(kind of alias)*
- Adjustable **encryption iterations**
- **Math-Based** and Encoding Obfuscation
   - Includes techniques like `Base64&Reversed`, `Bitwise XOR`, `Math` and more
   - **Unique key** generation for each encryption layer *(highly randomized)*
- Annoying to reverse

### Used chars:
```ps
ابتثجحخدذرزسشصضطظعغفقكلمنهوي的一是不了人在有我他这中大来上国个说们为子和你地出道也时年得就那要下以生会自着去之过家学对可里后小么心多天而能好没把看起发成只如事行方所然家种事成者部都其些主样理她两高长机当从动同工使点明问力与アイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヲンアイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヲンАаБбВвГгДдЕеЁёЖжЗзИиЙйКкЛлМмНнОоПпРрСсТтУуФфХхЦцЧчШшЩщЪъЫыЬьЭэЮюЯяΑαΒβΓγΔδΕεΖζΗηΘθΙιΚκΛλΜμΝνΞξΟοΠπΡρΣσΤτΥυΦφΧχΨψΩω
```
⠀
### Example of obfuscated `invoke-expression` command:
```ps
([char]((2523 - 2614 - 4746 + 4910))+[char](((-11723 -Band 2744) + (-11723 -Bor 2744) + 5845 + 3212))+[char]((11829 - 7353 + 2004 - 6394))+[char](((-14684 -Band 1130) + (-14684 -Bor 1130) + 5795 + 7838))+[char](((7790 -Band 1401) + (7790 -Bor 1401) - 5316 - 3800))+[char](((-7002 -Band 6060) + (-7002 -Bor 6060) + 3195 - 2184))+[char](((-14009 -Band 471) + (-14009 -Bor 471) + 4103 + 9480))+[char](((-13817 -Band 3144) + (-13817 -Bor 3144) + 4911 + 5831))+[char](((-16107 -Band 2812) + (-16107 -Bor 2812) + 8813 + 4570))+[char](((-4302 -Band 1864) + (-4302 -Bor 1864) + 3535 - 1017))+[char]((10571 - 7774 - 7320 + 4605))+[char]((10896 - 84 - 4290 - 6453))+[char](((-5952 -Band 7714) + (-5952 -Bor 7714) - 556 - 1123))+[char]((6883 - 4942 + 6048 - 7906))+[char](((6261 -Band 7411) + (6261 -Bor 7411) - 9728 - 3871))+[char](((-16021 -Band 9058) + (-16021 -Bor 9058) + 5225 + 1817))+[char](((-9394 -Band 3249) + (-9394 -Bor 3249) + 5744 + 479)))
```

## Usage
`nvi` -> Input

`nvo` -> Output

`. \NV-Omni-Crypter.ps1;nvcrypter -nvi "\Test.ps1" -nvo "\Encrypted.ps1" -Iterations 2`

## Disclaimer
**Don't be a kiddo**, I uploaded the script *open source and for free*, stealing it now would be **unbelieveable** sad. **I'm not responsible for any misuse of this tool!** *(don't encrypt any harmful code with it...)*
