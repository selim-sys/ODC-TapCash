abstract class AppStates{}

class AppInitialState extends AppStates{}

class AppLoadingState extends AppStates{}

class AppErrorState extends AppStates{}

class AppSuccessState extends AppStates{}


class CheckBiometricsState extends AppStates
{

}

class GetAvailableBiometricState extends AppStates
{

}


class AuthenticateLoadingState extends AppStates
{

}

class AuthenticateSuccessState extends AppStates
{

}

class AuthenticateFailState extends AppStates
{

}

class ChangeBottomNavBarState extends AppStates{}

class QRScanLoadingState extends AppStates{}

class QRScanErrorState extends AppStates{}


class QRScanSuccessState extends AppStates{}

class GenerateCardState extends AppStates{}

class ChangeLabelColorState extends AppStates{}


class DashboardLoadingState extends AppStates{}

class DashboardErrorState extends AppStates
{
  final String error;

  DashboardErrorState(this.error);
}


class DashboardSuccessState extends AppStates{}