+++
categories = ["linux","know-how"]
date = "2016-06-04T01:12:14+02:00"
description = "Solution to a tough dilemma, whether to use TPM with tscd or rngd."
keywords = []
title = "tcsd and rngd together"

+++

There's a tricky way to don't choose between rngd or [SSH keys wired with your computer](https://wiki.archlinux.org/index.php/Trusted_Platform_Module#Securing_SSH_Keys) because it is possible to use it in one time, despite the fact that they both want exclusive access to TPM.

To do that, you should create a file 
{{< highlight text >}}
/etc/modules-load.d/tpm-rng.conf 
{{< / highlight >}}
with one line:
{{< highlight text >}}
tpm-rng
{{< / highlight >}}
And restart or modprobe that module.
When you can see a `/dev/hwrng` device, then it's necessary to point a rngd daemon to it(f.e. in `/etc/modules-load.d/tpm-rng.conf 
` on Archlinux):
{{< highlight text >}}
RNGD_OPTS="-r /dev/hwrng"
{{< / highlight >}}

And that's all. Both services are running on my laptop without any problem.
