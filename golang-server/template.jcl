{{#each user.jobcard}}
{{{this}}}
{{/each}}
//********************************************************************
//NODE EXEC PGM=BPXBATCH
//STDPARM DD *
SH cd {{{user.zosTargetDir}}};
. /z/masserv/go/goenv.sh;
PORT=11054 ./server
/*
//STDOUT DD SYSOUT=*
//STDERR DD SYSOUT=*