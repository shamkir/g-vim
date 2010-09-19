" Если у нас открыт Gvim
if has('gui')
    " Устанавливаем шрифт
    set guifont=monaco\ 10

    " Отключаем мигание курсора
    set guicursor=a:blinkon0

    " Удаляем тулбар в Gvim
    set guioptions-=T

    " Удаляем меню в Gvim
    set guioptions-=m

    " В Gvim убираем все полосы прокрутки
    set guioptions+=LlRrb
    set guioptions-=LlRrb
endif

" Классный автокомплит для комманд
set wildmenu

" Команда для мануала
"set keywordprg=man -s

" Включаем подсветку синтаксиса
syntax enable

colors bespin

" Включаем 256 цветов в терминале, мы ведь работаем из иксов?
" Нужно во многих терминалах, например в gnome-terminal
set t_Co=256

" Включаем несовместимость настроек с vi
set nocompatible

" Поиск по набору текста (очень полезная функция)
set incsearch

" Проверка закрытия скобок (подсвечивает парную скобку)
set showmatch

" Показ заголовка
set title

" Файловый менеджер всегда открывается в текущей директории при первом открытии файла
set acd

" Настройка отступов
" Количество пробелов, которыми символ табуляции отображается в тексте
set tabstop=4

" По умолчанию используется для регулирование ширины отступов в пробелах,
" добавляемых командами >> и <<
set shiftwidth=4

" В случае включения этой опции, нажатие Tab в начале строки (если быть
" точнее, до первого непробельного символа в строке) приведет к добавлению
" отступа, ширина которого соответствует shiftwidth)
set smarttab

" В режиме вставки заменяет символ табуляции на соответствующее количество
" пробелов. Так же влияет на отступы, добавляемые командами >> и <<.
set expandtab

" Умные отступы
" Делает то же, что и autoindent плюс автоматически выставляет отступы в
" нужных местах. В частности, отступ ставится после строки, которая
" заканчивается символом {, перед строкой, которая заканчивается символом },
" удаляется перед символом #, если он следует первым в строке и т.д.
" (подробнее help 'smartindent').
set smartindent

" Отключаем перенос строк
"set nowrap

" Включаем перенос строк
set wrap
" Что будет показано перед перенесенной строкой
set showbreak=->

" Включить автоотступы
set autoindent

" Выключаем надоедливый "звонок"
set novisualbell
set t_vb= 

" Кодировка
set encoding=utf8

" Кодировка текста по умолчанию должна совпадать с кодировкой терминала
set termencoding=utf-8

" Возможные кодировки файлов и последовательность определения
set fileencodings=utf8,cp1251

" Прячим курсор мыши когда печатаем
set mousehide

" Включаем нумерацию строк
set number
if version >= 700
  set numberwidth=5 " Ширина строки
end

" Подсветка текущей позиции курсора по горизонтали и вертикали
set cursorline
set cursorcolumn

" Показывать положение курсора всё время.
set ruler

" Поддержка мыши
set mouse=a
set mousemodel=popup

" Автозавершение. Слова откуда будем завершать
set complete="" " Из файла
set complete+=. " Из текущего буфера
set complete+=k " Из словаря
set complete+=b " Из других открытых буферов
set complete+=t " Из тегов
set completeopt+=preview " Включаем показ справки при автозавершении
set dictionary=/usr/share/dict/words " Словари для автодополнения

" Автоматическое закрытие скобок
imap [ []<LEFT>
imap ( ()<LEFT>
imap {<CR> {<CR>}<Esc>O

" Формат строки состояния
set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P
set laststatus=2

" Фолдинг
set foldcolumn=2 " Ширина строки где располагается фолдинг
set foldmethod=indent " Фолдинг по отступам
set foldnestmax=10      " Глубина фолдинга 10 уровней
set nofoldenable        " Не фолдить по умолчанию
set foldlevel=1         " This is just what i use


" Не выгружать буфер, когда переключаемся на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без
" необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden

" Включаем загрузку filetype плагинов
filetype plugin on

" Включаем загрузку indent плагинов
filetype indent on

" Вырубаем .swp файлы
set nobackup

" Выключаем резервные (~) файлы
set noswapfile

" Показывать табы всегда
set showtabline=2

" Показывать табуляцию текущей строки
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

" Включаем проверку орфографии русского и английского
"setlocal spell spelllang=en,ru

" Python (Подсвечиваем все что можно подсвечивать)
let python_highlight_all = 1

" Java
let java_highlight_all=1
let java_highlight_debug=1
let java_ignore_javadoc=1
let java_highlight_functions=1
let java_mark_braces_in_parens_as_errors=1

" Настройки цветов. Немного подкорректируем цвета и добавим свои фичи
" tabe line colors
highlight TabLineFill ctermfg=0
highlight TabLine ctermfg=7 ctermbg=0 cterm=none
highlight TabLineSel ctermfg=7 cterm=bold ctermbg=0

" number column colors
highlight LineNr cterm=bold ctermbg=0 cterm=none ctermfg=4

" fold colors
highlight Folded cterm=bold ctermbg=0 cterm=none ctermfg=4
highlight FoldColumn cterm=bold ctermbg=0 cterm=none ctermfg=4

" visual mode colors
highlight Visual ctermbg=7 ctermfg=4

" dictionary menu colors
highlight Pmenu ctermbg=7 ctermfg=0
highlight PmenuSel ctermbg=1 ctermfg=0
highlight CursorColumn cterm=bold ctermbg=0 cterm=none
highlight CursorLine cterm=bold ctermbg=0 cterm=none
highlight Search cterm=none ctermbg=7 ctermfg=4


" Задаем собственные функции для назначения имен заголовкам табов -->
    function MyTabLine()
        let tabline = ''

        " Формируем tabline для каждой вкладки -->
            for i in range(tabpagenr('$'))
                " Подсвечиваем заголовок выбранной в данный момент вкладки.
                if i + 1 == tabpagenr()
                    let tabline .= '%#TabLineSel#'
                else
                    let tabline .= '%#TabLine#'
                endif

                " Устанавливаем номер вкладки
                let tabline .= '%' . (i + 1) . 'T'

                " Получаем имя вкладки
                let tabline .= ' %{MyTabLabel(' . (i + 1) . ')} |'
            endfor
        " Формируем tabline для каждой вкладки <--

        " Заполняем лишнее пространство
        let tabline .= '%#TabLineFill#%T'

        " Выровненная по правому краю кнопка закрытия вкладки
        if tabpagenr('$') > 1
            let tabline .= '%=%#TabLine#%999XX'
        endif

        return tabline
    endfunction

    function MyTabLabel(n)
        let label = ''
        let buflist = tabpagebuflist(a:n)

        " Имя файла и номер вкладки -->
            let label = substitute(bufname(buflist[tabpagewinnr(a:n) - 1]), '.*/', '', '')

            if label == ''
                let label = '[No Name]'
            endif

            let label .= ' (' . a:n . ')'
        " Имя файла и номер вкладки <--

        " Определяем, есть ли во вкладке хотя бы один
        " модифицированный буфер.
        " -->
            for i in range(len(buflist))
                if getbufvar(buflist[i], "&modified")
                    let label = '[+] ' . label
                    break
                endif
            endfor
        " <--

        return label
    endfunction

    function MyGuiTabLabel()
        return '%{MyTabLabel(' . tabpagenr() . ')}'
    endfunction

    set tabline=%!MyTabLine()
    set guitablabel=%!MyGuiTabLabel()
" Задаем собственные функции для назначения имен заголовкам табов <-- 

" Для ZenCoding
let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1
