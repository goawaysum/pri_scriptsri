sed -n '1,5p' $1|sed -r '/[a-Z]/d'>/tmp/aaaaaaaa.txt
sed -n '6,10p' $1|sed -r '/[a-Z]/s#[a-Z]##g'>>/tmp/aaaaaaaa.txt
\rm -f $1
mv /tmp/aaaaaaaa.txt $1







