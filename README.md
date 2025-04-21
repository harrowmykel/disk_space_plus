# disk_space_plus

Get the information about free and total disk space for you device.

----
Important change in 0.2.5
You need to initialize disk_space_plus now
e.g 
```dart
    DiskSpacePlus diskSpacePlus = DiskSpacePlus();
    await diskSpacePlus.getFreeDiskSpace ?? 0;
```

instead of
```dart
await DiskSpacePlus.getFreeDiskSpace;
```

