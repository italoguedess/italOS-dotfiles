#! /bin/sh

# echo `mocp -Q %file` \( `mocp -Q %ct` - `mocp -Q %tt` \)
# echo `mocp -i`
echo `mocp -Q %file' \('%ct-%tt\)`

[ $# -ne 0 ] && `mocp $1`

# echo "${title:2:5}"
# echo "$(expr index $title .)"

# if  [ `mocp -Q %file` ]; then
#     [ `mocp -Q %song` ] && \
#         title="$(mocp -Q %song)" || \
#             title="$(mocp -Q %file)"
#     echo "$title " \( `mocp -Q %ct` - `mocp -Q %tt` \)
# else
#     echo "Moc-player"

# fi
