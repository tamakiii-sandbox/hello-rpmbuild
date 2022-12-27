Name: minimum
Version: 1
Release: 1%{?dist}
Summary: minimum test command

License: No License
Source0: minimum

%description
minimum test command!!

%install
mkdir -p %{buildroot}/%{_bindir}
install -p -m 755 %{SOURCE0} %{buildroot}/%{_bindir}

%files
%{_bindir}/minimum
