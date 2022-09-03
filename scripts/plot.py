#! /bin

 
import matplotlib.pyplot as py

generation_time = [0.020,0.326,35.440]
sort_time = [0.023,0.122,12.907]

py.plot(generation_time,sort_time, linestyle='-', marker='.', color='g') 
py.xlabel('Generation time (s)')
py.ylabel('Sort time(s)')

py.savefig('Plot.png')
