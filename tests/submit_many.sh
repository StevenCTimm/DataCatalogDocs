# submission tests
source tarme.sh  # make the tar file up-to-date
# run a test with more jobs than files to deliver
python -m submit_dd_jobs --debug=True --dataset=schellma:RandomRecoFiles3 --query_limit=50 --query_skip=500\
 -c  eventdump.fcl --njobs=50 -n 2 --load_limit=1 --appFamily=LArSoft --appName=eventdump --appVersion=${DUNESW_VERSION} --blacklist="BNL"
