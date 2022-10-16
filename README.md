# MSCI-541-Grading-Automation
Scripts for automated evaluation/grading of UWaterloo Search Engines course

----

## Homework 2:
At first, clone and compile the [trec evaluation](https://github.com/usnistgov/trec_eval) tool and place the results in the root directory, naming the newly added folder to **trec_eval**. Next, we examine the directory structure:

    .
    ├── Files                   # Student submissions
    ├── results                 # Directory to be filled with student result files
    ├── trec_eval               # Mentioned above
    ├── file_extractor.py       # Python file to find each student's final answer and copy it into /results
    ├── Qrel.txt                # Org name is "LA-only.trec8-401.450.minus416-423-437-444-447"
    ├── results_loop.sh         # Bash script to automatically evaluate each answer using Qrel
    └── results.csv             # Final evaluation of submissions
   
Download all student submissions to "Files" folder. Then run file_extractor.py. Lastly, run the bash script to get the final resutls.
