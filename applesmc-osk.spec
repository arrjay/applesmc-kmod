%define module_name applesmc
%define version 0.2a1d5d
%define packager RJ Bergeron <rbergero@gmail.com>
%define license GPLv2
%{?!_dkmsdir: %define _dkmsdir /var/lib/dkms}
%{?!_srcdir: %define _srcdir %_prefix/src}
%{?!_datarootdir: %define _datarootdir %{_datadir}}

Summary:	applesmc-osk %{version} dkms package
Name:		applesmc-osk
Version:	%{version}
License:	%license
Release:	4
BuildArch:	noarch
Group:		System/Kernel
Requires: 	dkms >= 1.95
BuildRequires: 	dkms
BuildRoot: 	%{_tmppath}/%{name}-%{version}-%{release}-root/
# git archive --prefix=applesmc-osk-0.2a1d5d-4/ -o ~/rpmbuild/SOURCES/applesmc-osk-0.2a1d5d-4.tgz 0.2a1d5d-4
Source0:	%{name}-%{version}-%{release}.tgz
Requires:	kernel-devel

%description
Kernel module for %{module_name} %{version} with OSK support.

%prep
%setup -q -n %{name}-%{version}-%{release}

%install
if [ "$RPM_BUILD_ROOT" != "/" ]; then
        rm -rf $RPM_BUILD_ROOT
fi
mkdir -p $RPM_BUILD_ROOT/%{_srcdir}/%{module_name}-%{version}
cp -R . $RPM_BUILD_ROOT/%{_srcdir}/%{module_name}-%{version}
mkdir -p $RPM_BUILD_ROOT/etc/depmod.d
install -m 644 applesmc.conf /etc/depmod.d/applesmc.conf

%clean
if [ "$RPM_BUILD_ROOT" != "/" ]; then
        rm -rf $RPM_BUILD_ROOT
fi

%post
for POSTINST in %{_prefix}/lib/dkms/common.postinst %{_datarootdir}/%{module_name}/postinst; do
        if [ -f $POSTINST ]; then
                $POSTINST %{module_name} %{version} %{_datarootdir}/%{module_name}
                exit $?
        fi
        echo "WARNING: $POSTINST does not exist."
done
echo -e "ERROR: DKMS version is too old and %{module_name} was not"
echo -e "built with legacy DKMS support."
echo -e "You must either rebuild %{module_name} with legacy postinst"
echo -e "support or upgrade DKMS to a more current version."
exit 1

%preun
echo -e
echo -e "Uninstall of %{module_name} module (version %{version}) beginning:"
dkms remove -m %{module_name} -v %{version} --all --rpm_safe_upgrade
exit 0

%files
%defattr(-,root,root)
%{_srcdir}
/etc/depmod.d/*

%changelog
* Sat Mar 19 2016 RJ Bergeron <rbergero@gmail.com>
- require a kernel-devel

* Sat Mar 19 2016 RJ Bergeron <rbergero@gmail.com>
- initial packaging
