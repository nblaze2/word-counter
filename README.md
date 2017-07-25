## READ ME
* This word counter accepts command-line arguments.
* It reads data from the file system.
* It utilizes hashes as an efficient data structure for counting.

(There are several sample e-books included/used by the code courtesy of [Project Gutenberg][gutenberg] that can be used to test out the word counter.)


Many of the most common words found in books do not have much significance. Words such as *the*, *and*, *of*, and so on appear frequently but do not provide much information about the work they appear in. These are often referred to as `stop words` and are usually ignored when parsing natural text.

Another text file, `stop_words.txt` was used to exclude such words when parsing the given file.

## Sample Usage

Pass both the filename to read and the number of words you want printed out:

```$ ruby word_counter.rb poe_usher.txt 10

'upon' occurs 53 times.
'now' occurs 20 times.
'usher' occurs 19 times.
'long' occurs 19 times.
'yet' occurs 18 times.
'thus' occurs 16 times.
'one' occurs 15 times.
'house' occurs 14 times.
'certain' occurs 12 times.
'character' occurs 12 times.```
