%%

%unicode 6.0
%public
%class UnicodePropList_Diacritic_6_0

%type int
%standalone

%include ../../resources/common-unicode-binary-property-java

%%

\p{Diacritic} { setCurCharPropertyValue(); }
[^] { }

<<EOF>> { printOutput(); return 1; }
