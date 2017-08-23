def read_Freq(filename):
	Tone_Freq = []
	f_in = open(filename)
	for line in f_in:
		if line.startswith("Tone Freq") or line.startswith("Probe Pure Tone Freq"):
			Tone_Freq.append(int(filter(str.isdigit, line)))
	f_in.close()

	f_out = open("Tone_Freq.txt", 'w')
	for i in Tone_Freq:
		freq = ''.join(str(i))
		f_out.write(freq + ' ')
	f_out.close()

