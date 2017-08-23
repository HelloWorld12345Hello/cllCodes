
# coding: utf-8

# In[41]:

def read_Freq(pathway, filename):
    import scipy.io as sio
    
    Tone_Freq = []
    f_in = open(os.path.join(pathway, filename))
    for line in f_in:
        if line.startswith("Tone Freq") or line.startswith("Probe Pure Tone Freq"):
            Tone_Freq.append(int(filter(str.isdigit, line)))
    f_in.close()

    filename_out = os.path.join(pathway, filename.strip('.beh')+"_Tone_Freq.mat")
    sio.savemat(filename_out, {"Tone_Freq": Tone_Freq})
    # sio.savemat(filename_out, {filename[:-4]+"_Tone_Freq": Tone_Freq})
#     f_out = open(os.path.join(pathway, filename[:-4]+"_Tone_Freq.txt"), 'w')
#     for i in Tone_Freq:
#         freq = ''.join(str(i))
#         f_out.write(freq + ' ')
#     f_out.close()

# In[42]:

def mass_read_Freq(Path):
    
     
    filenames = os.listdir(Path)
    for filename in filenames:
        if filename.endswith(".beh"):
            read_Freq(Path, filename)


# In[36]:

import os
import sys
Path = sys.argv[1]
mass_read_Freq(Path)





    
    
    
    


# In[ ]:



