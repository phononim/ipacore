# Copyright (c) systemonia 2023 <systemonia@proton.me>
# Licensed under the BSD-3-Clause license.

## This module provides the actual type definitions. The useful bits.
## Individual IPA letters are provided by an enum, containing a whole load of IPA symbols.
## if their names seem cryptic then thats because I used a sepcial naming system.
## which abbreviates their features into three characters. https://www.alt-usage-english.org/IPA/ascii-ipa.pdf
## 
## Unfortunately that document lacks a lot of new terms, and I have decided thus to use the following new terms:
## Opn (Open), Ner (Near), Crk (Creaky), 
## Lgu (Linguolabial), Apc (Apical), Lmn (Laminal), 
## Mor (More), Lss (Less), Adv (Advanced), 
## Rtc (Retracted), Tng (Tongue), Rot (Root), 
## Rls (Release), Nad (No audible), Rsd (Raised), 
## Lwd (Lowered), Afr (Affricated), Dbl (Double), 
## Art (Articulation), Prm (Primary), Scn (Secondary), 
## Str (Stress), Hlf (Half), Ext (Extra),
## Brk (Break), Mnr (Minor), Mjr (Major),
## Grp (Group), Lnk (Linking), Glb (Global),
## Rse (Rise), Fal (Fall), Ups (Upstep)
## Dsp (Downstep), Epg (Epiglottal), Alp (Alveolo-palatal)
##
## And some terms are not the same one-to-one in that document:
## * Tap is used instead of flp (Flap) (For specific letters!)
## * Plv (Postalveolar) is used instead of pla (Palato-alveolar) 
## * Lbp (Labial-palatal) is used. (Instead of rnd, or other abbreviations.)
## * Cls (Closed) is used. (The original article uses hgh (High) or some other abbreviations)

type
  IPALetter* = enum
    VlsBlbStp, ## Voiceless bilibial Stop
    VcdBlbStp, ## Voiced bilibial Stop
    VlsAlvStp, ## Voiceless alveolar Stop
    VcdAlvStp, ## Voiced alveolar Stop
    VlsRfxStp, ## Voiceless retroflex Stop
    VcdRfxStp, ## Voiced retroflex Stop
    VlsPalStp, ## Voiceless palatal Stop
    VcdPalStp, ## Voiced palatal Stop
    VlsVelStp, ## Voiceless velar Stop
    VcdVelStp, ## Voiced velar Stop
    VlsUvlStp, ## Voiceless uvular Stop
    VcdUvlStp, ## Voiced uvular Stop
    GltStp, ## Glottal Stop
    VcdBlbNas, ## Voiced bilabial nasal
    VcdLbdNas, ## Voiced labiodental nasal
    VcdAlvNas, ## Voiced alveolar nasal
    VcdRfxNas, ## Voiced retroflex nasal
    VcdPalNas, ## Voiced palatal nasal
    VcdVelNas, ## Voiced velar nasal
    VcdUvlNas, ## Voiced uvular nasal
    VcdBlbTrl, ## Voiced bilabial trill
    VcdAlvTrl, ## Voiced alveolar trill
    VcdUvlTrl, ## Voiced uvular trill
    VcdAlvTap, ## Voiced alveolar tap
    VcdRfxTap, ## Voiced retroflex tap
    VlsBlbFrc, ## Voiceless bilabial fricative
    VcdBlbFrc, ## Voiced bilabial fricative
    VlsLbdFrc, ## Voiceless labiodental fricative
    VcdLbdFrc, ## Voiced labiodental fricative
    VlsDntFrc, ## Voiceless dental fricative
    VcdDntFrc, ## Voiced dental fricative
    VlsAlvFrc, ## Voiceless alveolar fricative
    VcdAlvFrc, ## Voiced alveolar fricative
    VlsPlvFrc, ## Voiceless postalveolar fricative
    VcdPlvFrc, ## Voiced postalveolar fricative
    VlsRfxFrc, ## Voiceless retroflex fricative
    VcdRfxFrc, ## Voiced retroflex fricative
    VlsPalFrc, ## Voiceless palatal fricative
    VcdPalFrc, ## Voiced palatal fricative
    VlsVelFrc, ## Voiceless velar fricative
    VcdVelFrc, ## Voiced velar fricative
    VlsUvlFrc, ## Voiceless uvular fricative
    VcdUvlFrc, ## Voiced uvular fricative
    VlsPhrFrc, ## Voiceless pharyngeal fricative 
    VcdPhrFrc, ## Voiced pharyngeal fricative 
    VlsGltFrc, ## Voiceless glottal fricative
    VcdGltFrc, ## Voiced glottal fricative
    VlsAlvLatFrc, ## Voiceless alveolar lateral fricative
    VcdAlvLatFrc, ## Voiced alveolar lateral fricative
    VcdLbdApr, ## Voiced labiodental approximant
    VcdAlvApr, ## Voiced alveolar approximant
    VcdRfxApr, ## Voiced retroflex approximant
    VcdPalApr, ## Voiced palatal approximant
    VcdVelApr, ## Voiced velar approximant
    VcdAlvLatApr, ## Voiced alveolar lateral approximant
    VcdRfxLatApr, ## Voiced retroflex lateral approximant
    VcdPalLatApr, ## Voiced palatal lateral approximant
    VcdVelLatApr, ## Voiced velar lateral approximant
    VcdBlbImp, ## Voiced bilibial implosive
    VcdAlvImp, ## Voiced alveolar implosive
    VcdPalImp, ## Voiced palatal implosive
    VcdVelImp, ## Voiced velar implosive
    VcdUvlImp, ## Voiced uvular implosive
    VlsLbvFrc, ## Voiceless labial-velar fricative
    VcdLbvApr, ## Voiced labial-velar approximant
    VcdLbpApr, ## Voiced labial-palatal approximant
    VlsEpgTrl, ## Voiceless epiglottal trill
    EpgStp, ## Epiglottal Stop
    VcdEpgTrl, ## Voiced epiglottal trill
    VlsPalVelFrc, ## Sj-sound (Voiceless palatal-velar fricative)
    BlbClk, ## Bilabial click
    DntClk, ## Dental click
    AlvClk, ## Alveolar click
    PalClk, ## Palatal click
    AlvLatClk, ## Alveolar lateral click
    VcdAlvLatFlp, ## Voiced alveolar lateral flap
    VlsAlpFrc, ## Voiceless alveolo-palatal fricative
    VcdAlpFrc, ## Voiced alveolo-palatal fricative
    VcdLbdFlp, ## Voiced labiodental flap
    VzdAlvLatApr, ## Velarized alveolar lateral approximant
    ClsFntUnrVwl, ## Close front unrounded vowel
    ClsMidUnrVwl, ## Close-mid front unrounded vowel
    OpnMidFntUnrVwl, ## Open-mid front unrounded vowel
    OpnFntUnrVwl, ## Open front unrounded vowel
    OpnBckUnrVwl, ## Open back unrounded vowel
    OpnMidBckRndVwl, ## Open-mid back rounded vowel
    ClsMidBckRndVwl, ## Close-mid back rounded vowel
    ClsBckRndVwl, ## Close back rounded vowel
    ClsFntRndVwl, ## Close front rounded vowel
    ClsMidFntRndVwl, ## Close-mid front rounded vowel
    OpnMidFntRndVwl, ## Open-mid front rounded vowel
    OpnFntRndVwl, ## Open front rounded vowel
    OpnBckRndVwl, ## Open back rounded vowel
    OpnMidBckUnrVwl, ## Open-mid back unrounded vowel
    ClsMidBckUnrVwl, ## Close-mid back unrounded vowel
    ClsBckUnrVwl, ## Close back unrounded vowel
    ClsCntUnrVwl, ## Close central unrounded vowel
    ClsCntRndVwl, ## Close central rounded vowel
    NerClsNerFntUnrVwl, ## Near-close near-front unrounded vowel
    NerClsNerFntRndVwl, ## Near-close near-front rounded vowel
    NerClsNerBckRndVwl, ## Near-close near-back rounded vowel
    MidCntVwl, ## Mid central vowel
    ClsMidCntRndVwl, ## Close-mid central rounded vowel
    NerOpnCntVwl, ## Near-open central vowel
    NerOpnFntUnrVwl, ## Near-open front unrounded vowel
    OpnMidCntUnrVwl, ## Open-mid central unrounded vowel
    RzdMidCntVwl, ## R-coloured mid central vowel
    OpnMidCntRndVwl, ## Open-mid central rounded vowel
    ClsMidCntUnrVwl, ## Close-mid central unrounded vowel
    Ejc, ## Ejective
    VlsA, ## Voiceless (First type, 402A)
    Vcd, ## Voiced
    Asp, ## Aspirated
    MrmVcd, ## Breathy voiced (Murmured voiced)
    CrkVcd, ## Creaky voiced
    Lgu, ## Linguolabial
    Dnt, ## Dental
    Apc, ## Apical
    Lmn, ## Laminal
    MorRnd, ## More rounded
    LssRnd, ## Less rounded
    Adv, ## Advanced
    Rtc, ## Retracted
    Cnt, ## Centralized
    MidCnt, ## Mid-centralized
    AdvTngRot, ## Advanced tongue root
    RtcTngRot, ## Retracted tongue root
    Rzd, ## Rhoticity
    Lzd, ## Labialized
    Pzd, ## Palatalized
    Vzd, ## Velarized
    Fzd, ## Pharyngealized
    Nzd, ## Nasalized
    NasRls, ## Nasal release
    LatRls, ## Lateral release
    NadRls, ## No audible release
    VzdFzd, ## Velarized or pharyngealized
    Rsd, ## Raised
    Lwd, ## Lowered
    Syl, ## Syllabic
    NonSyl, ## Non-syllabic
    AfrDblArt, ## Affricate or double articulation
    VlsB, ## Voiceless (Second type, real number is 402B but due to technical limitations, 434 is used.)
    PrmStr, ## Primary stress
    ScnStr, ## Secondary stress
    Lng, ## Long
    HlfLng, ## Half-long
    ExtSht, ## Extra-short
    SylBrk, ## Syllable break
    MnrGrp, ## Minor (foot) group
    MjrGrp, ## Major (intonation) group
    Lnk, ## Linking (absence of a break)
    GlbRse, ## Global rise
    GlbFal, ## Global fall
    ExtHgh, ## Extra-high
    Hgh, ## High
    Mid, ## Mid
    Low, ## Low
    ExtLow, ## Extra-low
    Ups, ## Upstep
    Dsp, ## Downstep
    ExtHghB, ## Extra-high
    HghB, ## High
    MidB, ## Mid
    LowB, ## Low
    ExtLowB, ## Extra-low
    Rse, ## Rising
    Fal, ## Falling
    HghRse, ## High-rising
    LowRse, ## Low-rising
    RseFal, ## Rising-falling