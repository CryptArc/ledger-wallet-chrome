@declareRoutes = (route, app) ->

  ## Default
  route '/', ->
    app.router.go '/onboarding/management/welcome'

  ## Onboarding
  # Device
  route '/onboarding/device/plug', (params) ->
    app.navigate ONBOARDING_LAYOUT, OnboardingDevicePlugViewController

  route '/onboarding/device/unplug', (params) ->
    app.navigate ONBOARDING_LAYOUT, OnboardingDeviceUnplugViewController

  route '/onboarding/device/pin', (params) ->
    app.navigate ONBOARDING_LAYOUT, OnboardingDevicePinViewController

  # Management
  route '/onboarding/management/done', (params) ->
    app.navigate ONBOARDING_LAYOUT, OnboardingManagementDoneViewController

  route '/onboarding/management/welcome', (params) ->
    app.navigate ONBOARDING_LAYOUT, OnboardingManagementWelcomeViewController

  route '/onboarding/management/locked', (params) ->
    app.navigate ONBOARDING_LAYOUT, OnboardingManagementLockedViewController

  ## Wallet
  # Dashboard
  route '/wallet/dashboard/index:#action:', (params) ->
    app.navigate WALLET_LAYOUT, WalletDashboardIndexViewController

  route '/wallet/send/index:#action::?params:', (params) ->

  route '/wallet/receive/index:#action::?params:', (params) ->

  # Accounts
  route '/wallet/accounts/index:#action::?params:', (params) ->
    l 'Accounts'