package com.piccmaq.disk_space_plus

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

class DiskSpacePlusPlugin: FlutterPlugin {
  private var channel: MethodChannel? = null
  private var handler: MethodHandlerImpl = MethodHandlerImpl()

  override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(binding.binaryMessenger, "disk_space_plus")
    channel?.setMethodCallHandler(handler)
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel?.setMethodCallHandler(null)
    channel = null
  }
}