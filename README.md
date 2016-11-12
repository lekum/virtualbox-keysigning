# VirtualBox and secure boot module key signing

## Create and register the signing keys (only once)

`./create_and_register_signing_keys.sh`

Keep the `MOK.priv` and `MOK.der` generated file because it will be used every time you need to sign another version of the module. You will need to reboot the machine in order to complete the enrolment of the keys.

## Sign new versions of the VirtualBox modules

Every time the kernel changes, you will get an annoying message like this one:

```
WARNING: The vboxdrv kernel module is not loaded. Either there is no module
         available for the current kernel (4.4.0-47-generic) or it failed to
         load. Please recompile the kernel module and install it by

           sudo /sbin/vboxconfig
```

You just have to run:

`./sign.sh`
