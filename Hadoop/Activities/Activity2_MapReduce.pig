--Load the input file
inputFile= LOAD 'hdfs:///user/thivya/file.txt' As (line:chararray);
--Tokenize string into words(MAP)
words = FOREACH inputFile GENERATE FLATTEN(TOKENIZE(line)) AS word;
--Group words by word
grpd = GROUP words by word;
--count the number of words(REDUCE)
totalCount = FOREACH grpd GENERATE $0,COUNT($1);
--store the output in HDFS
STORE totalCount into 'hdfs:///user/thivya/pigOutput';

