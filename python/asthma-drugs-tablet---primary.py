# Evangelos Kontopantelis, David Springate, David Reeves, Darren M Ashcroft, Jose M Valderas, Tim Doran, 2023.

import sys, csv, re

codes = [{"code":"10407","system":"gprdproduct"},{"code":"10458","system":"gprdproduct"},{"code":"12042","system":"gprdproduct"},{"code":"12274","system":"gprdproduct"},{"code":"12699","system":"gprdproduct"},{"code":"13529","system":"gprdproduct"},{"code":"1423","system":"gprdproduct"},{"code":"14527","system":"gprdproduct"},{"code":"14739","system":"gprdproduct"},{"code":"16994","system":"gprdproduct"},{"code":"17002","system":"gprdproduct"},{"code":"17140","system":"gprdproduct"},{"code":"18288","system":"gprdproduct"},{"code":"1832","system":"gprdproduct"},{"code":"1833","system":"gprdproduct"},{"code":"18622","system":"gprdproduct"},{"code":"20838","system":"gprdproduct"},{"code":"21769","system":"gprdproduct"},{"code":"23572","system":"gprdproduct"},{"code":"24023","system":"gprdproduct"},{"code":"24418","system":"gprdproduct"},{"code":"2609","system":"gprdproduct"},{"code":"26873","system":"gprdproduct"},{"code":"27249","system":"gprdproduct"},{"code":"2869","system":"gprdproduct"},{"code":"29267","system":"gprdproduct"},{"code":"29273","system":"gprdproduct"},{"code":"30596","system":"gprdproduct"},{"code":"32102","system":"gprdproduct"},{"code":"3254","system":"gprdproduct"},{"code":"32893","system":"gprdproduct"},{"code":"3374","system":"gprdproduct"},{"code":"34618","system":"gprdproduct"},{"code":"3787","system":"gprdproduct"},{"code":"3994","system":"gprdproduct"},{"code":"4171","system":"gprdproduct"},{"code":"42497","system":"gprdproduct"},{"code":"4514","system":"gprdproduct"},{"code":"4591","system":"gprdproduct"},{"code":"4592","system":"gprdproduct"},{"code":"4593","system":"gprdproduct"},{"code":"5261","system":"gprdproduct"},{"code":"555","system":"gprdproduct"},{"code":"590","system":"gprdproduct"},{"code":"5941","system":"gprdproduct"},{"code":"6988","system":"gprdproduct"},{"code":"7192","system":"gprdproduct"},{"code":"7732","system":"gprdproduct"},{"code":"7733","system":"gprdproduct"},{"code":"7832","system":"gprdproduct"},{"code":"7841","system":"gprdproduct"},{"code":"8056","system":"gprdproduct"},{"code":"8057","system":"gprdproduct"},{"code":"8806","system":"gprdproduct"},{"code":"881","system":"gprdproduct"},{"code":"8955","system":"gprdproduct"},{"code":"9092","system":"gprdproduct"},{"code":"987","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('asthma-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["asthma-drugs-tablet---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["asthma-drugs-tablet---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["asthma-drugs-tablet---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
