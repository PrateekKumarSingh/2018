${S`E`RVERS} = &("{0}{3}{1}{2}"-f'Get','Conte','nt','-') ("{2}{0}{1}{3}"-f'rve','r','se','s.txt')
${mAXcON`c`u`R`RENT} = 50
${pA`UsEt`I`Me} = 1

${j`obS} = @()
foreach(${sER`VeR} in ${sE`R`VeRS}) 
{ 
  while ((.("{2}{0}{1}" -f'et-Jo','b','G') -State ("{2}{1}{0}"-f 'ng','nni','Ru'))."cO`uNT" -ge ${maxc`o`Nc`uRR`eNT}) {.("{3}{0}{2}{1}"-f 't-','p','Slee','Star') -seconds ${p`A`uSetiMe}}
  ${j`OB} = &("{2}{0}{3}{1}"-f'a','-job','st','rt') -argumentList ${sE`R`Ver} -scriptblock {
    ${W`MI}=.("{1}{3}{2}{0}"-f 'ct','Get-WmiO','e','bj') -class ("{4}{2}{3}{0}{5}{1}" -f 'rat','em','2_Op','e','Win3','ingSyst') -computer ${A`RGS}[0]
    ${LB`TimE}=${w`mi}.("{3}{1}{4}{2}{0}" -f'e','nvert','teTim','Co','ToDa').Invoke(${w`Mi}."laST`BOo`TuP`Time")
    [TimeSpan]${Upt`IME}=.("{1}{2}{0}{3}" -f 'm','New-T','i','eSpan') ${lbtI`me} $(&("{0}{1}{2}"-f 'get-da','t','e'))
    "{0} Uptime: {1,3} Days {2,2} Hours {3,2} Minutes {4,2} Seconds" -f ${A`Rgs}[0],${up`T`Ime}."d`AYS",${up`TiME}."hOu`RS",${uPT`I`Me}."mINU`T`ES",${uPt`IME}."s`E`COnDs" 
  }
  ${JO`BS} += ${j`oB}
}

${J`oBS} | .("{2}{0}{1}"-f 'ait-','Job','W') | &("{2}{1}{0}"-f'Null','t-','Ou')
${rES`ul`Ts} = ${j`obS} | &("{1}{0}{2}" -f'ce','Re','ive-Job')
${J`oBS} | .("{0}{1}{2}{3}"-f 'R','em','ove-','Job')

${r`Esu`lTs}
