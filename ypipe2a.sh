#!/bin/bash

# first job called from the day directory
# creates RPLParallel, Unity, and EDFSplit objects, and
# calls aligning_objects and raycast
sbatch /data/src/PyHipp/rplparallel-slurm.sh

<<<<<<< HEAD
# second set of jobs called from the day direct
# second job - no dependencies, called from the day directory
=======
# second set of jobs called from the day directory
>>>>>>> upstream/main
jid2=$(sbatch /data/src/PyHipp/rse-slurm.sh)

# third set of jobs - depends on rse-slurm.sh, called from the day directory
jid3=$(sbatch --dependency=afterok:${jid2##* } /data/src/PyHipp/rs1a-slurm.sh)
jid4=$(sbatch --dependency=afterok:${jid2##* } /data/src/PyHipp/rs2a-slurm.sh)
jid5=$(sbatch --dependency=afterok:${jid2##* } /data/src/PyHipp/rs3a-slurm.sh)
jid6=$(sbatch --dependency=afterok:${jid2##* } /data/src/PyHipp/rs4a-slurm.sh)

<<<<<<< HEAD
=======
# put dependency for any job that will spawn more jobs here
# sbatch --dependency=afterok:${jid3##* }:${jid4##* }:${jid5##* }:${jid6##* } /data/src/PyHipp/consol_jobs.sh
>>>>>>> upstream/main

