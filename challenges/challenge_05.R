# Challenge 05 - "Fahrenheit to Celsius"
# 2 Points

# Challenge Description:
# There are two widespread systems of measuring temperature - Celsius and Fahrenheit. 
# First is quite popular in Europe and second is well in use in United States for example.
# By Celsius scale water freezes at 0 degrees and boils at 100 degrees. 
# By Fahrenheit water freezes at 32 degrees and boils at 212 degrees. 
# You may learn more from wikipedia on Fahrenheit. Use these two points for conversion of other temperatures.
# You are to write program to convert degrees of Fahrenheit to Celsius.

# Input Data (data/input_data_05.txt): 
# 508 378 203 595 261 256 347 449 240 237 369 519 522 63 54 118 408 43 
# 162 324 173 380 59 323 360 580 513 33 384 123 544 292 469 147 286 130 
# 372 32 547

# Your Code Here:
read_tsv("data/input_data_05.txt",col_names = "f") %>% 
  mutate(C = round((f - 32) * (5/9),2)) %>% {.$C}




# Answer:
# 264.44  192.22   95.00  312.78  127.22  124.44  175.00 231.67 115.56 113.89 187.22 270.56 272.22  17.22  12.22  47.78 208.89
#  6.11    72.22  162.22   78.33  193.33   15.00  161.67 182.22 304.44 267.22   0.56 195.56  50.56 284.44 144.44 242.78  63.89
#  141.11  54.44  188.89    0.00  286.11