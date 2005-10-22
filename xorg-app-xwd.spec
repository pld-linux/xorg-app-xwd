Summary:	xwd application
Summary(pl):	Aplikacja xwd
Name:		xorg-app-xwd
Version:	0.99.1
Release:	0.1
License:	MIT
Group:		X11/Applications
Source0:	http://xorg.freedesktop.org/releases/X11R7.0-RC1/app/xwd-%{version}.tar.bz2
# Source0-md5:	d0d202707ccf9cdbf952833f992ebec2
URL:		http://xorg.freedesktop.org/
BuildRequires:	autoconf >= 2.57
BuildRequires:	automake
BuildRequires:	pkgconfig >= 0.19
BuildRequires:	xorg-lib-libXmu-devel
BuildRequires:	xorg-util-util-macros >= 0.99.1
BuildRoot:	%{tmpdir}/%{name}-%{version}-root-%(id -u -n)

%description
xwd application.

%description -l pl
Aplikacja xwd.

%prep
%setup -q -n xwd-%{version}

%build
%{__aclocal}
%{__autoconf}
%{__autoheader}
%{__automake}
%configure

%{__make}

%install
rm -rf $RPM_BUILD_ROOT

%{__make} install \
	DESTDIR=$RPM_BUILD_ROOT \
	appmandir=%{_mandir}/man1

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(644,root,root,755)
%doc ChangeLog
%attr(755,root,root) %{_bindir}/*
%{_mandir}/man1/*.1x*
