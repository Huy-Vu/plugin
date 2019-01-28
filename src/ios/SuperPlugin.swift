@objc(SuperPlugin) class SuperPlugin : CDVPlugin {
  @objc(openWeb:)
  func openWeb(command: CDVInvokedUrlCommand) {
    var pluginResult = CDVPluginResult(
      status: CDVCommandStatus_ERROR
    )

    print("Plugin works")
        
      pluginResult = CDVPluginResult(
        status: CDVCommandStatus_OK
      )
    

    self.commandDelegate!.send(
      pluginResult,
      callbackId: command.callbackId
    )
  }
}