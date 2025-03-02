package com.piccmaq.disk_space_plus_example

import android.os.Bundle
import com.piccmaq.disk_space_plus.DiskSpacePlusPlugin
import io.flutter.app.FlutterActivity


class EmbeddingV1Activity : FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        DiskSpacePlusPlugin.registerWith(registrarFor("com.piccmaq.disk_space_plus.DiskSpacePlusPlugin"))
    }
}