%%

%unicode 4.1
%public
%class UnicodeDerivedCoreProperties_Lowercase_4_1

%type int
%standalone

%include ../../resources/common-unicode-binary-property-java

%%

\p{Lowercase} { setCurCharPropertyValue(); }
[^] { }

<<EOF>> { printOutput(); return 1; }
