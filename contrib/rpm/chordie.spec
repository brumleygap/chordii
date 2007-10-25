Name: chordie
URL: http://sourceforge.net/projects/chordie/
Summary: Print songbooks (lyrics + chords)
Version: 3.6
Release: 2
Source: %{name}-%{version}.tar.gz
Packager: Johan Vromans <jvromans@squirrel.nl>
License: GPL
Group: Utilities/Text
BuildRoot: %{_tmppath}/%{name}-%{version}-root

%description
This is a description of a utility called CHORDIE.

It's purpose is to provide guitar players with a tool to produce good
looking, self-descriptive music sheet from a text file.

CHORDIE read a text file containing the lyrics of a song, the chords to
be played, their description and some other optional data to produce a
PostScript document that includes:

	Centered titles
	Chord names above the words
	Graphical representation of the chords at the end of the songs

CHORDIE also provides support for 

	Multiple columns on a page
	Index of a songbook
	Multiple logical pages per physical pages ( 1, 2 or 4)
	Configurable fonts for the lyrics and the chord names
	Multiple songs inside one file
	The complete ISO 8859-1 character set
and
	Chorus marking

CHORDIE is a fork of CHORD.

%prep
%setup -q

%build
# Do not use -O, it triggers a bug in gcc 4.1.1
make CFLAGS="-DPAPERSIZE=A4"

%install
%{__mkdir} -p $RPM_BUILD_ROOT/%{_bindir}
%{__mkdir} -p $RPM_BUILD_ROOT/%{_mandir}/man1
%{__install} -m 0755 chordie $RPM_BUILD_ROOT/%{_bindir}
%{__install} -m 0755 a2crd $RPM_BUILD_ROOT/%{_bindir}
%{__install} -m 0644 chordie.man $RPM_BUILD_ROOT/%{_mandir}/man1/chordie.1
%{__install} -m 0644 a2crd.man $RPM_BUILD_ROOT/%{_mandir}/man1/a2crd.1
%{__gzip} chordie_guide.ps

%clean
%{__rm} -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root)
%doc COPYING README songs TODO
%{_bindir}/*
%{_mandir}/man1/*

%changelog
* Thu Oct 25 2007 Adam Monsen <haircut@gmail.com> 3.6-2
- initial at on new home on sourceforge.net
