# Evangelos Kontopantelis, David Springate, David Reeves, Darren M Ashcroft, Jose M Valderas, Tim Doran, 2023.

import sys, csv, re

codes = [{"code":"10432","system":"gprdproduct"},{"code":"10433","system":"gprdproduct"},{"code":"10723","system":"gprdproduct"},{"code":"10744","system":"gprdproduct"},{"code":"12240","system":"gprdproduct"},{"code":"15365","system":"gprdproduct"},{"code":"15409","system":"gprdproduct"},{"code":"2147","system":"gprdproduct"},{"code":"273","system":"gprdproduct"},{"code":"879","system":"gprdproduct"},{"code":"880","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('asthma-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["asthma-drugs-theophyllinate---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["asthma-drugs-theophyllinate---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["asthma-drugs-theophyllinate---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
