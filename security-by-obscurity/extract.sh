#!/bin/zsh

file=password.x.a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.p.o.n.m.l.k.j.i.h.g.f.e.d.c.b.a.a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p
info=`file -I $file | cut -d ' ' -f 2`
echo $info

while [ $info = "application/zip;" ]; do
    unzip -f $file
    file=$file[0,-3]
    info=`file -I $file | cut -d ' ' -f 2`
done;


while [ $info = "application/x-xz;" ]; do
    mv $file $file.xz #coloca .xz
    unxz -k -f $file.xz #extrai
    novo=$file[0,-3] #extrair so tira o .xz, entao eu tiro o .letra agora
    mv $file $novo #muda o nome do arquivo
    mv $file.xz $file #tira o .xz do velho
    file=$novo
    info=`file -I $file | cut -d ' ' -f 2`
    echo $info
done;

while [ $info = "application/x-bzip2;" ]; do
    bunzip2 -k -f $file
    mv $file.out $file[0,-3] #move o .out pro arquivo sem o .letra
    file=$file[0,-3]
    info=`file -I $file | cut -d ' ' -f 2`
    echo $info
done;

while [ $info = "application/x-gzip;" ]; do
    mv $file $file.gz #coloca .gz
    gunzip -k -f $file.gz
    novo=$file[0,-3] #extrair so tira o .gz, entao eu tiro o .letra agora
    mv $file $novo #muda o nome do arquivo
    mv $file.gz $file #tira o .gz do velho
    file=$novo
    info=`file -I $file | cut -d ' ' -f 2`
    echo $info
done;

while [ $info = "application/zip;" ]; do
    unzip -f $file
    file=$file[0,-3]
    info=`file -I $file | cut -d ' ' -f 2`
done;
