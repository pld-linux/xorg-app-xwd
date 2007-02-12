Summary:	xwd application
Summary(pl.UTF-8):	Aplikacja xwd
Name:		xorg-app-xwd
Version:	1.0.1
Release:	1
License:	MIT
Group:		X11/Applications
Source0:	http://xorg.freedesktop.org/releases/individual/app/xwd-%{version}.tar.bz2
# Source0-md5:	911addfb7fa402217ddac63e5c1d97c7
Source1:	xwd.1x.pl
URL:		http://xorg.freedesktop.org/
BuildRequires:	autoconf >= 2.57
BuildRequires:	automake
BuildRequires:	pkgconfig >= 1:0.19
# just xmuu
BuildRequires:	xorg-lib-libXmu-devel
BuildRequires:	xorg-util-util-macros >= 0.99.2
BuildRoot:	%{tmpdir}/%{name}-%{version}-root-%(id -u -n)

%description
xwd application.

%description -l pl.UTF-8
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
	DESTDIR=$RPM_BUILD_ROOT

install -D %{SOURCE1} $RPM_BUILD_ROOT%{_mandir}/pl/man1/xwd.1x

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(644,root,root,755)
%doc COPYING ChangeLog
%attr(755,root,root) %{_bindir}/xwd
%{_mandir}/man1/xwd.1x*
%lang(pl) %{_mandir}/pl/man1/xwd.1x*
