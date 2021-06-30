#ifndef CalibTracker_SiStripLorentzAngle_Utils_h_
#define CalibTracker_SiStripLorentzAngle_Utils_h_ 1

struct TrackSelection {
  float ptmin;
  float ptmax;
  float etamin;
  float etamax;
  float chi2min;
  float chi2max;
  int   hitsmin;
  int   hitsmax;
};


#endif
