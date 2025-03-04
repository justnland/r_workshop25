cats <- data.frame(coat = c("calico", "black", "tabby"), 
                   weight = c(2.1, 5.0, 3.2),
                   likes_catnip = c(1, 0, 1))
cats$weight
cats$coat
cats$weight + 2
cats$weight + cats$coat

typeof(cats$weight)
typeof(3.14)  #double
typeof(1L)  #integer
typeof(1+1i) #complex
typeof(TRUE) #logical
typeof("banana") #character
typeof(cats$coat)
typeof(cats$likes_catnip)
as.logical(cats$likes_catnip)
cats$likes_catnip <- as.logical(cats$likes_catnip)
cats
list(3.14, TRUE, "banana")
typeof(cats)
cats[1,]
cats[1, 2]
cats[,1]
cats$coat
cats[1]
cats[[1]]
cats["coat"]
cats[1, 1]
typeof(cats[1])
typeof(cats$coat)
typeof(cats[[1]])
typeof(cats["coat"])
cats[[1, 3]]
cats[1:3]
cats[1, 1 : 1, 3, 3, 1 : 3, 3]
cats[c]
cats[c(1, 3)]
cats[c(1, 3),]

cats$weight <4
cats[cats$weight < 4,]
