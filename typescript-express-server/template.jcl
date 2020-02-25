{{#each user.jobcard}}
{{{this}}}
{{/each}}
//********************************************************************
//NODE EXEC PGM=BPXBATCH
//STDPARM DD *
SH cd {{{user.zosTargetDir}}};
. /z/masserv/node12/nodeenv.sh;
export PORT=11053;
node node_modules/typescript-express-server/dist/index.js
/*
//STDOUT DD SYSOUT=*
//STDERR DD SYSOUT=*
