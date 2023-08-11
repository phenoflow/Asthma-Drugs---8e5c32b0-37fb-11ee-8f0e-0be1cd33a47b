# Evangelos Kontopantelis, David Springate, David Reeves, Darren M Ashcroft, Jose M Valderas, Tim Doran, 2023.

import sys, csv, re

codes = [{"code":"13365","system":"gprdproduct"},{"code":"1414","system":"gprdproduct"},{"code":"1422","system":"gprdproduct"},{"code":"14603","system":"gprdproduct"},{"code":"15765","system":"gprdproduct"},{"code":"1711","system":"gprdproduct"},{"code":"1728","system":"gprdproduct"},{"code":"1957","system":"gprdproduct"},{"code":"2158","system":"gprdproduct"},{"code":"25339","system":"gprdproduct"},{"code":"2995","system":"gprdproduct"},{"code":"31082","system":"gprdproduct"},{"code":"3388","system":"gprdproduct"},{"code":"34018","system":"gprdproduct"},{"code":"4100","system":"gprdproduct"},{"code":"4541","system":"gprdproduct"},{"code":"45863","system":"gprdproduct"},{"code":"4647","system":"gprdproduct"},{"code":"510","system":"gprdproduct"},{"code":"5837","system":"gprdproduct"},{"code":"7965","system":"gprdproduct"},{"code":"7972","system":"gprdproduct"},{"code":"8522","system":"gprdproduct"},{"code":"964","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('asthma-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["asthma-drugs-175mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["asthma-drugs-175mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["asthma-drugs-175mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
