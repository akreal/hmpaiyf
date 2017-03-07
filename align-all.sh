for w in hmpaiyf??.wav ; do
	pocketsphinx_continuous \
		-infile $w \
		-jsgf hmpaiyf-align.jsgf \
		-dict phonemes.dict \
		-backtrace yes \
		-fsgusefiller no \
		-bestpath no \
		-wbeam 1e-56 \
		2>&1 | tee $w-align.txt ;
done
