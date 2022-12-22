#!/bin/bash


cd ~/Downloads/imagem/imagens-livros

if [ ! -d png ]
then 
	mkdir  png
fi	

for imagem in *.jpg
do
	imagem_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }')
convert $imagem_sem_extensao.jpg png/$imagem_sem_extensao.png
done

echo "arquvo convertido com sucesso"
ls -l ~/Downloads/imagem/imagens-livros/ | grep "png" 	

 
