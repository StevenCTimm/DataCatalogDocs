# submission tests
source tarme.sh  # make the tar file up-to-date
# run a test with more jobs than files to deliver
python -m submit_dd_jobs --debug=True --dataset=schellma:FirstPhysicsFile1  --query_limit=100 --query_skip=100\
 -c  eventdump.fcl --njobs=40 -n 1 --load_limit=3 --appFamily=LArSoft --appName=eventdump --appVersion=${DUNESW_VERSION} #--blacklist="US_BNL"
