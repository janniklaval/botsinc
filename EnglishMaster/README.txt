-----------------------------------------------------------------------------
$Id:  $
-----------------------------------------------------------------------------
This is the README file for "BotsInc" book, containing an overview
of the project and instructions for processing or modifying the text.
For current status of the chapters and pending actions, see the TODO file.
-----------------------------------------------------------------------------
The svn repository lives here:
https://
The home page for the book is here:
do be defined
-----------------------------------------------------------------------------
License
-------
This work is licensed under
Creative Commons Attribution-ShareAlike 3.0 Unported
http://creativecommons.org/licenses/by-sa/3.0/
You are free:
to Share -- to copy, distribute and transmit the work
to Remix -- to adapt the work
Under the following conditions:
Attribution. You must attribute the work in the manner specified by the author or
licensor (but not in any way that suggests that they endorse you or your use of the work).
Share Alike. If you alter, transform, or build upon this work, you may distribute
the resulting work only under the same, similar or a compatible license.
For any reuse or distribution, you must make clear to others the license terms of
this work. The best way to do this is with a link to this web page.
Any of the above conditions can be waived if you get permission from the copyright holder.
Nothing in this license impairs or restricts the author's moral rights.
Disclaimer
----------
Your fair dealing and other rights are in no way affected by the above.
This is a human-readable summary of the Legal Code (the full license).
-----------------------------------------------------------------------------
Makefile
--------
To build the PDF of the book, simply run "make" in the Book folder.
Be sure you have texlive installed (see below).
-----------------------------------------------------------------------------
Printing
--------
The book has been reformatted to 6"x9" (for Lulu). If you want to print any
part of the book, you will find that printing 2 up at 140% works well.
-----------------------------------------------------------------------------
File structure
--------------
The main files is BotsInc.tex.  Chapters are in subdirectories.
You can latex either the entire book, or each individual chapter.
Each chapter file starts and ends with the same incantation
which will optionally include macros or end the document if it is
latexed individually.

Use the \ct{} macro for in-line code.
Use the {method} {classdef} {example} and {script} environments for
multi-line code.

If you add a new chapter: 
	-	please be sure to include it from BotsInc.tex.
	-	Remember to include its /figures/ subdirectory in the graphicspath,
		   which is set in the preamble to BotsInc.tex.  Don't forget the trailing /
	-	Please make sure the chapter compiles with latex both from the main book
		and as a separate chapter.  
	-	Set the svn:ignore property on the chapter's directory.  The command to do
		this is svn propset svn:ignore -F .svnignore <directory name>

IMPORTANT: Please check out a fresh copy of the book and compile the book
to verify that you have added all the dependent files (e.g., figures).
-----------------------------------------------------------------------------

-----------------------------------------------------------------------------
LaTeX version
-------------
Please use at least texlive 2005.
http://www.tug.org/texlive/
If you are using TeXshop or another GUI, be sure to set the path to the tex executables.  E.g., in TeXShop>Preferences>Engine set the path to:
/usr/local/texlive/2005/bin/powerpc-darwin

For intel macs you will need texlive 2007.  The path should be
/usr/local/texlive/2007/bin/i386-darwin
-----------------------------------------------------------------------------
OmniGraffle files
-----------------
Please be sure to use Lucida Sans, not Helvetica, or you may have problems
uploading the PDF to Lulu.  See the font embedding FAQ on lulu.com
See more detailed instructions in Cover/README.txt
-----------------------------------------------------------------------------
Style files
-----------
To inform latex about the location of local style files, set the following
environment variable (tcsh):

setenv TEXINPUTS ./local//:../local//:
	or (bash):
export TEXINPUTS=./local//:../local//:

If you are using a GUI like TeXshop, you must set the environment variable in ~/.MacOSX/environment.plist :

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>TEXINPUTS</key>
	<string>./local//:../local//:</string>
</dict>
</plist>
 
NB: You may need to logout and login again after creating or modifying this file.
Note colon at end of TEXINPUTS that means "append current value here"
(eg local has higher priority). Double slash means search recursively.
-----------------------------------------------------------------------------
Bibliography
------------
The bibliography file scg.bib is available from a separate subversion repository:
https://www.iam.unibe.ch/scg/svn_repos/scgbib/
https://www.iam.unibe.ch/scg/svn_repos/scgbib/scg.bib
You should separately check out this file and link it in wherever it is needed.
-----------------------------------------------------------------------------
