{{#each user.jobcard}}
{{{this}}}
{{/each}}
//********************************************************************
//GO EXEC PGM=BPXBATCH
// SET HOME='{{{user.zosTargetDir}}}'
//STDPARM DD *
SH /bin/sh {{{user.zosTargetDir}}}/run.sh
//STDOUT DD PATH='&HOME/server.log',
//  PATHOPTS=(OWRONLY,OCREAT,OTRUNC),PATHMODE=SIRWXU
