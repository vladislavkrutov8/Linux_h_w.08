#!/bin/bash

read -p "Укажите путь к дирректории: " DELDIR

if [ -e $DELDIR ]
        then
                echo 'Указанная дирректория найдена'
                cd $DELDIR
                echo 'Произвожу удаление'
                rm -v *.bak *.tmp *.backup
                echo 'Удаление завершено'
        else
                echo 'Указанная дирректория не найдена'
                exit 2
fi