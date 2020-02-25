//PLAPE03Z JOB 129300000,'ZOWE API',MSGCLASS=A,CLASS=A,
//  MSGLEVEL=(1,1),REGION=0M
/*JOBPARM SYSAFF=*
//********************************************************************
//PYTHON EXEC PGM=BPXBATCH
//STDPARM DD *
SH cd /a/plape03/simple-http-servers/typescript-express;
. /z/masserv/node12/nodeenv.sh;
export PORT=11053;
node node_modules/typescript-express-server/dist/index.js
/*
//STDOUT DD SYSOUT=*
//STDERR DD SYSOUT=*
