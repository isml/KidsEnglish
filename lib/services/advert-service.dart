import 'package:firebase_admob/firebase_admob.dart';

class AdvertService {
  final String _interstitialAd ="ca-app-pub-8937226909637905/6635420913"; 
  static final AdvertService _instance = AdvertService._internal();
  factory AdvertService() => _instance;
  MobileAdTargetingInfo _targetingInfo;

  AdvertService._internal() {
    _targetingInfo = MobileAdTargetingInfo();
  }
  showBanner() {
    BannerAd banner = BannerAd(
        adUnitId: BannerAd.testAdUnitId,
        size: AdSize.smartBanner,
        targetingInfo: _targetingInfo);
    banner
      ..load()
      ..show();
    banner.dispose();
  }
  showInterstitial(){
    InterstitialAd interstitialAd = InterstitialAd(
      adUnitId:_interstitialAd,
      targetingInfo:_targetingInfo 
    );
    interstitialAd..load()..show();
    interstitialAd.load();
  }
}
