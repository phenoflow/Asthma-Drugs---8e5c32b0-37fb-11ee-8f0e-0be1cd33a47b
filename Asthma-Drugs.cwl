cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  asthma-drugs-80microgram---primary:
    run: asthma-drugs-80microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  asthma-drugs-200mg---primary:
    run: asthma-drugs-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: asthma-drugs-80microgram---primary/output
  asthma-drugs-nuelin---primary:
    run: asthma-drugs-nuelin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: asthma-drugs-200mg---primary/output
  asthma-drugs-aerocrom---primary:
    run: asthma-drugs-aerocrom---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: asthma-drugs-nuelin---primary/output
  asthma-drugs-tablet---primary:
    run: asthma-drugs-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: asthma-drugs-aerocrom---primary/output
  asthma-drugs-theophyllinate---primary:
    run: asthma-drugs-theophyllinate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: asthma-drugs-tablet---primary/output
  asthma-drugs-250mg---primary:
    run: asthma-drugs-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: asthma-drugs-theophyllinate---primary/output
  asthma-drugs-syncroner---primary:
    run: asthma-drugs-syncroner---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: asthma-drugs-250mg---primary/output
  asthma-drugs-zaditen---primary:
    run: asthma-drugs-zaditen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: asthma-drugs-syncroner---primary/output
  asthma-drugs-ketotifen---primary:
    run: asthma-drugs-ketotifen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: asthma-drugs-zaditen---primary/output
  asthma-drugs-biophylline---primary:
    run: asthma-drugs-biophylline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: asthma-drugs-ketotifen---primary/output
  asthma-drugs-625mg---primary:
    run: asthma-drugs-625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: asthma-drugs-biophylline---primary/output
  asthma-drugs-12mcg---primary:
    run: asthma-drugs-12mcg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: asthma-drugs-625mg---primary/output
  asthma-drugs-cyclocap---primary:
    run: asthma-drugs-cyclocap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: asthma-drugs-12mcg---primary/output
  asthma-drugs-100mcg---primary:
    run: asthma-drugs-100mcg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: asthma-drugs-cyclocap---primary/output
  asthma-drugs-nebuliser---primary:
    run: asthma-drugs-nebuliser---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: asthma-drugs-100mcg---primary/output
  asthma-drugs-40mcg---primary:
    run: asthma-drugs-40mcg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: asthma-drugs-nebuliser---primary/output
  asthma-drugs-120mg---primary:
    run: asthma-drugs-120mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: asthma-drugs-40mcg---primary/output
  asthma-drugs-spray---primary:
    run: asthma-drugs-spray---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: asthma-drugs-120mg---primary/output
  asthma-drugs-nedocromil---primary:
    run: asthma-drugs-nedocromil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: asthma-drugs-spray---primary/output
  asthma-drugs-175mg---primary:
    run: asthma-drugs-175mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: asthma-drugs-nedocromil---primary/output
  asthma-drugs-salbutamol---primary:
    run: asthma-drugs-salbutamol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: asthma-drugs-175mg---primary/output
  asthma-drugs-025mg---primary:
    run: asthma-drugs-025mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: asthma-drugs-salbutamol---primary/output
  asthma-drugs-aminophylline---primary:
    run: asthma-drugs-aminophylline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: asthma-drugs-025mg---primary/output
  asthma-drugs-hydrobromide---primary:
    run: asthma-drugs-hydrobromide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: asthma-drugs-aminophylline---primary/output
  asthma-drugs-expectorant---primary:
    run: asthma-drugs-expectorant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: asthma-drugs-hydrobromide---primary/output
  asthma-drugs-nebule---primary:
    run: asthma-drugs-nebule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: asthma-drugs-expectorant---primary/output
  salbuvent-asthma-drugs---primary:
    run: salbuvent-asthma-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: asthma-drugs-nebule---primary/output
  asthma-drugs-ventide---primary:
    run: asthma-drugs-ventide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: salbuvent-asthma-drugs---primary/output
  asthma-drugs-95microgram---primary:
    run: asthma-drugs-95microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: asthma-drugs-ventide---primary/output
  intal-asthma-drugs---primary:
    run: intal-asthma-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: asthma-drugs-95microgram---primary/output
  asthma-drugs-ventmax---primary:
    run: asthma-drugs-ventmax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: intal-asthma-drugs---primary/output
  monovent-asthma-drugs---primary:
    run: monovent-asthma-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: asthma-drugs-ventmax---primary/output
  asthma-drugs-400mg---primary:
    run: asthma-drugs-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: monovent-asthma-drugs---primary/output
  asthma-drugs-volmax---primary:
    run: asthma-drugs-volmax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: asthma-drugs-400mg---primary/output
  asthma-drugs-500mg---primary:
    run: asthma-drugs-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: asthma-drugs-volmax---primary/output
  asthma-drugs-20mcg---primary:
    run: asthma-drugs-20mcg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: asthma-drugs-500mg---primary/output
  asthma-drugs-bricanyl---primary:
    run: asthma-drugs-bricanyl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: asthma-drugs-20mcg---primary/output
  asthma-drugs-300mg---primary:
    run: asthma-drugs-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: asthma-drugs-bricanyl---primary/output
  asthma-drugs-spacer---primary:
    run: asthma-drugs-spacer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: asthma-drugs-300mg---primary/output
  asthma-drugs-tilade---primary:
    run: asthma-drugs-tilade---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: asthma-drugs-spacer---primary/output
  asthma-drugs-airomir---primary:
    run: asthma-drugs-airomir---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: asthma-drugs-tilade---primary/output
  asthma-drugs-compt---primary:
    run: asthma-drugs-compt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: asthma-drugs-airomir---primary/output
  asthma-drugs-canister---primary:
    run: asthma-drugs-canister---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: asthma-drugs-compt---primary/output
  asthma-drugs-350mg---primary:
    run: asthma-drugs-350mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: asthma-drugs-canister---primary/output
  tedral-asthma-drugs---primary:
    run: tedral-asthma-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: asthma-drugs-350mg---primary/output
  duovent-asthma-drugs---primary:
    run: duovent-asthma-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: tedral-asthma-drugs---primary/output
  asthma-drugs-hillcross---primary:
    run: asthma-drugs-hillcross---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: duovent-asthma-drugs---primary/output
  asthma-drugs-diproprionate---primary:
    run: asthma-drugs-diproprionate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: asthma-drugs-hillcross---primary/output
  asthma-drugs---primary:
    run: asthma-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: asthma-drugs-diproprionate---primary/output
  combivent-asthma-drugs---primary:
    run: combivent-asthma-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: asthma-drugs---primary/output
  asthma-drugs-diskhaler---primary:
    run: asthma-drugs-diskhaler---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: combivent-asthma-drugs---primary/output
  asthma-drugs-pharm---primary:
    run: asthma-drugs-pharm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: asthma-drugs-diskhaler---primary/output
  asthma-drugs-cromoglicate---primary:
    run: asthma-drugs-cromoglicate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: asthma-drugs-pharm---primary/output
  asthma-drugs-respule---primary:
    run: asthma-drugs-respule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: asthma-drugs-cromoglicate---primary/output
  asthma-drugs-theodur---primary:
    run: asthma-drugs-theodur---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: asthma-drugs-respule---primary/output
  asthma-drugs-salbulin---primary:
    run: asthma-drugs-salbulin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: asthma-drugs-theodur---primary/output
  asthma-drugs-respirator---primary:
    run: asthma-drugs-respirator---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: asthma-drugs-salbulin---primary/output
  asthma-drugs-celltech---primary:
    run: asthma-drugs-celltech---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: asthma-drugs-respirator---primary/output
  asthma-drugs-seretide---primary:
    run: asthma-drugs-seretide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: asthma-drugs-celltech---primary/output
  asthma-drugs-225mg---primary:
    run: asthma-drugs-225mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: asthma-drugs-seretide---primary/output
  asthma-drugs-ventolin---primary:
    run: asthma-drugs-ventolin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: asthma-drugs-225mg---primary/output
  asthma-drugs-elixir---primary:
    run: asthma-drugs-elixir---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: asthma-drugs-ventolin---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: asthma-drugs-elixir---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
