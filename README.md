# ipacore

This library provides basic type definitions and conversion tables for the International Phonetic Alphabet.

## Why?

If you are developing an application that needs the IPA programmatically, then this library might be useful.

## How complex is this?

Well, we have to represent more than 170 symbols, and provide about 2 or 3 different encodings of each symbol.
Complex is an understatement when describing this, and unfortunately there is no other easy way.

In this library, I have tried to favor speeding up compilation times. So I minimized the use of macros and templates.
This has truly been a pain to write.

Be warned that this library is also quite low-level. You, yourself, have to figure out how exactly you want
ipacore to be used in your program.

Good luck, you'll need it.