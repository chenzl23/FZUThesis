%
%  Copyright 2016-2022 Wen Wang <wangwen1192@outlook.com>
%
%  This work may be distributed and/or modified under the
%  conditions of the LaTeX Project Public License, either version 1.3
%  of this license or (at your option) any later version.
%  The latest version of this license is in
%    http://www.latex-project.org/lppl.txt
%  and version 1.3 or later is part of all distributions of LaTeX
%  version 2005/12/01 or later.
%
%  This work has the LPPL maintenance status `maintained'.
%
%  The Current Maintainer of this work is Wen Wang <wangwen1192@outlook.com>.
%
%  This work consists of the files thesis.cls, thesis.bst.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 当前版本只适用于中文毕业论文





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% 自定义风格名字，必须与文件名一致
\ProvidesClass{thesis}

% a4paper代表纸张大小，12pt代表小四、twoside代表双面打印、book代表排版书籍
% openany代表新章节是直接在下一页，改为openright则代表在奇数页开始
\LoadClass[a4paper, 12pt, openany, twoside]{book}
% 其它参数参考：
%   fleqn设置行间公式为左对齐， 而不是居中对齐。
%   leqno设置行间公式的编号为左对齐， 而不是右对齐。
%   titlepage, notitlepage指定是否在文档标题(document title) 后另起一页
%   onecolumn, twocolumn以单栏(one column) 或双栏(two column) 的方式来排版文档
%   landscape 将文档的打印输出布局设置为landscape模式



% 需要ifxetex，在LaTeX类和包文件中使用另一个包文件：ifxetex
\RequirePackage{ifxetex}

% 需要使用XeLatex编译tex文件，不然会报错
\RequireXeTeX

% 引入三张颜色表：usenames,dvipsnames,svgnames
% 通过table参数允许改变表格颜色
\RequirePackage[usenames, dvipsnames, svgnames, table]{xcolor}

% 拓展了插入图片的命令\includegraphics的参数设置
\RequirePackage{graphicx}

% 标题（如图片标题，表格标题等）的参数设置
% option1: 设置字体为小号（五号）
% option2: labelseq=space 标签分隔符为空格
% option3: skip=6pt 基本距离为6p
\RequirePackage[font=small, labelsep=space, skip=6pt]{caption}

%允许使用矩阵环境
\RequirePackage{array}

% 三线表的边框线粗设置
\RequirePackage{booktabs}
\setlength{\heavyrulewidth}{0.9pt}
\setlength{\lightrulewidth}{0.5pt}
\setlength{\arrayrulewidth}{0.5pt}
\setlength{\cmidrulewidth}{0.5pt}

\RequirePackage{setspace}
\RequirePackage{multirow}
% \RequirePackage{bm}
\RequirePackage[tbtags]{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{lmodern}
\RequirePackage{listings}




% 术语表相关宏包，详情参考https://blog.csdn.net/xovee/article/details/118548271
% 此处nopostdot代表在描述的最后面不加.
\RequirePackage[nopostdot, acronym]{glossaries}

\RequirePackage{mathspec}

% 允许latex使用中文
\RequirePackage{xeCJK}

% 引入用以检查当前系统的宏包
\RequirePackage{ifplatform}


\ifwindows
  \setCJKmainfont[AutoFakeBold=true]{SimSun}  %设置xeCJK中文主字体
  \newCJKfontfamily{\heiti}{SimHei}
  \newfontfamily{\heiti@letter}{SimHei}
  \setallmainfonts{Times New Roman}  % 设置英文字体
\else
\ifmacosx
  % \setCJKmainfont[AutoFakeBold=true]{Songti SC}
  % \newCJKfontfamily{\heiti}{STHeiti}
  % \newfontfamily{\heiti@letter}{STHeiti}
  % \setallmainfonts{Times New Roman}
  \setCJKmainfont[AutoFakeBold=true]{SimSun}
  \newCJKfontfamily{\heiti}{SimHei}
  \newfontfamily{\heiti@letter}{SimHei}
  \setallmainfonts{Times New Roman}
\else
  \setCJKmainfont[AutoFakeBold=true]{fzsong.ttf}
  \newCJKfontfamily{\heiti}{fzhei.ttf}
  \newfontfamily{\heiti@letter}{fzhei.ttf}
  \setallmainfonts[
    BoldFont=timesbd.ttf,
    ItalicFont=timesi.ttf,
    BoldItalicFont=timesbi.ttf,
  ]{times.ttf}
\fi
\fi

\DeclareMathAlphabet{\mathbf}{\eu@enc}{\eu@mathrm}{\bfdefault}{n}
\DeclareMathAlphabet{\mathbd}{\eu@enc}{\eu@mathrm}{\bfdefault}{it}
\newcommand{\bm}{\mathbf}

\RequirePackage{zhnumber}
\RequirePackage{pifont}

\RequirePackage[hyphens]{xurl}
\RequirePackage[hyperfootnotes=false,
    bookmarksnumbered,
    bookmarksdepth=4
]{hyperref}
\hypersetup{
  colorlinks=true,
  citecolor=black,
  linkcolor=black,
  urlcolor=blue
}

\RequirePackage{indentfirst}
%\RequirePackage{calc}
\RequirePackage{float}
\RequirePackage{fancyvrb}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{appendix}
\RequirePackage{cite}
\RequirePackage[normalem]{ulem}
\RequirePackage{enumitem}

\RequirePackage[algochapter, ruled, linesnumbered]{algorithm2e}
% \RequirePackage{algorithm}
% \RequirePackage{algorithmicx}
% \RequirePackage{algpseudocode}

\RequirePackage{etoolbox}
\RequirePackage{newfloat}
\RequirePackage[resetlabels]{multibib}
\RequirePackage[nottoc]{tocbibind}
\RequirePackage{everypage}
\RequirePackage{ifoddpage}
\RequirePackage{pdfpages}
\RequirePackage{fontspec}

\graphicspath{{./pics/}}

\RequirePackage[titles]{tocloft}
\RequirePackage[labelformat=simple]{subcaption}
\captionsetup[subfigure]{font=small, belowskip=6pt, width=36pt}
\renewcommand{\thesubfigure}{(\alph{subfigure})}

% \newcommand{\floatcontinue}{\end{figure}\clearpage\begin{figure}[tb]\ContinuedFloat} % 待删除

\urlstyle{rm}
\raggedbottom

% \AtBeginDocument{\pretocmd{\ref}{~}{}{}\apptocmd{\ref}{}{}{}}

 


% 设置页边距以及页眉页脚，其中inner是left，outer是right
\RequirePackage[a4paper, inner=2.5cm, outer=2.0cm, top=2.5cm, bottom=2.0cm, bindingoffset=0cm,
                headheight=1.05cm, headsep=4mm, footskip=0.25cm]{geometry}

\oddsidemargin = 0cm
\evensidemargin = 0cm

% 为标题在每页页眉上用户自定义的奇页眉使用电子科技大学硕士/博士学位论文，偶数使用标题，页脚页眉居中
\pagestyle{fancy}

% 设置行间距
% 1.0就是word里面的单倍行距，1.3是word里面的1.5倍行距，1.6是word里面的双倍行距
\linespread{1.391}

% 设置缩进长度
\setlength\parindent{24pt}



%\zhnumber{计数器}，使计数器值输出为汉字格式。
\renewcommand\thechapter{第\zhnumber{\arabic{chapter}}章}

% \the计数器，显示计数器的值，该命令只使用于序号计数器，例如\thepage显示当前页码。\value{计数器}调用计数器的值，无论计数器的计数形式如何都被转换成对应的阿拉伯数字。
\renewcommand\thesection{\arabic{chapter}.\arabic{section}}

%显示公式编号，其格式x-x
\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}

%显示表格编号，其格式x-x
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}

%显示插图编号，其格式x-x
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}




\setlength{\intextsep}{9pt}

%让图环境的内容居中
\AtBeginEnvironment{figure}{
  \def\@floatboxreset{\centering}
}

% 让表格环境的内容居中
\AtBeginEnvironment{table}{%
  \def\@floatboxreset{\centering}%
}

\AtBeginEnvironment{tabular}{\small}

\newcommand{\chinesecolon}{\char"FF1A}
\newcommand{\chinesespace}{\char"3000}
\newcommand{\chineseperiod}{\char"3002}
\newcommand{\chinesequestion}{\char"FF1F}
\newcommand{\chineseexclamation}{\char"FF01}
\newcommand{\chinesecomma}{\char"FF0C}
\newcommand{\chinesesemicolon}{\char"FF1B}
\newcommand{\chineseleftparenthesis}{\char"FF08}
\newcommand{\chineserightparenthesis}{\char"FF09}

\setcounter{secnumdepth}{3} % 设置章节深度 
\setcounter{tocdepth}{2} % 设置目录深度







\RequirePackage[hang, perpage]{footmisc}
\addtolength{\footnotesep}{0pt}
\setlength{\footnotemargin}{13.5pt}

\renewcommand{\footnotesize}{\fontsize{9pt}{10.8pt}\selectfont}
\renewcommand{\small}{\fontsize{10.5pt}{12.6pt}\selectfont}
\renewcommand\footnotelayout{\fontsize{9}{11.7}\selectfont}

\renewcommand{\thefootnote}{\ifcase\value{footnote}\or\ding{172}\or
\ding{173}\or\ding{174}\or\ding{175}\or\ding{176}\or\ding{177}\or
\ding{178}\or\ding{179}\or\ding{180\or\ding{181}}\fi}

\renewcommand{\footnoterule}{\vfill\noindent\vspace{0.9mm}\hspace{27pt}\rule{5.05cm}{0.02cm}\vspace*{2.6pt}}

\def\@makefntext #1{
  \ifFN@hangfoot
      \bgroup \setbox \@tempboxa \hbox {
          \ifdim
        \footnotemargin >0pt \hb@xt@
                \footnotemargin {\hbox { \normalfont \@thefnmark}\hss }
            \else
              \hbox { \normalfont \@thefnmark}
      \fi
    }
        \leftmargin \wd \@tempboxa
        \rightmargin \z@ \linewidth \columnwidth
          \advance \linewidth -\leftmargin\parshape \@ne
    \leftmargin \linewidth \footnotesize \@setpar {{\@@par }}
    \leavevmode \llap {\box \@tempboxa }\parskip
        \hangfootparskip \relax \parindent
    \hangfootparindent \relax
        \else
          \parindent 1em \noindent
            \ifdim
                \footnotemargin >\z@ \hb@xt@
                \footnotemargin {\hss \hbox { \normalfont \@thefnmark} }
            \else
        \ifdim \footnotemargin =\z@
                    \llap {\hbox { \normalfont \@thefnmark} }
                \else
          \llap {\hb@xt@ -\footnotemargin {\hbox { \normalfont \@thefnmark} \hss }}
        \fi
            \fi
    \fi
        \footnotelayout #1\ifFN@hangfoot \par \egroup
  \fi
}

\newcounter{pseudopage} % 自定义一个名字pseudopage新计数器
\setcounter{pseudopage}{0} % pseudopage新计数器清零

% \stepcounter{计数器}，将计数器的值加1，如果计数器是层次标题的序号计数器，还将比其低一层计数器清零。例如\stepcounter{chapter},将chapter序号计数器加1，同时将section以及低于section的序号计数器归零。
\AddEverypageHook{\stepcounter{pseudopage}}

% 添加空白页
\newcommand\blankpage{
  \newpage
  \null
  \thispagestyle{empty} % 没有页眉页脚，空白页
  \addtocounter{pseudopage}{-1} % \addtocounter{计数器}{数值}将数值与该计数器原有值相加，数值可以是正整数，也可以是负整数。
  \newpage
}














% caption工具包在加载时可以修改标题的很多方面，也可以通过\captionsetup命令也可以在工具包选项中修改。\captionsetup[浮动体类型]{参数1=选项, 参数2=选项,…}其中可选参数浮动体类型的选项可以是figure或table,如果省略该参数, 则表示这两种浮动体都适用。format：plain默认值,将标题作为普通段落排版。hang将标题从第二行起悬挂缩进排版，缩进宽度等于标题标志加分隔符的宽度。indention设置从标题第二行起的附加缩进宽度, 例如indention=5mm,其默认值是0pt。
%\captionsetup{format=hang}
\captionsetup{width=\textwidth - 84pt} % 设置标题的宽度

\captionsetup[figure]{aboveskip=6pt, belowskip=0pt} % 设置图片caption与上下文的垂直间距
\captionsetup[table]{aboveskip=0pt, belowskip=12pt} % 设置表格caption与上下文的垂直间距
% \captionsetup[algorithm]{format=algrule} % 设置算法标题格式








%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%  定义“中文摘要”环境、“中文关键字”命令  
%% 
%%  存在问题：1、无法更改标题、摘要的行间距；2、上下页边距可能不符合
\newenvironment{chineseAbstract}{
  \ifchinesebook{
    \titlespacing{\chapter}{0pt}{0pt}{0pt} % 取消段间距
    \chapter*{\heiti\fontsize{18pt}{21.6pt}\selectfont \zh@thetitle} % 论文题目，
    \addcontentsline{toc}{chapter}{摘要} % 添加到目录中
  }{}
  \vspace{13pt}
  \centerline{\heiti\fontsize{14pt}{15.38pt}\selectfont 摘要} % 4号黑体
  \vspace{18pt}
  \setcounter{pseudopage}{1}
  \fancyhf{} % 用来清空现有的页眉、页码格式
  \renewcommand{\headrulewidth}{0.0pt} % 去掉页眉下方的横线
  % \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\selectfont 摘要}  % 设置页码相关格式
  \pagenumbering{Roman}
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}} % 设置页码相关格式
}{
  \checkoddpage
  % \ifoddpage
  %     \blankpage
  %   \else
  %     \newpage
  %   \fi
  \newpage
}
\newcommand{\chinesekeyword}[1]{
  \vspace{12pt}
  \noindent
  {\heiti 关键词\chinesecolon}{\heiti #1}
  % \@hangfrom{\makebox[48pt][l]{\heiti 关键词\chinesecolon}}{\heiti #1}
}
%% 
%%  定义“中文摘要”环境、“中文关键字”命令 
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%  定义“英文摘要”环境 、“英文关键字”命令
%% 
\newenvironment{englishAbstract}{
  \ifchinesebook{
    \titlespacing{\chapter}{0pt}{0pt}{0pt} % 取消段间距
    \chapter*{\setmainfont{ariblk.ttf}\fontsize{15pt}{18pt}\selectfont \en@thetitle} % 论文题目，
    \addcontentsline{toc}{chapter}{Abstract} % 添加到目录中
  }{}
  \vspace{13pt}
  \centerline{\setmainfont{ariblk.ttf}\fontsize{14pt}{16.8pt}\selectfont Abstract} % 4号Arial Black
  \vspace{18pt}
  \linespread{1.11}\selectfont
  \fancyhf{}
  \renewcommand{\headrulewidth}{0.0pt}
  % \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\selectfont ABSTRACT}
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}}
}{
  \checkoddpage
  % \ifoddpage
  %     \blankpage
  %   \else
  %     \newpage
  %   \fi
  \newpage
}
\newcommand{\englishkeyword}[1]{
  \vspace{12pt}
  \noindent
  {\setmainfont{ariblk.ttf} Keywords: }{\setmainfont{ariblk.ttf} #1}
  % \@hangfrom{\makebox[2.1cm][l]{\textbf{Keywords:}}}#1
}
%%
%%  定义“英文摘要”环境、“英文关键字”命令
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%  定义“目录”命令
%% 
\pretocmd{\tableofcontents}{
  \newpage
  \checkoddpage
  % \ifoddpage
  %     \newpage
  %   \else
  %     \blankpage
  %   \fi
  \newpage
  \fancyhf{}
  \renewcommand{\headrulewidth}{0.0pt}
  \ifchinesebook{
    % \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\selectfont 目录}
    \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}}
    \pdfbookmark{目录}{toc}
  }{
    % \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\selectfont Contents}
    \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}}
    \pdfbookmark{Contents}{toc}
  }
}{}{}
% 定义该模板表格目录
\newcommand{\thesisContents}{
  \tableofcontents
}
%%
%%  定义“目录”命令
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%  定义“主要符号对照表”、“缩略词表”、“个人简历”、“研究成果”
%% 
% 插入封面
\newcommand{\thesisTitlePage}{
  % \thispagestyle{fancy}
  \ifchinesebook{
    \includepdf[pages={1}]{pics/titlepage.pdf}
  }{}
  % \checkoddpage
  % \ifoddpage
  %     \newpage
  %   \else
  %     \blankpage
  %   \fi
}
% 插入声明页
\newcommand{\thesisDeclarationPage}{
  % \thispagestyle{fancy}
  \ifchinesebook{
    \includepdf[pages={1}]{pics/declarationpage.pdf}
  }{}
  \checkoddpage
  % \ifoddpage
  %     \newpage
  %   \else
  %     \blankpage
  %   \fi
  \newpage
}
% 结论章节（不能编号）
\newcommand{\thesisChapterConclusion}{
  \ifchinesebook{
    % \chapter*{总结与展望} 
    \renewcommand{\thechapter}{总结与展望}
    % \addcontentsline{toc}{chapter}{总结与展望} 
  }{}
}
\newenvironment{thesisMainSymbol}{
  \ifchinesebook{
    \chapter*{\heiti\fontsize{18pt}{21.6pt}\selectfont 主要符号对照表} 
    \addcontentsline{toc}{chapter}{主要符号对照表} 
  }{}
  \begin{center}
    \renewcommand\arraystretch{1.2}
    \begin{longtable}{p{7cm}p{7cm}} % 设置列宽
      \textbf{符号} & \textbf{释义} \\
}{
    \end{longtable}
  \end{center}
}
\newenvironment{thesisAcronyms}{
  \ifchinesebook{
    \chapter*{\heiti\fontsize{18pt}{21.6pt}\selectfont 缩略词表} 
    \addcontentsline{toc}{chapter}{缩略词表} 
  }{}
  \begin{center}
    \renewcommand\arraystretch{1.2}
    \begin{longtable}{p{2cm}p{7cm}p{5cm}} % 设置列宽
      \textbf{缩略词} & \textbf{英文全称} & \textbf{中文全称} \\
}{
    \end{longtable}
  \end{center}
}
\newenvironment{thesisAcknowledgement}{
  \addtocontents{toc}{\protect\setcounter{tocdepth}{0}} % 只显示一级标题
  \setcounter{section}{0}
  \ifchinesebook{
    \chapter*{致谢}
    \addcontentsline{toc}{chapter}{致谢}
    \markboth{致谢}{致谢}
  }{}
  \thispagestyle{fancy}
}{}
\newenvironment{thesisResume}{
  \addtocontents{toc}{\protect\setcounter{tocdepth}{0}} % 只显示一级标题
  \setcounter{section}{0}
  \ifchinesebook{
    \chapter*{个人简历}
    \addcontentsline{toc}{chapter}{个人简历}
    \markboth{个人简历}{个人简历}
  }{}
  \titlespacing{\section}{0pt}{20pt}{0pt} % 设置setion间距
  \thispagestyle{fancy}
}{}
\newenvironment{thesisAccomplish}{
  \addtocontents{toc}{\protect\setcounter{tocdepth}{0}} % 只显示一级标题
  \setcounter{section}{0}
  \ifchinesebook{
    \chapter*{在学期间的研究成果及发表的学术论文}
    \addcontentsline{toc}{chapter}{在学期间的研究成果及发表的学术论文}
    \markboth{在学期间的研究成果及发表的学术论文}{在学期间的研究成果及发表的学术论文}
  }{}
  \renewcommand{\labelenumi}{[\theenumi]} % 给编号加上括号
  \titlespacing{\section}{0pt}{20pt}{0pt} % 设置setion间距，用于定义论文、专利、项目等
  \thispagestyle{fancy}
}{}
%%
%%  定义“主要符号对照表”、“缩略词表
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%  设置各级标题大小/段距、奇偶页眉名称
%% 
% 改变各级标题：\titleformat{command}[shape]{format}{label}{sep}{before}[after]
%   command：是要重新定义的各种标题命令，比如 \part，\chapter，\section，\subsection，\subsubsection，\paragraph，\subparagraph等；
%   shape：是用来设定段落形状的,可选的参数有hang、block、display等,详见 titlesec 文档;
%   format：用于定义标题外观,比如使标题居中、字体加粗等；
%   label：用于定义定义标题的标签,就是标题内容前面的标号；
%   sep：定义标题的标签与标题内容之间的间隔距离；
%   before：用于在标题内容前再加些内容；
%   after：用于在标题内容后再加些内容。
\titleformat{\chapter}[block]
  {\centering\fontsize{18pt}{10pt}\selectfont\strong\thispagestyle{fancy}}
  {\thechapter}{8pt}{}
\titleformat{\section}[block]
  {\fontsize{16pt}{14pt}\selectfont\strong}
  {\thesection}{7pt}{}
\titleformat{\subsection}[block]
  {\fontsize{14pt}{14pt}\selectfont\strong}
  {\thesubsection}{6pt}{}
\titleformat{\subsubsection}[block]
  {\fontsize{12pt}{12pt}\selectfont\strong}
  {\thesubsubsection}{6pt}{}

% 标题周距设置，\titlespacing*{标题命令}{左间距}{上间距}{下间距} [右间距]，用它可以设置每种层次标题与四周之间的距离。
\titlespacing{\chapter}{0pt}{0pt}{30pt}
\titlespacing{\section}{0pt}{24pt}{24pt}
\titlespacing{\subsection}{0.71cm}{15pt}{15pt}
\titlespacing{\subsubsection}{0.71cm}{9pt}{9pt}

% 奇、偶页眉
\newcommand{\standardheader}{
  \fancyhf{}
  \ifchinesebook{
    \fancyhead[CE]{\fontsize{10.5pt}{12.6pt}\selectfont \display@chineseheader} % 偶数页页眉使用这个
    \fancyhead[CO]{\fontsize{10.5pt}{12.6pt}\selectfont \zh@thetitle} % 奇数页页眉使用标题
  }{
    \fancyhead[CE]{\fontsize{10.5pt}{12.6pt}\selectfont\nouppercase \display@englishheader}
    \fancyhead[CO]{\fontsize{10.5pt}{12.6pt}\selectfont\nouppercase \en@thetitle}
  }
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\thepage}
}
%%
%%  设置各级标题大小/段距、奇偶页眉名称
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%







%\addtocontents{扩展名}{文本}   它可以将任意文本和相关格式命令写入目录或在创建目录时（如果是命令）则被执行，但它不会将命令写入目录。 文本可以是任意字符或\vspace、\newpage等调整某一条目格式的命令,一般在命令前加\protect。
\AddEverypageHook{\addtocontents{toc}{
  \protect\cftsetpnumwidth{\widthof{\thepage}-1pt}
}}

\AddEverypageHook{\addtocontents{lof}{
  \protect\cftsetpnumwidth{\widthof{\thepage}-1pt}
}}

\AddEverypageHook{\addtocontents{lot}{
  \protect\cftsetpnumwidth{\widthof{\thepage}-1pt}
}}

\tocloftpagestyle{fancy} % 用户自定义的奇页眉使用电子科技大学xxx，偶数使用标题，页脚页眉居中
\renewcommand{\cftchappagefont}{\normalfont}
\renewcommand\cftchapleader{\cftdotfill{\cftdotsep}}

\renewcommand{\cftdotsep}{0.4}

\setlength{\cftbeforetoctitleskip}{0pt}
\setlength{\cftaftertoctitleskip}{18pt}
\setlength{\cftbeforechapskip}{0pt}

\addtolength{\cftchapnumwidth}{25pt}

\cftsetindents{section}{21pt}{22pt}
\cftsetindents{subsection}{44pt}{31pt}
\cftsetindents{subsubsection}{76pt}{41pt}

\renewcommand{\cfttoctitlefont}{\fontsize{15pt}{15pt}\selectfont\strong}
\renewcommand\cftchapfont{\strong}

\newcommand{\zh@thetitle}{\chinesespace}
\newcommand{\zh@theauthor}{\chinesespace}
\newcommand{\zh@thedate}{\chinesespace}
\newcommand{\zh@theschool}{\chinesespace}
\newcommand{\zh@themajor}{\chinesespace}
\newcommand{\zh@theadvisor}{\chinesespace}

\newcommand{\en@thetitle}{\chinesespace}
\newcommand{\en@theauthor}{\chinesespace}
\newcommand{\en@thedate}{\chinesespace}
\newcommand{\en@theschool}{\chinesespace}
\newcommand{\en@themajor}{\chinesespace}
\newcommand{\en@theadvisor}{\chinesespace}

\newcommand{\thestudentnumber}{\chinesespace}

\renewcommand{\title}[2]{
  \renewcommand{\zh@thetitle}{#1}
  \renewcommand{\en@thetitle}{#2}
}

\renewcommand{\author}[2]{
  \renewcommand{\zh@theauthor}{#1}
  \renewcommand{\en@theauthor}{#2}
}

\renewcommand{\date}[2]{
  \renewcommand{\zh@thedate}{#1}
  \renewcommand{\en@thedate}{#2}
}

\newcommand{\major}[2]{
  \renewcommand{\zh@themajor}{#1}
  \renewcommand{\en@themajor}{#2}
}

\newcommand{\school}[2]{
  \renewcommand{\zh@theschool}{#1}
  \renewcommand{\en@theschool}{#2}
}

\newcommand{\advisor}[2]{
  \renewcommand{\zh@theadvisor}{#1}
  \renewcommand{\en@theadvisor}{#2}
}

\newcommand{\studentnumber}[1]{
  \renewcommand{\thestudentnumber}{#1}
}

\newcommand{\thedateoral}{}
\newcommand{\thedatesubmit}{}
\newcommand{\thedateconfer}{年\chinesespace 月}

\newcommand{\setdate}[2][]{ 
\ifthenelse{\equal{#1}{oral}}{
  \renewcommand{\thedateoral}{#2}
}{}
\ifthenelse{\equal{#1}{submit}}{
  \renewcommand{\thedatesubmit}{#2}
}{}
\ifthenelse{\equal{#1}{confer}}{
  \renewcommand{\thedateconfer}{#2}
}{}
}

\renewcommand{\strong}{\heiti}

% \DeclareOption{选项}{代码}其中的选项就是选项的名称，而代码就是选项要执行的指令集。
\DeclareOption{english}{
  \newcommand{\englishbook}{}
  \renewcommand{\thechapter}{Chapter \arabic{chapter}}
  \addtolength{\cftchapnumwidth}{12pt}
  \renewcommand{\strong}{\bfseries}
}

\newcommand{\ifchinesebook}[2]{
  \ifthenelse{\isundefined{\englishbook}}{#1}{#2}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
%%  定义各种学位毕业论文基础字段  
%% 
% 定义学士毕业论文相关字段
\DeclareOption{bachelor}{
  \def\chinesedegreename{本科}
  \def\englishdegreename{Bachelor}
  \def\chinesebooktitle{学士学位论文}
  \def\englishbooktitle{Bachelor Thesis}
  \def\display@chineseheader{福州大学学士学位论文}
  \def\display@englishheader{Bachelor Thesis of Fuzhou University}
}
\newcommand{\ifbachelor}[2]{
  \ifthenelse{\equal{\englishdegreename}{Bachelor}}{#1}{#2}
}
% 定义硕士毕业论文相关字段
\DeclareOption{master}{
  \def\chinesedegreename{硕士}
  \def\englishdegreename{Master}
  \def\chinesebooktitle{硕士学位论文}
  \def\englishbooktitle{Master Thesis}
  \def\display@chineseheader{福州大学硕士学位论文}
  \def\display@englishheader{Master Thesis of Fuzhou University}
}
% 定义专业硕士毕业论文相关字段
\DeclareOption{promaster}{
  \def\chinesedegreename{专业硕士}
  \def\englishdegreename{Professional Master}
  \def\chinesebooktitle{专业学位硕士学位论文}
  \def\englishbooktitle{Master Thesis for Professional Degree}
  \def\display@chineseheader{福州大学硕士学位论文}
  \def\display@englishheader{Professional Master Thesis of Fuzhou University}
}
% 定义博士毕业论文相关字段
\DeclareOption{doctor}{
  \def\chinesedegreename{博士}
  \def\englishdegreename{Doctor}
  \def\chinesebooktitle{博士学位论文}
  \def\englishbooktitle{Doctoral Dissertation}
  \def\display@chineseheader{福州大学博士学位论文}
  \def\display@englishheader{Doctoral Dissertation of Fuzhou University}
}
% 定义博士毕业论文相关字段
\DeclareOption{engdoctor}{
  \def\chinesedegreename{工程博士}
  \def\englishdegreename{Engineering Doctor}
  \def\chinesebooktitle{工程博士学位论文}
  \def\englishbooktitle{Engineering Doctoral Dissertation}
  \def\display@chineseheader{福州大学博士学位论文}
  \def\display@englishheader{Engineering Doctoral Dissertation of Fuzhou University}
}
\ExecuteOptions{doctor} % 默认为博士论文
%% 
%%  定义各种学位毕业论文基础字段  
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



\ProcessOptions\relax % 所有的可选项声明过之后，未执行相应代码，使用命令：/ProcessOptions/relax

% 更改默认值为指定值，如将目录标题名改为“目 录”
\ifchinesebook{
  \renewcommand{\contentsname}{目录}
  \renewcommand{\bibname}{参考文献}
  \renewcommand{\figurename}{图}
  \renewcommand{\tablename}{表}
  \renewcommand{\listfigurename}{图目录}
  \renewcommand{\listtablename}{表目录}
}{}

% 图目录是存放在.lof目录的文件下
\pretocmd{\listoffigures}{
  \newpage % 新建一页
  \fancyhf{} %初始化页码页脚布局
  \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\selectfont\listfigurename}
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}} % 罗马页码居中显示
  \ifchinesebook{
    \addtolength{\cftfignumwidth}{12pt}
    \renewcommand{\cftfigpresnum}{\figurename} % 条目编号前内容
  }{
    \addtolength{\cftfignumwidth}{32pt} % 设置长度命令，使命令\cftfignumwidth的长度设置为12pt，条目编号与条目内容之间占用的宽度, 例如：图 1-2 [\cftfignumwidth] 电子战飞机
    \renewcommand{\cftfigpresnum}{\figurename~}
  }
  \addtocontents{toc}{\protect\setcounter{tocdepth}{-1}} % 将目录深度设置为-1
}{}{}
\newcommand{\thesisfigurelist}{
  \listoffigures
}

% 表目录是存放在.lot目录的文件下
\pretocmd{\listoftables}{
    \newpage
  \fancyhf{}
  \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\selectfont\listtablename}
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}}
  \ifchinesebook{
    \addtolength{\cfttabnumwidth}{12pt}
    \renewcommand{\cfttabpresnum}{\tablename} % 条目编号前内容 
  }{
    \addtolength{\cfttabnumwidth}{32pt} % 条目编号占用宽度，条目编号与条目内容之间占用的宽度, 例如：表1-1 [\cftfignumwidth] 参数设置
    \renewcommand{\cfttabpresnum}{\tablename~}
  }
  \addtocontents{toc}{\protect\setcounter{tocdepth}{-1}} % 将目录深度设置为-1，目录中只显示一级标题
}{}{}
% 定义该模板的表目录
\newcommand{\thesistablelist}{
  \listoftables
}




\ifchinesebook{
  \SetAlgorithmName{算法}{算法}{算法列表}
}{
  \SetAlgorithmName{Algorithm}{Algorithm}{List of Algorithms}
}
\renewcommand\thealgocf{\arabic{chapter}-\arabic{algocf}}
\SetAlgoCaptionSeparator{\null}
\AtBeginEnvironment{algorithm}{\vspace{9pt}} % 与正文的上一行垂直间隔9pt
\AfterEndEnvironment{algorithm}{\vspace{9pt}}

% 设置词汇表排版规则
% \renewcommand*{\glossarypreamble}{\vspace{-9pt}}



\defglsentryfmt{%
  \ifglshaslong{\glslabel}{%
    \glsgenacfmt%
  }{%
    \ifglsused{\glslabel}{%
      \glsgenentryfmt%
    }{%
      \glsgenentryfmt%
    }%
  }%
}




\newcommand{\makecover}{
  \thispagestyle{empty}
  \setlength{\extrarowheight}{9pt}
  \ifchinesebook{\pdfbookmark{封面}{cover}}{\pdfbookmark{Cover}{cover}}
  \begin{center}
    \ifbachelor{\includegraphics{bachelor_font.pdf} \\}{
      \fontsize{22pt}{22pt}\selectfont 电\hspace{0.5em}子\hspace{0.5em}科\hspace{0.5em}技%
      \hspace{0.5em}大\hspace{0.5em}学 \\[7bp]}
    \fontsize{12pt}{12pt}\selectfont UNIVERSITY OF ELECTRONIC SCIENCE
      AND TECHNOLOGY OF CHINA \\[36bp]
    \ifbachelor{\fontsize{42pt}{42pt}\selectfont{\bfseries\chinesebooktitle} \\[24bp]}{
      \fontsize{42pt}{42pt}\selectfont\chinesebooktitle \\[24bp]}
    \fontsize{16pt}{16pt}\selectfont
      \textnormal{\MakeUppercase{\englishbooktitle}} \\[48bp]
    \ifbachelor{
      %\vspace{0.4cm}
      \includegraphics[width=180bp]{logo.pdf} \\[40bp]
    }{\includegraphics[width=180bp]{logo.pdf} \\[40bp]}
    \begin{tabular}{lp{4.2in}}
      \bfseries\fontsize{18pt}{18pt}\selectfont 论文题目 & \multirow[t]{2}{4.2in}{
          \centering
            \bfseries\fontsize{18pt}{18pt}\selectfont
            \zh@thetitle
      } \\
      \cline{2-2}
              & \\
      \cline{2-2}
    \end{tabular}\hspace*{\fill} \\[\baselineskip]
    \begin{tabular}{>{\bfseries\fontsize{16pt}{16pt}\selectfont}l
        >{\centering\arraybackslash\bfseries\fontsize{16pt}{16pt}\selectfont}
        p{3.77in}p{15pt}}
      学科专业 & \zh@themajor &\\
      \cline{2-2}
      学\chinesespace\chinesespace 号 & \thestudentnumber & \\
      \cline{2-2}
      作者姓名 & \zh@theauthor &\\
      \cline{2-2}
      指导老师 & \zh@theadvisor &\\
      \cline{2-2}
      学\chinesespace\chinesespace 院 & \zh@theschool &\\
      \cline{2-2}
    \end{tabular}
  \end{center}

  \ifbachelor{}{\thetitlepage}

  \newpage
  \setcounter{page}{1}
  \setlength{\extrarowheight}{2pt}
}

\newcommand{\thetitlepage}{
  \newpage
  \thispagestyle{empty}

\noindent 分类号 \rule[-3pt]{2.5in}{0.5pt} 密级 \rule[-3pt]{2.5in}{0.5pt} \\[12bp]
UDC\textsuperscript{ 注1} \rule[-3pt]{2.5in}{0.5pt} \\[12bp]

\begin{center}
  \fontsize{36pt}{36pt}\selectfont{
    学\chinesespace 位\chinesespace 论\chinesespace 文
  } \\[48bp]

  \fontsize{16pt}{16pt}\selectfont{\bfseries\zh@thetitle} \\
  \vspace{-15pt}
  \rule{5.9in}{.5pt} \\
  \fontsize{12pt}{12pt}\selectfont（题名和副题名）\\[36bp]
  \fontsize{16pt}{16pt}\selectfont{\bfseries\zh@theauthor} \\
  \vspace{-15pt}
  \rule{1.63in}{.5pt} \\
  \fontsize{12pt}{12pt}\selectfont（作者姓名） \\[36bp]

  \begin{tabular}{>{\fontsize{12pt}{12pt}\selectfont}l
      >{\centering\arraybackslash\fontsize{16pt}{16pt}\selectfont}
      p{4.45in}}
      指导老师 & {\bfseries\zh@theadvisor} \\
    \cline{2-2}
      & {\bfseries 电子科技大学\chinesespace 成都} \\
    \cline{2-2}
    & \fontsize{12pt}{12pt}\selectfont（姓名、职称、单位名称）
  \end{tabular}  \\[36bp]
\end{center}

  \noindent
  \begin{tabular}{>{\fontsize{12pt}{12pt}\selectfont}l
      >{\centering\arraybackslash\fontsize{14pt}{14pt}\bfseries\selectfont}
      p{1.0in}
      >{\fontsize{12pt}{12pt}\selectfont}l
      >{\centering\arraybackslash\fontsize{14pt}{14pt}\bfseries\selectfont}
      p{2.50in}}
      申请学位级别 & \chinesedegreename &
      学科专业 & \zh@themajor \\
    \cline{2-2}
    \cline{4-4}
  \end{tabular} \\
  \begin{tabular}{>{\fontsize{12pt}{12pt}\selectfont}l
      >{\centering\arraybackslash\fontsize{14pt}{14pt}\bfseries\selectfont}
      p{1.59in}
      >{\fontsize{12pt}{12pt}\selectfont}l
      >{\centering\arraybackslash\fontsize{14pt}{14pt}\bfseries\selectfont}
      p{1.59in}}
      提交论文日期 & \thedatesubmit &
      论文答辩日期 & \thedateoral \\
    \cline{2-2}
    \cline{4-4}
  \end{tabular} \\
  \begin{tabular}{>{\fontsize{12pt}{12pt}\selectfont}l
      >{\centering\arraybackslash\fontsize{14pt}{14pt}\bfseries\selectfont}
      p{4.02in}}
      学位授予单位和日期 & 电子科技大学\chinesespace{} \thedateconfer \\
    \cline{2-2}
  \end{tabular} \\
  \begin{tabular}{>{\fontsize{12pt}{12pt}\selectfont}l
      >{\centering\arraybackslash\fontsize{14pt}{14pt}\heiti\selectfont}
      p{2.29in}}
      答辩委员会主席 & \\
    \cline{2-2}
  \end{tabular} \\
  \begin{tabular}{>{\fontsize{12pt}{12pt}\selectfont}l
      >{\centering\arraybackslash\fontsize{14pt}{14pt}\heiti\selectfont}
      p{5.03in}}
      评阅人 & \\
    \cline{2-2}
  \end{tabular}

\vspace{0.54in}
\noindent
\hspace{12pt}注1：注明《国际十进分类法UDC》的类号。

\newpage
\thispagestyle{empty}\null
\par{\vspace{2.3cm}}
\noindent
\begin{minipage}[t][1.52cm][t]{\textwidth}
  \fontsize{18pt}{20pt}\selectfont
  \bfseries\centering\en@thetitle
\end{minipage}
\par{\vspace{6.3cm}}
\noindent
\begin{minipage}[t][1.52cm][t]{\textwidth}
  \fontsize{15pt}{17pt}\selectfont
  \centering\noindent
  A \englishbooktitle{} Submitted to \\
  University of Electronic Science and Technology of China
\end{minipage}
\par{\vspace{3.2cm}}
\noindent
\begin{tabular}{>{\fontsize{16pt}{16pt}\selectfont}r
  >{\centering\arraybackslash\bfseries\fontsize{16pt}{16pt}\selectfont}
  p{10.6cm}}
  Discipline: & \multirow[t]{2}{*}{\en@themajor} \\
\cline{2-2}
& \\
\cline{2-2}
Author: & \en@theauthor \\
\cline{2-2}
Student ID: & \thestudentnumber \\
\cline{2-2}
Supervisor: & \en@theadvisor \\
\cline{2-2}
School: & \en@theschool \\
\cline{2-2}
\end{tabular}
}

\newcommand{\bindpdfcover}[1]{
  \ifchinesebook{\pdfbookmark{封面}{cover}}{\pdfbookmark{Cover}{cover}}
  \includepdf[pages=-]{#1}
  \newpage\setcounter{page}{0}\setcounter{pseudopage}{0}
}

\newcommand{\originalitydeclaration}{
\newpage
\thispagestyle{empty}
\begin{spacing}{2.142}
  \ifchinesebook{\pdfbookmark{独创性声明}{originalitydeclaration}}
    {\pdfbookmark{Originality Declaration}{originalitydeclaration}}
  \noindent\begin{center}
  \fontsize{18pt}{20pt}\selectfont\bfseries 独创性声明
  \end{center}
    \par{\fontsize{14pt}{16pt}\selectfont\noindent\null\hspace{28pt}%
    本人声明所呈交的学位论文是本人在导师指导下进行的研究工作及取得的研究成果。%
    据我所知，除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究成果，%
    也不包含为获得电子科技大学或其它教育机构的学位或证书而使用过的材料。%
    与我一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示谢意。}
  \\[14pt]
  \fontsize{14pt}{16pt}\selectfont\noindent\null\hspace{35pt}作者签名：\rule[-3pt]{4.1cm}{0.5pt}\hspace{42pt}%
  日期：\chinesespace\chinesespace 年\hspace{21pt}月\hspace{21pt}日 \\
  \noindent\begin{center}
    \fontsize{18pt}{20pt}\selectfont\bfseries 论文使用授权
  \end{center}
  \par{\fontsize{14pt}{16pt}\selectfont\noindent\null\hspace{28pt}%
    本学位论文作者完全了解电子科技大学有关保留、使用学位论文的规定，%
    有权保留并向国家有关部门或机构送交论文的复印件和磁盘，允许论文被查阅和借阅。%
    本人授权电子科技大学可以将学位论文的全部或部分内容编入有关数据库进行检索，%
    可以采用影印、缩印或扫描等复制手段保存、汇编学位论文。}
  \par{\fontsize{14pt}{16pt}\selectfont\noindent\null\hspace{28pt}
  \chineseleftparenthesis%
  保密的学位论文在解密后应遵守此规定%
  \chineserightparenthesis} \\[14pt]
  \fontsize{14pt}{16pt}\selectfont\noindent\null\hspace{35pt}作者签名：\rule[-3pt]{4.1cm}{0.5pt}\hspace{12pt}%
  导师签名：\rule[-3pt]{4.1cm}{0.5pt} \\
  \null\hspace{259pt} 日期：\chinesespace\chinesespace 年\hspace{21pt}月\hspace{21pt}日
\end{spacing}
\newpage\setcounter{page}{0}\setcounter{pseudopage}{0}
}

\newcommand{\signatureofdeclaration}[1]{
  \includepdf[pages=-]{#1}
  \newpage\setcounter{page}{0}\setcounter{pseudopage}{0}
}

\setlength{\extrarowheight}{2pt}





\renewcommand{\chaptermark}[1]{\markboth{\thechapter\hspace{5.25pt}#1}{}} % 修改页眉章节显示内容



\newcommand{\thesiscontent}{
  \newpage
  \clearpage{\thispagestyle{empty}\cleardoublepage}
  \addtocontents{toc}{\protect\setcounter{tocdepth}{2}}
  \standardheader
  \pagenumbering{arabic}
}

\pretocmd{\@chapter}{
  \ifdefined\@BODY
  \else
  \ifnum\value{chapter}=0
      \thesiscontent
    \fi
  \fi
}{}{}

\apptocmd{\@chapter}{
  \ifdefined\@BODY
  \else
    \ifnum\value{chapter}=1
      \ifchinesebook{\chaptermark{绪论}}{\chaptermark{Introduction}}
      \setcounter{page}{1}
    \fi
  \fi
  \def\@BODY{\null}
}{}{}



%\renewcommand*{\l@chapter}{\@dottedtocline{1}{1.5em}{2.3em}}

% 附录格式设置
\newcommand{\thesisappendix}{
  \newpage
  \appendix
  \interlinepenalty=0
  \ifchinesebook{}{\addtocontents{toc}{\protect\addtolength{\cftchapnumwidth}{12pt}}}
  \addtocontents{toc}{\protect\setcounter{tocdepth}{2}}
  \titleformat{\chapter}[block]
    {\centering\fontsize{15pt}{15pt}\selectfont\strong\thispagestyle{fancy}}{\thechapter}{7.5pt}{}
  \ifchinesebook{
    \renewcommand{\thechapter}{附录\Alph{chapter}}
    \renewcommand{\appendixname}{附录}
  }{
    \renewcommand{\thechapter}{Appendix \Alph{chapter}}
    \renewcommand{\appendixname}{Appendix}
  }
  \renewcommand{\thesection}{\Alph{chapter}.\arabic{section}}
  \renewcommand{\theequation}{\alph{chapter}-\arabic{equation}}
  \renewcommand{\thetable}{\alph{chapter}-\arabic{table}}
  \renewcommand{\thefigure}{\alph{chapter}-\arabic{figure}}
  \renewcommand{\thetheorem}{\alph{chapter}.\arabic{theorem}}
  \renewcommand{\theaxiom}{\alph{chapter}.\arabic{axiom}}
  \renewcommand{\thecorollary}{\alph{chapter}.\arabic{corollary}}
  \renewcommand{\thelemma}{\alph{chapter}.\arabic{lemma}}
  \renewcommand{\thedefinition}{\alph{chapter}.\arabic{definition}}
  \renewcommand{\theexample}{\alph{chapter}.\arabic{example}}
}
% 章节目录中的条目是由\chapter和\section等章节命令生成的，图或表格目录中的条目是由在浮动环境figure或table中的图表标题命令\caption生成的; 
% 而带星号的章节命令和图表标题命令以及摘要、参考文献等环境创建的无序号标题, 则不能进入目录。如果希望某个无序号标题也能被排入目录, 可在该标题或环境命令之后使用附加条目命令: \addcontentsline{扩展名}{条目类型} {条目文本}
%   扩展名：标题记录文件的扩展名, 如果所附加条目的是章节目录，扩展名为toc；如果是插图目录, 则为lof; 如果是表格目录则为lot。
%   条目类型：所附加条目的格式类型，如果扩展名为toc, 那条目类型可以是chapter、section等不带反斜杠的章节命令名; 如果为lof, 则是figure; 如果为lot, 则是table。
%   条目文本：可以是带星号命令或摘要等环境生成的无序号标题, 也可以是其他需要向目录添加的文字符号


\newcommand{\thesissingleappendix}{
  \newpage
  \appendix
  \interlinepenalty=0
  \addtocontents{toc}{\protect\setcounter{tocdepth}{2}}
  \titleformat{\chapter}[block]
    {\centering\fontsize{15pt}{15pt}\selectfont\strong\thispagestyle{fancy}}{附\hspace{12pt}录}{7.5pt}{}
  %\renewcommand{\thechapter}{附\hspace{12pt}录}
  \ifchinesebook{
    \renewcommand{\appendixname}{附录}
  }{
    \renewcommand{\appendixname}{Appendix}
  }
  
  \renewcommand{\thesection}{A.\arabic{section}}
  
  \renewcommand{\theequation}{a-\arabic{equation}}
  \renewcommand{\thetable}{a-\arabic{table}}
  \renewcommand{\thefigure}{a-\arabic{figure}}
  \renewcommand{\thetheorem}{a.\arabic{theorem}}
  \renewcommand{\theaxiom}{a.\arabic{axiom}}
  \renewcommand{\thecorollary}{a.\arabic{corollary}}
  \renewcommand{\thelemma}{a.\arabic{lemma}}
  \renewcommand{\thedefinition}{a.\arabic{definition}}
  \renewcommand{\theexample}{a.\arabic{example}}
  
  \ifchinesebook{
    \chapter*{附\hspace{12pt}录}
    \addcontentsline{toc}{chapter}{附录}
    \markboth{附录}{附录}
  }{
    \chapter*{Appendix}
    \addcontentsline{toc}{chapter}{Appendix}
    \markboth{Appendix}{Appendix}
  }
}

\ifchinesebook{
  \newcommand{\translation@originaltitle}{外文资料原文}
  \newcommand{\translation@chinesetitle}{外文资料译文}
}{
  \newcommand{\translation@originaltitle}{Original Text for Translation}
  \newcommand{\translation@chinesetitle}{Translated Text in Chinese}
}





\ifchinesebook{
  \newcommand{\thesisaccomplishtitle}{攻读\chinesedegreename{}学位期间取得的成果}
  \newcommand{\thesisbibname}{参考文献}
}{
  \newcommand{\thesisaccomplishtitle}{Research Results Obtained During the Study for \englishdegreename{} Degree}
  \newcommand{\thesisbibname}{References}
}

\renewcommand{\bibname}{\thesisbibname}
\renewcommand{\@biblabel}[1]{[#1]\hfill}

\newenvironment{thesisthebibliography}{
  \begin{thebibliography}{lo}
    \interlinepenalty=10000
    \begin{spacing}{1.667}
    \thispagestyle{fancy}
    \small
}{
    \end{spacing}
  \end{thebibliography}
}

\pretocmd{\bibliography}{
  \thispagestyle{fancy}
  \interlinepenalty=10000
  \begin{spacing}{1.667}
}{}{}

\apptocmd{\bibliography}{
  \end{spacing}
}{}{}
% 在正文中引用参考文献。BIBTEX程序在生成参考文献列表的时候，通常只列出用了\cite命令引用的那些。如果需要列出未被引用的文献，则需要 \nocite{ ⟨ citation ⟩ } 命令； 而 \nocite{} 则让所有未被引用的文献都列出。

\newcommand{\bstlabelmark}{lo}
\newcommand{\thesisloadbibliography}[2][]{
  \ifthenelse{
    \equal{#1}{large}
  }{
    \setlength{\labelsep}{3pt}
    \renewcommand{\bstlabelmark}{loo}
    \bibliographystyle{thesis}
    \bibliography{#2}
    \setlength{\labelsep}{6pt}
  }{
    \bibliographystyle{thesis} % 插入参考文献的样式.bst文件
    \bibliography{#2} % 参考文献格式，用于指定排版参考文献所使用的文献格式文件名.bib
  }
}

\newcommand{\thesisbibliography}{\thesisloadbibliography}



\newtheoremstyle{dotless}{0pt}{0pt}{\normalfont}{24pt}{\strong}{}{ }{}

% plain：默认样式，定理名称是正体，定理内容是斜体。
% definition：定理名称和定理内容都是正体。
% remark：定理名称是斜体，定理内容是正体
\theoremstyle{dotless}

%\renewcommand\@upn{\selectfont\heiti@letter}


% \newtheorem{环境名}[计数器名]{标题}[排序单位]
%   环境名：给所定义的定理类环境起的名称，它不得与现有环境重名，否则系统将提示出错。每定义一个环境名，系统就会自动创建一个同名的计数器, 用于为所定义的定理类环境排序。
%   计数器名：可选参数，如果希望所定义的定理类环境与已定义的某个定理类环境混合排序，就可在其中填写该环境的计数器名，也就是该定理类环境的环境名；如果省略这个可选参数，则表示本定理类环境单独排序。
%   标题：用于设置定理类表达式的标题，如theorem定理，证明和引理等。
%   排序单位：可选参数，用于设定排序单位，如果是chapter，则每一新章开始时所定义定理类环境的计数器清零；该可选参数的默认值是以全文为排序单位
\ifchinesebook{
  \newtheorem{theorem}{定理}[chapter]
  \newtheorem{axiom}[theorem]{公理}
  \newtheorem{corollary}[theorem]{推论}
  \newtheorem{lemma}[theorem]{引理}
  \newtheorem{definition}[theorem]{定义}
  \newtheorem{example}[theorem]{例子}
  \newtheorem{proposition}[theorem]{命题}
}{
  \newtheorem{theorem}{Theorem}[chapter]
  \newtheorem{axiom}[theorem]{Axiom}
  \newtheorem{corollary}[theorem]{Corollary}
  \newtheorem{lemma}[theorem]{Lemma}
  \newtheorem{definition}[theorem]{Definition}
  \newtheorem{example}[theorem]{Example}
  \newtheorem{proposition}[theorem]{Proposition}
}


\renewcommand{\thetheorem}{\arabic{chapter}.\arabic{theorem}}
\renewcommand{\theaxiom}{\arabic{chapter}.\arabic{axiom}}
\renewcommand{\thecorollary}{\arabic{chapter}.\arabic{corollary}}
\renewcommand{\thelemma}{\arabic{chapter}.\arabic{lemma}}
\renewcommand{\thedefinition}{\arabic{chapter}.\arabic{definition}}
\renewcommand{\theexample}{\arabic{chapter}.\arabic{example}}
\renewcommand{\qedsymbol}{$\blacksquare$} % 结束符，\blacksquare实心方框，\square空心方框
\ifchinesebook{
  \renewcommand{\proofname}{证明}
}{}

%\renewenvironment{新环境名称}[参数个数][参数默认值]{开始部分定义}{结束部分定义}
\renewenvironment{proof}[1][\proofname]{\par
  \pushQED{\qed} % 这里\pushQED{\qed}把\qed压入了QED这个堆栈，然后在环境结束的地方，通过\popQED把压入堆栈的最后一个元素弹出来。
  \normalfont % 正体
  \topsep0pt \partopsep0pt
  \trivlist
  \item[\hskip5\labelsep
    \strong % \strong也就是\heiti黑体，感觉可以改过来，如果没做任何变化的话
  #1\@addpunct{:}]\ignorespaces % \proofname后面:
}{
  \popQED\endtrivlist\@endpefalse
}
















% 重新定义引用命令及其格式，引用命令变更为\citing{}，引用形式变更为右上角
\newcommand{\citing}[1]{\textsuperscript{\cite{#1}}}

\setlist{noitemsep} % 取消列表中各个item之间的间距
\setlist{nolistsep} % 取消列表与上下文之间的间距

% \AtBeginDocument命令将code代码暂时内部保存，等到LaTeX执行\begin{document}和\end{document}命令时再执行。
% \AtEndDocument命令的code参数将在\end{document}命令开始执行、最终页面尚未完成、剩下的可浮动环境还没有处理的时候得到执行。如果code中的某些代码需要在页面和可浮动环境都已经完成排版任务之后才执行，那么这些代码之前必须插入一条\clearpage命令。
\AtBeginDocument{
  % 设置公示与正文上方、下方的间距
  % 何时应当使用短间距，取决于数学环境上方文本最后一行的长度
  \setlength{\abovedisplayskip}{12pt} % 普通间距
  \setlength{\belowdisplayskip}{12pt}
  \setlength{\belowdisplayshortskip}{8pt} % 短间距
  \setlength{\abovedisplayshortskip}{8pt}
}










%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
%%  未使用部分汇总
%% 
\newcommand{\thesistranslationoriginal}{
  \interlinepenalty=0
  \chapter*{\translation@originaltitle}
  \addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
  \renewcommand\thesection{\arabic{section}}
    \setcounter{section}{0}
    \addcontentsline{toc}{chapter}{\translation@originaltitle}
    \markboth{\translation@originaltitle}{\translation@originaltitle}
    \thispagestyle{fancy}
    \hypersetup{bookmarksdepth=0} 
    \renewcommand{\theequation}{\arabic{equation}}
    \renewcommand{\thetable}{\arabic{table}}
    \renewcommand{\thefigure}{\arabic{figure}}
    \renewcommand{\figurename}{Figure}
    \renewcommand{\tablename}{Table}
}

\newcommand{\thesistranslationchinese}{
  \interlinepenalty=0
  \addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
  \chapter*{\translation@chinesetitle}
  \renewcommand\thesection{\arabic{section}}
    \setcounter{section}{0} % section计数器清零
    \addcontentsline{toc}{chapter}{\translation@chinesetitle} % 把外文资料译文加入到目录
    \markboth{\translation@chinesetitle}{\translation@chinesetitle} % \markboth{<左面页眉>}{<右面页眉>}
    \thispagestyle{fancy} % 需要使用fancyhdr包，并提供了奇偶页不同的风格
    \hypersetup{bookmarksdepth=0} 
    \renewcommand{\theequation}{\arabic{equation}} % 显示公式计数器的值
    \renewcommand{\thetable}{\arabic{table}} % 显示表格计数器的值
    \renewcommand{\thefigure}{\arabic{figure}} % 显示插图计数器的值
    \renewcommand{\figurename}{图} % \figurename换成汉字图显示
    \renewcommand{\tablename}{表} % \tablename换成汉字表显示
}

\newcites{accomplish}{\thesisaccomplishtitle}
\newenvironment{thesistheaccomplish}{
  \addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
  \renewcommand\thesection{\arabic{section}}
  \setcounter{section}{0}
  \nociteaccomplish{*}
  \renewcommand{\bibname}{\thesisaccomplishtitle}
  \begin{thebibliography}{lo}
  \interlinepenalty=10000
  \setlength{\itemsep}{0bp}\setlength{\parskip}{0pt}
  \begin{spacing}{1.667}
  \thispagestyle{fancy} % 该页含有页眉和页脚
  \small
}{
  \end{spacing}
  \end{thebibliography}
  \renewcommand{\bibname}{\thesisbibname}
}
\newcommand{\thesisloadaccomplish}[1]{
  \nociteaccomplish{*}
  \renewcommand{\bibname}{\thesisaccomplishtitle}
  \renewcommand{\bstlabelmark}{lo}
  \thispagestyle{fancy}
  \begin{spacing}{1.667}
  \bibliographystyleaccomplish{thesis} 
  \bibliographyaccomplish{#1} 
  \end{spacing}
  \renewcommand{\bibname}{\thesisbibname}
}
\newcommand{\thesisaccomplish}{\thesisloadaccomplish}

\newcommand{\thesisacknowledgement}{
  \addtocontents{toc}{\protect\setcounter{tocdepth}{0}} % 只显示一级标题
  \setcounter{section}{0}
  \ifchinesebook{
    \chapter*{致\hspace{12pt}谢}
    \addcontentsline{toc}{chapter}{致\hspace{12pt}谢}
    \markboth{致谢}{致谢}
  }{
    \chapter*{Acknowledgements}
    \addcontentsline{toc}{chapter}{Acknowledgements}
    \markboth{Acknowledgements}{Acknowledgements}
  }
  \thispagestyle{fancy}
}

% 定义首字母缩略词样式
\newacronymstyle{acronym-uestc}{
  \ifglshaslong{\glslabel}{\glsgenacfmt}{\glsgenentryfmt}
}{
  \renewcommand*{\GenericAcronymFields}{
    first={\the\glslongtok\space\protect\paren{\the\glsshorttok}},
    description={\the\glslongtok}}
  \renewcommand*{\genacrfullformat}[2]{%
    \glsentrydesc{##1}~(\glsentrylong{##1},\space%
    \glsentryshort{##1})%
  }
  \renewcommand*{\acronymentry}[1]{%
    \acronymfont{\glsentryshort{##1}}%
  }
}
\setacronymstyle{acronym-uestc}

%% 
%%  未使用部分汇总
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%









\endinput
