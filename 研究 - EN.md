# Study

## Some Research on SPS/SNR Containers

#### Content

| Name               | Use                           | Dependency/Collocation | Annotations               |
| ------------------ | ----------------------------- | ---------------------- | ------------------------- |
| ea_adpcm-codec.bat | Add a simple GUI              | EA_ADPCM_codec         |                           |
| format.txt         | Parsing files                 |                        | CHS is in Chinese version |
| raw2snr.bat        | Used to add snr blocks to raw | raw2snr.py             |                           |
| raw2sps.bat        | Used to add sps blocks to raw | raw2sps.bat            |                           |

#### Understand

SPS and SNR are not the same format, they are containers
The SPS (SNR) code in Plants vs. Zombies is EA-ADPCM-XAS (v1)
There are many variants in EA-ADPCM, each with its own differences
Decoder is unstable when processing parts
For example, SPS and SNR, SNR only needs to remove the "block" to use the decoder from raw ->wav
And SPS seems to not work (other decoders can)
There is a difference between v0 and v1 in EA-ADPCM-XAS (using v0 and v1 is only convenient for describing, but they are actually variants)
(Encoder seems incomplete)

#### Require

Using EA_ Adpcm codec.bat

You need to combine it with the following items

[Release 1.1 · CrabJournal/EA-ADPCM-Codec · GitHub](https://github.com/CrabJournal/EA-ADPCM-Codec/releases/tag/1.1)

Requires Python 3 environment
