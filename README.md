# Meetlocatie

Onderzoek, meetpunt 11761 op kruising A4 en A5 bij Hoofddorp
http://goo.gl/maps/4Da2M

![image](hoofddorp_meetlocatie_19646.png)
Meetlocatie: `11761`

    "cw":        "mainCarriageway",
    "direction": "negative",
    "distance":  500,
    "id":        11761,
    "location":  19646


![image](hoofddorp_tmc-point_19646.png)
VILD-locatie: `19646`

Positionering van meetlocaties t.o.v. VILD-locaties wordt uitgelegd op pagina 25 van `NDWInterfacebeschrijvingversie2.2.pdf`. 

Eeen aantal van de Velden uit VILD-database worden uitgelegd op pagina 104 van `VILD5.2ATechnischHandboek2008.pdf`.

Alle data uit VILD-database, voor VILD-locatie `19646`:

    {
      "LOC_NR":       19646,
      "LOC_TYPE":     "P1.2",
      "LOC_DES":      "Knooppunt (triangle)",
      "ROADNUMBER":   "A5",
      "ROADNAME":     null,
      "FIRST_NAME":   "De Hoek",
      "SECND_NAME":   "A4",
      "JUNCT_REF":    19646,
      "EXIT_NR":      null,
      "HSTART_POS":   10,
      "HEND_POS":     10,
      "HSTART_NEG":   14,
      "HEND_NEG":     5,
      "HECTO_CHAR":   null,
      "HECTO_DIR":    1,
      "POS_IN":       0,
      "POS_OUT":      1,
      "NEG_IN":       1,
      "NEG_OUT":      1,
      "DIR":          null,
      "AREA_REF":     2433,
      "LIN_REF":      6338,
      "INTER_REF":    9240,
      "POS_OFF":      19648,
      "NEG_OFF":      0,
      "URBAN_CODE":   0,
      "PRES_POS":     1,
      "PRES_NEG":     1,
      "FAR_AWAY":     0,
      "CITY_DISTR":   null,
      "TOP_SIGN":     null,
      "TYPE_CODE":    0,
      "MW_REF":       443,
      "RW_NR":        5,
      "AW_REF":       420
    }

Verklaring van de velden:

    {
      "LOC_NR":       ,
      "LOC_TYPE":     "Type van VILD-punt, in dit geval knooppunt/triangle",
      "LOC_DES":      ,
      "ROADNUMBER":   ,
      "ROADNAME":     ,
      "FIRST_NAME":   ,
      "SECND_NAME":   ,
      "JUNCT_REF":    ,
      "EXIT_NR":      ,
      "HSTART_POS":   ,
      "HEND_POS":     ,
      "HSTART_NEG":   ,
      "HEND_NEG":     ,
      "HECTO_CHAR":   ,
      "HECTO_DIR":    ,
      "POS_IN":       ,
      "POS_OUT":      ,
      "NEG_IN":       ,
      "NEG_OUT":      ,
      "DIR":          ,
      "AREA_REF":     ,
      "LIN_REF":      "ID van lijn in tmc-line",
      "INTER_REF":    ,
      "POS_OFF":      ,
      "NEG_OFF":      ,
      "URBAN_CODE":   ,
      "PRES_POS":     ,
      "PRES_NEG":     ,
      "FAR_AWAY":     ,
      "CITY_DISTR":   ,
      "TOP_SIGN":     ,
      "TYPE_CODE":    ,
      "MW_REF":       ,
      "RW_NR":        ,
      "AW_REF":       
    }


## Van hectometeraanduiding in VILD naar hectometerposities in wegenbestand

    "ROADNUMBER":   "A5",
    "HSTART_POS":   10,
    "HEND_POS":     10,
    "HSTART_NEG":   14,
    "HEND_NEG":     5,

    
We pakken hectopunt 10 op de A5:

    "AFSTAND": 450,
    "WVK_ID": 219355036    
    
    
    
En dan grijpen we wegvak `219355036`:

    "WVK_ID":     219355036,
    "ADMRICHTNG": "H",
    "GME_NAAM":   "Haarlemmermeer"
    
    
