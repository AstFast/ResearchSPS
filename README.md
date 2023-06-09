
# 研究

## 对SPS/SNR容器的一些研究

#### 内容

| 名称                 | 用途           | 依赖/搭配          | 批注      |
| ------------------ | ------------ | -------------- | ------- |
| ea_adpcm-codec.bat | 增加简单的GUI     | EA_ADPCM_codec |         |
| format.txt         | 对文件的解析       |                | CHS为中文版 |
| raw2snr.bat        | 用于给raw增加snr块 | raw2snr.py     |         |
| raw2sps.bat        | 用于给raw增加sps块 | raw2sps.bat    |         |

#### 理解

SPS和SNR不是一种格式，是一种容器

植物大战僵尸中的SPS(SNR同理)是EA-ADPCM-XAS(v1)编码

EA-ADPCM中有许多变种，每种都有区别

解码器在处理部分时不稳定

比如SPS和SNR，SNR只需要把"块"去掉即可用解码器从raw->wav

而SPS似乎不行(别的解码器却可以)

EA-ADPCM-XAS中v0和v1是有区别的(用v0和v1只是方便叙述实际上都是变种)

(编码器似乎不完善)

#### 需要

使用ea_adpcm-codec.bat

您需要将其与以下项目结合使用

[Release 1.1 · CrabJournal/EA-ADPCM-Codec · GitHub](https://github.com/CrabJournal/EA-ADPCM-Codec/releases/tag/1.1)

需要python3环境
