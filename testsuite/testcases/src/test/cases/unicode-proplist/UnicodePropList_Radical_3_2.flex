%%

%unicode 3.2
%public
%class UnicodePropList_Radical_3_2

%type int
%standalone

%include ../../resources/common-unicode-all-binary-property-java

%%

\p{Radical} { setCurCharPropertyValue(); }
[^] { }

<<EOF>> { printOutput(); return 1; }
