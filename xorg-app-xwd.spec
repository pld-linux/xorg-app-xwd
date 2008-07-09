Summary:	xwd application - dump an image of an X window
Summary(pl.UTF-8):	Aplikacja xwd - zrzut obrazu okna X
Name:		xorg-app-xwd
Version:	1.0.2
Release:	1
License:	MIT
Group:		X11/Applications
Source0:	http://xorg.freedesktop.org/releases/individual/app/xwd-%{version}.tar.bz2
# Source0-md5:	0a6ef08a2ac08ad5c4dd1522eb3788a3
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
xwd application is an X Window System window dumping utility. It
allows X users to store window images in a specially formatted dump
file. This file can then be read by various other X utilities for
redisplay, printing, editing, formatting, archiving, image processing,
etc. The target window is selected by clicking the pointer in the
desired window.

%description -l pl.UTF-8
Aplikacja xwd to narzędzie do wykonywania zrzutów okien X Window
System. Umożliwia użytkownikom zapisywanie obrazów okien w plikach o
specjalnym formacie, które później mogą być czytane przez różne inne
narzędzia X do wyświetlania, drukowania, edycji, formatowania,
archiwizacji, przetwarzania itp. Wyboru okna dokonuje się klikając na
nim kursorem.

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
