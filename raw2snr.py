'''

-.py -en [input file] [out file] [sample rate] [channels] [samples per channel]

'''
import sys
f=open(sys.argv[2], mode='rb')
data = f.read()
f.close()
size = len(data)
print(size)
d=open(sys.argv[3], mode='wb')
samplerate =int(sys.argv[4])
channels = int(sys.argv[5])
samples_per_channel = int(sys.argv[6])
"""
if (sys.argv[3][0:] == "en"):
"""
#d.write(b"\x48\x00\x00\x0C")
d.write(b"\x04")
d.write(((channels-1)*4).to_bytes(1,byteorder='big', signed=False))
d.write(samplerate.to_bytes(2,byteorder='big', signed=False))
d.write(b"\x00")
d.write(samples_per_channel.to_bytes(3,byteorder='big', signed=False))
d.write(b"\x00")
d.write(samplerate.to_bytes(2,byteorder='big', signed=False))
d.write(data)
d.flush()
d.close()
print("OK")