for w in wyn*.wav ; do pocketsphinx_continuous -infile $w -jsgf wyn-align.jsgf -dict phonemes.dict -backtrace yes -fsgusefiller no -bestpath no 2>&1 | tee $w-align.txt ; done
