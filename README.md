# Epoch_Extraction
Comparison of Epoch Extraction Methods

## FILE STRUCTURE :

- SSP_PROJECT_EPOCH_EXTRACTION

  - DYPSA
  - LP ERROR
  - MLED
  - Results
  - wav
  - ZFF
  - ZP ZFR

- The folders are named after the method of epoch extractions that are implemented in the files that they contain.
- `DYPSA` and `ZP ZFR` contain matlab codes for epoch extraction and corresponding results.
- The rest of the folders contain '.ipynb' files that contain the outputs of epoch extraction on a specific frame.

### INPUT :

- Folder `wav` contains the 'arctic_b0539.wav' which is a stereo speech signal that contains the main speech and its corresponding EGG.

### RESULTS :

- `Results` folder contains the images/results obtained while running epoch extraction on two additional frames other than our main frame of speech used in the presentation and '.ipynb' files.

### HOW TO RUN :

- For matlab codes run `'epoch.m'` after giving input frame desired.
- For ipynb files, run individual cells after choosing desired voiced frame.

#### The 'presentation.pdf' file summarises our project and showcases results.
