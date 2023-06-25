'''

-.py [input file] [out file] [sample rate] [channels] [samples per channel]

'''
import sys
a=0
f=open(sys.argv[1], mode='rb')
data = f.read()
f.close()
size = len(data)
d=open(sys.argv[2], mode='wb')
samplerate =int(sys.argv[3])
channels = int(sys.argv[4])
samples_per_channel = int(sys.argv[5])
d.write(b"\x04")
d.write(((channels-1)*4).to_bytes(1,byteorder='big', signed=False))
d.write(samplerate.to_bytes(2,byteorder='big', signed=False))
#d.write(a.to_bytes(1,byteorder='big', signed=False))
d.write(samples_per_channel.to_bytes(4,byteorder='big', signed=False))
#d.write(a.to_bytes(1,byteorder='big', signed=False))
d.write((size+8).to_bytes(4,byteorder='big', signed=False))
#d.write(a.to_bytes(1,byteorder='big', signed=False))
d.write(samples_per_channel.to_bytes(4,byteorder='big', signed=False))
d.write(data)
d.flush()
d.close()
print("OK")