# GeneiousSanger
Tutorial to handle Sanger tracks on Geneious (Sequencing)


## Rename the samples

1. consider the scheme `numberofsample_F.ab1` for Forward or `numberofsample_R.ab1` for Reverse
  - (optional) you can use in terminal: `bash filtering.sh` (macos)
    - download the script (filtering.sh) to the .ab1 track directory and press enter (right-click in script and choose "download raw file").
    - check the files inside `Clean` directory

## Download the geneious prime

[Click here](https://manage.geneious.com/free-trial)
>make sure the registering process for free-trial was done

## Inside geneious prime

- Click in menu `File` -> `Import` -> `Files...` _or_ Click in `Add` button and click in `Import Files...`
- Choose `Chromatogram (ab1, among others)`

### Filtering process

- Make a new folder called `QC`, or whatever name you want
- Choose the tracks to cut the ends and click in `Annotate & Predict` menu, then in `Trim Ends...`
  - Max number of filtering tracks is ~200
- Click in `View` menu and `Table columns`, then tick out `At least Q30` and `At least Q40`
- Choose `Remove new trimmed regions from sequences` and change the `At least` option for 150 bp for both 5' and 3'
- Click in `File` and `Save`
- Sort by `Q30` column and drag-and-drop the files below 70% in a new folder called `QC_out` or whatever name you want to give it

### Download the reference 

- In the left side click in `NCBI` and `Nucleotides`
- Search for your reference sequence (e.g. `NG_008929.1`), if you don't know to find it search the [RefSeq NCBI reference site.](https://www.ncbi.nlm.nih.gov/refseq/)
- Drag and drop the reference sequence in `Sample documents` and `Contig Assembly`
- It is ready to use it

### Align and map to reference

- Tick out the tracks you want to analyse inside the `QC` folder with trimmed tracks
- Click in `Tools` menu and `Align/Assemble` then `Map to Reference(s)...`
- Click the `Choose` button to find the downloaded reference at `Contig Assembly` paste (e.g. `NG_008929.1`)
- Choose the `Bowtie` mapper
- Tick `Save assembly report`, `Save in sub-folder` and `Save contigs`
- Use the default parameters and click in `Ok` to run

### Check the aligned and mapped tracks

- Go to the new subfolder and click twice in `Contig`
- Check the aligned tracks and tick out the `Highlight` option
- Zoom in the position of the small black points to check the nucleotide mutation and position
- Register the position as:
  > e.g. NG_008929.1:g.`[position][base changed]``
  > Like NG_008929.1:g.8401G>T
- Check it out the notation is right or not at [Mutalyzer](https://mutalyzer.nl/)
- Evaluate the notated mutation at [Clinvar](https://www.ncbi.nlm.nih.gov/clinvar/)






  
















