# Challenge 03 - "Sums of Pairs"
# 1 Point + 2 Bonus Point

# Challenge Description:
# Now we are given several pairs of values we want to calculate the sum for each pair.

# Bonus:
# Handle the pairs as strings explicitly (i.e. do not read the pairs into a dataframe, 
# but read the pairs in as a string and handle appropriatley)

# Input Data contain pairs themselves - one pair at each line.

# Input Data (data/input_data_03.txt):
# 276235 745746
# 938006 54077
# 133493 701164
# 986771 847112
# 503300 439985
# 995004 731815
# 955237 43824
# 128892 970329
# 184215 41148
# 836202 594678
# 697906 810818

# Your Code Here:
library(tidyr)
library(readr)
read_tsv("data/input_data_03.txt",col_names = F) %>% 
  separate(X1, into = c("X2","X3")) %>% 
  mutate(X2 = parse_integer(X2),
         X3 = parse_integer(X3),
         sum = X2 + X3)

# Bonus
string <- c(276235, 745746,
            938006, 54077,
            133493, 701164,
            986771, 847112,
            503300, 439985,
            995004, 731815,
            955237, 43824,
            128892, 970329,
            184215, 41148,
            836202, 594678,
            697906, 810818)

for (i in 1:length(string)) {
  
  if (!(i %% 2 == 0)) {
    
    print(string[i] + string[i + 1])
    
  }
  
}

# Answer: 1021981
        # 992083
        # 834657
        # 1833883
        # 943285
        # 1726819
        # 999061
        # 1099221
        # 225363
        # 1430880
        # 1508724
