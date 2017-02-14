local msg = {
    dataType            = NOTIFICATIONS_ALERT_DATA,
    secsSinceRequest    = ZO_NormalizeSecondsSince(0),
    note    = "Use it wisely",
    message = "Add custom notification messages",
    heading = "LibNotifications",
    texture = "/esoui/art/miscellaneous/eso_icon_warning.dds",
    shortDisplayText        = "Custom Notification",
    controlsOwnSounds       = true,
    keyboardAcceptCallback  = function() d("keyboard accepted") end,
    keybaordDeclineCallback =  function() d("keyboard declined") end,
    gamepadAcceptCallback   = function() d("gamepad accepted") end,
    gamepadDeclineCallback  = function() d("gamepad declined") end,
    data = {}, -- Place any custom data you want to store here
}
local libNotifications = LibStub:GetLibrary("LibNotifications")
local provider = libNotifications:CreateProvider()
table.insert(provider.notifications, msg)
provider:UpdateNotifications()
