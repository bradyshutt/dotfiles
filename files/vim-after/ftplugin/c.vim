
command! RunThisCFile :!clear && gcc % && ./a.out  && echo " " && echo "============================" && echo "Diff <<this<<  |  >>that>>" && echo "============================" && echo " " && echo " " &&./a.out > a.out.out && diff a.out.out shouldbe
command! -nargs=1 IncLibrary :normal mZggJO#include <<f-args>><esc>F"s.h<esc>LxgmZ
command! -nargs=1 IncFile :normal mZggJO#include <f-args><esc>i.h<esc>gmZ
command! MvIncUp :normal mZddggJP,<....gmZk
