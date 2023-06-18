
# Abstraction not Memory:BERT and the English Article System

This repository contains code and data associated with the paper [Abstraction not Memory:  BERT  and the  English Article System](https://aclanthology.org/2022.naacl-main.67.pdf). 

If you make use of this package, please  [cite]()  our work

## Summary 
Article prediction is a task that has long defied accurate linguistic description. As such, this task is ideally suited to evaluate models on their ability to emulate native-speaker intuition. To this end, we compare the performance of native English speakers and pre-trained models on the task of article prediction set up as a three way choice (a/an, the, zero). Our experiments with BERT show that BERT outperforms humans on this task across all articles. In particular, BERT is far superior to humans at detecting the zero article, possibly because we insert them using rules that the deep neural model can easily pick up. More interestingly, we find that BERT tends to agree more with annotators than with the corpus when inter-annotator agreement is high but switches to agreeing more with the corpus as inter-annotator agreement drops. We contend that this alignment with annotators, despite being trained on the corpus, suggests that **BERT is not memorising article use, but captures a high level generalisation of article use akin to human intuition.**

## Data

A sample of the data used for analysis in the paper is provided below. Since we make use of data from the British National Corpus, we are unable to publish this data in its entirety here. 

Please contact us at **[htm43@bath.ac.uk](mailto:htm43@bath.ac.uk)** for a copy of the data.


| ID | Question | TrueLabel | ModelPrediction | Person1 | Person2 | Person3 | Person4 | Person5 |
|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|
|1|Hun Sen sold out to the Vietnamese and is now selling out to Ø Thai businessmen as well, it says. Only _____ Khmer Rouge will fight to preserve Cambodia for ø Cambodians. It is actively supported by a small part of the population and tacitly tolerated by many more, out of either fear or a simple desire not to be involved in a political battle.|the|the|the|the|null|null|the|
|2|In Paris, its diplomats proved to be the most methodical, hardest working and best co - ordinated of all the Cambodians. _____ Coalition Government of Democratic Kampuchea (CGDK), made up of the Khmer Rouge, the Sihanoukists and the KPNLF, is recognised by the United Nations. It has Ø nine permanent diplomatic missions abroad."|the|the|the|the|the|a|the|
|3|Therefore we cannot return to the politics of 1975 to 1978,’ said the Khmer Rouge leader Khieu Samphan, in Paris. We need _____ liberal economy and a liberal democracy. This is the basis for Ø national unity."|a|a|a|a|a|a|a|


## Data Analysis Scripts

The scripts used for data analysis can be found in the [RScripts](https://github.com/H-TayyarMadabushi/Abstraction-not-Memory-BERT-and-the-English-Article-System-NAACL-2022/blob/main/RScripts/PhiCoef.R) folder. This script requires the following input files. 

Please email **[htm43@bath.ac.uk](mailto:htm43@bath.ac.uk)** for a copy of the following files: 

1. all.csv -- All the data. 
2. 2.csv -- All instances where 2 annotators agreed
3. 3.csv -- All instances where 3 annotators agreed
4. 4.csv -- All instances where 4 annotators agreed
5. tie.csv -- instances where there was a 2-2 tie

NOTE: The 5th annotator is used as a control and is not included in the analysis above. 

This is the data and scripts used to generate tables 2 and 3 in the [paper](https://aclanthology.org/2022.naacl-main.67.pdf).


## Citation 

If you make use of this work, please cite us:

```bibtex
@inproceedings{tayyar-madabushi-etal-2022-abstraction,
    title = "Abstraction not Memory: {BERT} and the {E}nglish Article System",
    author = "Tayyar Madabushi, Harish  and
      Divjak, Dagmar  and
      Milin, Petar",
    booktitle = "Proceedings of the 2022 Conference of the North American Chapter of the Association for Computational Linguistics: Human Language Technologies",
    month = jul,
    year = "2022",
    address = "Seattle, United States",
    publisher = "Association for Computational Linguistics",
    url = "https://aclanthology.org/2022.naacl-main.67",
    doi = "10.18653/v1/2022.naacl-main.67",
    pages = "924--931",
    abstract = "Article prediction is a task that has long defied accurate linguistic description. As such, this task is ideally suited to evaluate models on their ability to emulate native-speaker intuition. To this end, we compare the performance of native English speakers and pre-trained models on the task of article prediction set up as a three way choice (a/an, the, zero). Our experiments with BERT show that BERT outperforms humans on this task across all articles. In particular, BERT is far superior to humans at detecting the zero article, possibly because we insert them using rules that the deep neural model can easily pick up. More interestingly, we find that BERT tends to agree more with annotators than with the corpus when inter-annotator agreement is high but switches to agreeing more with the corpus as inter-annotator agreement drops. We contend that this alignment with annotators, despite being trained on the corpus, suggests that BERT is not memorising article use, but captures a high level generalisation of article use akin to human intuition.",
}
```
