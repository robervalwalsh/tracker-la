#!/bin/csh -f 

if ( $#argv < 1 ) then
   echo "nothing to be done"
   exit
endif

set cfg = $1
set rootdir = `cat $cfg | grep CalibTreeDirectory | awk '{print $3}'`
set anadir = $rootdir/analysis
if ( ! -d $anadir ) then
   mkdir $anadir
endif
ln -s $anadir

set files = `/bin/ls -1 $rootdir/calibTree_*_0.root`

foreach f ( $files )
   set run = `basename $f _0.root | awk -F "_" '{print $2}'`
   set command = "SiStripLAMonitor -c $cfg -r $run" 
   set condor_dir = "$anadir/Condor_SiStripLAMonitor/job_run"$run
   if ( -d $condor_dir ) then
      echo "Skipping run $run. Directory $condor_dir already exists ..." 
      continue
   endif
   mkdir -p $condor_dir
   cp -p $cfg $condor_dir
   cd $condor_dir
   echo "Submitting Lorentz Angle job for run $run ..."
   condor_macro_submit.csh $command
   cd -
end

exit
