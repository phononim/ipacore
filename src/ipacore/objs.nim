
# For the sake of reducing typing time, I will be shortening the names according to https://www.alt-usage-english.org/IPA/ascii-ipa.pdf
# Except for a couple of differences:
# Stp (Stop) is used instead of Plosive
# Tap is used instead of flp (Flap) (For specific letters!)
# Plv (Postalveolar) is used instead of pla (Palato-alveolar) 
# Lbp (Labial-palatal) is used. (Instead of rnd, or other abbreviations.)
# Epg (Epiglottal) is used. (The original article does not have this feature abbreviation.)
# Alp (Alveolo-palatal) is used. (The original article does not have this feature abbreviation.)
# Cls (Closed) is used. (The original article uses hgh (High))

# New invented abbreviations:
# Opn (Open), Ner (Near), Crk (Creaky), 
# Lgu (Linguolabial), Apc (Apical), Lmn (Laminal), 
# Mor (More), Lss (Less), Adv (Advanced), 
# Rtc (Retracted), Tng (Tongue), Rot (Root), 
# Rls (Release), Nad (No audible), Rsd (Raised), 
# Lwd (Lowered), Afr (Affricated), Dbl (Double), 
# Art (Articulation), Prm (Primary), Scn (Secondary), 
# Str (Stress), Hlf (Half), Ext (Extra),
# Brk (Break), Mnr (Minor), Mjr (Major),
# Grp (Group), Lnk (Linking), Glb (Global),
# Rse (Rise), Fal (Fall), Ups (Upstep)
# Dsp (Downstep)

type
  IPALetter* = enum
    VlsBlbStp = 101, ## Voiceless bilibial Stop
    VcdBlbStp = 102, ## Voiced bilibial Stop
    VlsAlvStp = 103, ## Voiceless alveolar Stop
    VcdAlvStp = 104, ## Voiced alveolar Stop
    VlsRfxStp = 105, ## Voiceless retroflex Stop
    VcdRfxStp = 106, ## Voiced retroflex Stop
    VlsPalStp = 107, ## Voiceless palatal Stop
    VcdPalStp = 108, ## Voiced palatal Stop
    VlsVelStp = 109, ## Voiceless velar Stop
    VcdVelStp = 110, ## Voiced velar Stop
    VlsUvlStp = 111, ## Voiceless uvular Stop
    VcdUvlStp = 112, ## Voiced uvular Stop
    GltStp = 113, ## Glottal Stop
    VcdBlbNas = 114, ## Voiced bilabial nasal
    VcdLbdNas = 115, ## Voiced labiodental nasal
    VcdAlvNas = 116, ## Voiced alveolar nasal
    VcdRfxNas = 117, ## Voiced retroflex nasal
    VcdPalNas = 118, ## Voiced palatal nasal
    VcdVelNas = 119, ## Voiced velar nasal
    VcdUvlNas = 120, ## Voiced uvular nasal
    VcdBlbTrl = 121, ## Voiced bilabial trill
    VcdAlvTrl = 122, ## Voiced alveolar trill
    VcdUvlTrl = 123, ## Voiced uvular trill
    VcdAlvTap = 124, ## Voiced alveolar tap
    VcdRfxTap = 125, ## Voiced retroflex tap
    VlsBlbFrc = 126, ## Voiceless bilabial fricative
    VcdBlbFrc = 127, ## Voiced bilabial fricative
    VlsLbdFrc = 128, ## Voiceless labiodental fricative
    VcdLbdFrc = 129, ## Voiced labiodental fricative
    VlsDntFrc = 130, ## Voiceless dental fricative
    VcdDntFrc = 131, ## Voiced dental fricative
    VlsAlvFrc = 132, ## Voiceless alveolar fricative
    VcdAlvFrc = 133, ## Voiced alveolar fricative
    VlsPlvFrc = 134, ## Voiceless postalveolar fricative
    VcdPlvFrc = 135, ## Voiced postalveolar fricative
    VlsRfxFrc = 136, ## Voiceless retroflex fricative
    VcdRfxFrc = 137, ## Voiced retroflex fricative
    VlsPalFrc = 138, ## Voiceless palatal fricative
    VcdPalFrc = 139, ## Voiced palatal fricative
    VlsVelFrc = 140, ## Voiceless velar fricative
    VcdVelFrc = 141, ## Voiced velar fricative
    VlsUvlFrc = 142, ## Voiceless uvular fricative
    VcdUvlFrc = 143, ## Voiced uvular fricative
    VlsPhrFrc = 144, ## Voiceless pharyngeal fricative 
    VcdPhrFrc = 145, ## Voiced pharyngeal fricative 
    VlsGltFrc = 146, ## Voiceless glottal fricative
    VcdGltFrc = 147, ## Voiced glottal fricative
    VlsAlvLatFrc = 148, ## Voiceless alveolar lateral fricative
    VcdAlvLatFrc = 149, ## Voiced alveolar lateral fricative
    VcdLbdApr = 150, ## Voiced labiodental approximant
    VcdAlvApr = 151, ## Voiced alveolar approximant
    VcdRfxApr = 152, ## Voiced retroflex approximant
    VcdPalApr = 153, ## Voiced palatal approximant
    VcdVelApr = 154, ## Voiced velar approximant
    VcdAlvLatApr = 155, ## Voiced alveolar lateral approximant
    VcdRfxLatApr = 156, ## Voiced retroflex lateral approximant
    VcdPalLatApr = 157, ## Voiced palatal lateral approximant
    VcdVelLatApr = 158, ## Voiced velar lateral approximant
    VcdBlbImp = 160, ## Voiced bilibial implosive
    VcdAlvImp = 162, ## Voiced alveolar implosive
    VcdPalImp = 164, ## Voiced palatal implosive
    VcdVelImp = 166, ## Voiced velar implosive
    VcdUvlImp = 168, ## Voiced uvular implosive
    VlsLbvFrc = 169, ## Voiceless labial-velar fricative
    VcdLbvApr = 170, ## Voiced labial-velar approximant
    VcdLbpApr = 171, ## Voiced labial-palatal approximant
    VlsEpgTrl = 172, ## Voiceless epiglottal trill
    EpgStp = 173, ## Epiglottal Stop
    VcdEpgTrl = 174, ## Voiced epiglottal trill
    VlsPalVelFrc = 175, ## Sj-sound (Voiceless palatal-velar fricative)
    BlbClk = 176, ## Bilabial click
    DntClk = 177, ## Dental click
    AlvClk = 178, ## Alveolar click
    PalClk = 179, ## Palatal click
    AlvLatClk = 180, ## Alveolar lateral click
    VcdAlvLatFlp = 181, ## Voiced alveolar lateral flap
    VlsAlpFrc = 182, ## Voiceless alveolo-palatal fricative
    VcdAlpFrc = 183, ## Voiced alveolo-palatal fricative
    VcdLbdFlp = 184, ## Voiced labiodental flap
    VzdAlvLatApr = 209, ## Velarized alveolar lateral approximant
    ClsFntUnrVwl = 301, ## Close front unrounded vowel
    ClsMidUnrVwl = 302, ## Close-mid front unrounded vowel
    OpnMidFntUnrVwl = 303, ## Open-mid front unrounded vowel
    OpnFntUnrVwl = 304, ## Open front unrounded vowel
    OpnBckUnrVwl = 305, ## Open back unrounded vowel
    OpnMidBckRndVwl = 306, ## Open-mid back rounded vowel
    ClsMidBckRndVwl = 307, ## Close-mid back rounded vowel
    ClsBckRndVwl = 308, ## Close back rounded vowel
    ClsFntRndVwl = 309, ## Close front rounded vowel
    ClsMidFntRndVwl = 310, ## Close-mid front rounded vowel
    OpnMidFntRndVwl = 311, ## Open-mid front rounded vowel
    OpnFntRndVwl = 312, ## Open front rounded vowel
    OpnBckRndVwl = 313, ## Open back rounded vowel
    OpnMidBckUnrVwl = 314, ## Open-mid back unrounded vowel
    ClsMidBckUnrVwl = 315, ## Close-mid back unrounded vowel
    ClsBckUnrVwl = 316, ## Close back unrounded vowel
    ClsCntUnrVwl = 317, ## Close central unrounded vowel
    ClsCntRndVwl = 318, ## Close central rounded vowel
    NerClsNerFntUnrVwl = 319, ## Near-close near-front unrounded vowel
    NerClsNerFntRndVwl = 320, ## Near-close near-front rounded vowel
    NerClsNerBckRndVwl = 321, ## Near-close near-back rounded vowel
    MidCntVwl = 322, ## Mid central vowel
    ClsMidCntRndVwl = 323, ## Close-mid central rounded vowel
    NerOpnCntVwl = 324, ## Near-open central vowel
    NerOpnFntUnrVwl = 325, ## Near-open front unrounded vowel
    OpnMidCntUnrVwl = 326, ## Open-mid central unrounded vowel
    RzdMidCntVwl = 327, ## R-coloured mid central vowel
    OpnMidCntRndVwl = 395, ## Open-mid central rounded vowel
    ClsMidCntUnrVwl = 397, ## Close-mid central unrounded vowel
    Ejc = 401, ## Ejective
    VlsA = 402, ## Voiceless (First type, 402A)
    Vcd = 403, ## Voiced
    Asp = 404, ## Aspirated
    MrmVcd = 405, ## Breathy voiced (Murmured voiced)
    CrkVcd = 406, ## Creaky voiced
    Lgu = 407, ## Linguolabial
    Dnt = 408, ## Dental
    Apc = 409, ## Apical
    Lmn = 410, ## Laminal
    MorRnd = 411, ## More rounded
    LssRnd = 412, ## Less rounded
    Adv = 413, ## Advanced
    Rtc = 414, ## Retracted
    Cnt = 415, ## Centralized
    MidCnt = 416, ## Mid-centralized
    AdvTngRot = 417, ## Advanced tongue root
    RtcTngRot = 418, ## Retracted tongue root
    Rzd = 419, ## Rhoticity
    Lzd = 420, ## Labialized
    Pzd = 421, ## Palatalized
    Vzd = 422, ## Velarized
    Fzd = 423, ## Pharyngealized
    Nzd = 424, ## Nasalized
    NasRls = 425, ## Nasal release
    LatRls = 426, ## Lateral release
    NadRls = 427, ## No audible release
    VzdFzd = 428, ## Velarized or pharyngealized
    Rsd = 429, ## Raised
    Lwd = 430, ## Lowered
    Syl = 431, ## Syllabic
    NonSyl = 432, ## Non-syllabic
    AfrDblArt = 433, ## Affricate or double articulation
    VlsB = 434, ## Voiceless (Second type, real number is 402B but due to technical limitations, 434 is used.)
    PrmStr = 501, ## Primary stress
    ScnStr = 502, ## Secondary stress
    Lng = 503, ## Long
    HlfLng = 504, ## Half-long
    ExtSht = 505, ## Extra-short
    SylBrk = 506, ## Syllable break
    MnrGrp = 507, ## Minor (foot) group
    MjrGrp = 508, ## Major (intonation) group
    Lnk = 509, ## Linking (absence of a break)
    GlbRse = 510, ## Global rise
    GlbFal = 511, ## Global fall
    ExtHgh = 512, ## Extra-high
    Hgh = 513, ## High
    Mid = 514, ## Mid
    Low = 515, ## Low
    ExtLow = 516, ## Extra-low
    Ups = 517, ## Upstep
    Dsp = 518, ## Downstep
    ExtHghB = 519, ## Extra-high
    HghB = 520, ## High
    MidB = 521, ## Mid
    LowB = 522, ## Low
    ExtLowB = 523, ## Extra-low
    Rse = 524, ## Rising
    Fal = 525, ## Falling
    HghRse = 526, ## High-rising
    LowRse = 527, ## Low-rising
    RseFal = 528, ## Rising-falling