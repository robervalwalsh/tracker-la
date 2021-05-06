# tracker-la
Lorentz Angle for the CMS silicon strip tracker

In your CMSSW work area
```
git cms-addpkg CalibTracker/SiStripLorentzAngle
git clone https://github.com/robervalwalsh/tracker-la.git bin

scram b -j4
rehash; cd CalibTracker/SiStripLorentzAngle/test
SiStripLAMonitor -c la_monitor.cfg
```

See la_monitor.cfg for an example of a configuration file
