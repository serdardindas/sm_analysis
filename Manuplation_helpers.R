Gunhareketi <- function(x) {
  x  %>% mutate(Gunluk= 
                  ifelse(open==low & high==close & high>low, 1, 
                  ifelse(open==low & open<close & close<high,2,
                  ifelse(open>low & open<close & close<high, 3,
                  ifelse(open>low & open<close & close==high,4,
                  ifelse(open==high & open>close & close==low,5,
                  ifelse(open==high & open>close & close>low,6,
                  ifelse(open<high & open>close & close>low, 7,
                  ifelse(open<high & open>close & close==low,8,
                  ifelse(open==close & high>low & open<high & open>low, 9,
                  ifelse(open==close & high>low & open==high, 10, 
                  ifelse(open==close & high>low & open==low, 11,
                  ifelse(open==close & high==low & open==high, 12, "Error1"))))))))))))) }
