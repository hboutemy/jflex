%%

%unicode 5.1
%public
%class UnicodePropList_Pattern_Syntax_5_1

%type int
%standalone

%include ../../resources/common-unicode-binary-property-java

%%

\p{Pattern_Syntax} { setCurCharPropertyValue(); }
[^] { }

<<EOF>> { printOutput(); return 1; }
