## Docker in Windows / MacOS

* Windows and Mac versions run a virtualized Linux kernel in a VM

* Only the kernel runs in the VM.  The container runs separately

* In Windows, the VM is in Hyper-V (and thus requires Hyper-V to be installed)

* On Mac, the VM runs in Apple's Hypervisor Framework which is usually already enabled.

* Windows Server Native Windows Kernels
    - Windows Server Applications can run in Windows Native Containers on Windows Server
    - No VMs required. (although you may want a VM for security reasons)
    - Not yet very common, but growing.

Notes:

Instructor Notes :

Participant Notes :

It's important to understand how containers work.  They generally use the host kernel. We say
generally because in fact on non-Linux platforms the kernel is usually virtualized.  

The situation is a little complicated when it comes to Windows, because there are multiple 
incompatible Windows kernels for various flavors of Windows.  Because of that, most Windows
"Native" containers run in virtualized mode except in production.

---