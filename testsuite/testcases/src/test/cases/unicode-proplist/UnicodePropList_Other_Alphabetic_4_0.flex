%%

%unicode 4.0
%public
%class UnicodePropList_Other_Alphabetic_4_0

%type int
%standalone

%include ../../resources/common-unicode-binary-property-java

%%

\p{Other_Alphabetic} { setCurCharPropertyValue(); }
[^] { }

<<EOF>> { printOutput(); return 1; }
