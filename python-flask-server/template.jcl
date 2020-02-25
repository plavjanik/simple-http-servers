{{#each user.jobcard}}
{{{this}}}
{{/each}}
//********************************************************************
//PYTHON EXEC PGM=BPXBATCH
//STDPARM DD *
SH cd {{{user.zosTargetDir}}};
. /z/masserv/python36/rocket_python_env.sh;
export FLASK_APP=app.py;
export FLASK_ENV=production;
python3 -m flask run --port=11052 --host=0.0.0.0
/*
//STDOUT DD SYSOUT=*
//STDERR DD SYSOUT=*
