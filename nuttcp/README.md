Ubuntu's apt-get installs nuttcp version 6.1.2-4 which requires file /proc/sys/net/ipv4/tcp_adv_win_scale in order to work properly. But this file is missing when running inside docker which cases nuttcp to fail with segmentation error (see https://bugzilla.redhat.com/show_bug.cgi?id=1088932). The issue has been fixed in nuttcp 6.1.2-10+, so this test uses a later binary that is manually installed.
