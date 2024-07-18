To compile on Windows:

1. Install Visual Studio Code: https://code.visualstudio.com/download
2. Install the C/C++ extensions for VS Code: View / Extensions and search for C/C++
3. Install the Microsoft Visual C++ (MSVC) compiler:
https://visualstudio.microsoft.com/downloads/#remote-tools-for-visual-studio-2022
a) Go all the way to the bottom of the page and select: Build Tools for Visual Studio 2022
b) Check the desktop development, as shown in the Prerequisites on this page:
https://code.visualstudio.com/docs/cpp/config-msvc#_run-vs-code-outside-the-developer-command-prompt
4. After installation open a command prompt and run the following command:
"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" amd64
You need to make sure you pass the amd64 variable, since we'll be compiling on x64.
5. Open Visual Studio Code and select File / Open Folder then open this folder.
6. We will use Visual Studio Code only for code editing.  We will compile things from the command line.
7. Go back to your command line (cmd), where you've set your compiling environment and type the following command:

cl *.c /Zi /EHsc /nologo /link ftd2xx.lib /out:controller.exe

8. If everything works, you now have a controller.exe.  Run that from the command prompt.

To compile on Mac:

1. Install Visual Studio Code: https://code.visualstudio.com/download
2. Install the C/C++ extensions for VS Code: View / Extensions and search for C/C++
3. Install the GCC compiler from the command line: brew install gcc
(You can optionally install additional XCode tools: xcode-select --install)
4. Open this folder in Visual Studio Code, to see the code.  However, we will do the compilation from the command line.
5. Open the command line and change directory to this directory.  
6. From the command prompt, type: 

gcc -o controller *.c libftd2xx.a -I. -L. -framework CoreFoundation -framework IOKit -o controller

This should compile the code and return and executable called controller.
Start the controller from the command line by typing: ./controller