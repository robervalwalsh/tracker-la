# tracker-la
Lorentz Angle for the CMS silicon strip tracker

Uses nanoAOD-like calibTrees


## Installation and running
```
cmsrel CMSSW_11_3_0_pre6
cd CMSSW_11_3_0_pre6/src
cmsenv
git cms-addpkg CalibTracker/SiStripLorentzAngle
cd CalibTracker/SiStripLorentzAngle
git clone https://github.com/robervalwalsh/tracker-la.git bin

scram b -j4
hash -r; cd $CMSSW_BASE/src/CalibTracker/SiStripLorentzAngle/bin
LAMonitor -c la_monitor_df.cfg
```

## Main codes files

* `LAMonitor.cc`
* `LAMonitorConfig.h`
* `CalibTreesUtils.h`
* `Utils.h`
* `la_monitor_df.cfg`

Additional directory containing list of runs and their readout modes
* `readout`

## Run2 Legacy samples
* `/eos/cms/store/group/dpg_tracker_strip/comm_tracker/Strip/Calibration/calibrationtree/Cosmics18Legacy/nanotest3/`
