#!/bin/bash

# age=21
# if [[ $age -gt 18 ]]
# then
#     echo "si"
# fi

array=(2,4,8,16)

for ((j = 0; j < 4; j++))
{   
    hilo=${array[$j]}
    # echo $hilo
    for (( i=0; i< 30; i++ ))
    {
        if [[ $j -eq 0 ]] 
        then
            echo "hilos = 2" >>tiempos720p.txt
            echo "hilos = 2" >>tiempos1080p.txt
            echo "hilos = 2" >>tiempos4k.txt
            ./cblur_omp ./imagenes/720p.bmp 720p_blur.bmp 2 10 >> tiempos720p.txt
            ./cblur_omp ./imagenes/1080p.bmp 1080p_blur.bmp 2 10 >> tiempos1080p.txt
            ./cblur_omp ./imagenes/4k.bmp 4k_blur.bmp 2 10 >> tiempos4k.txt
        elif [[ $j -eq 1 ]] 
        then
            echo "hilos = 4" >>tiempos720p.txt
            echo "hilos = 4" >>tiempos1080p.txt
            echo "hilos = 4" >>tiempos4k.txt
            ./cblur_omp ./imagenes/720p.bmp 720p_blur.bmp 4 10 >> tiempos720p.txt
            ./cblur_omp ./imagenes/1080p.bmp 1080p_blur.bmp 4 10 >> tiempos1080p.txt
            ./cblur_omp ./imagenes/4k.bmp 4k_blur.bmp 4 10 >> tiempos4k.txt
        elif [[ $j -eq 2 ]] 
        then
            echo "hilos = 8" >>tiempos720p.txt
            echo "hilos = 8" >>tiempos1080p.txt
            echo "hilos = 8" >>tiempos4k.txt
            ./cblur_omp ./imagenes/720p.bmp 720p_blur.bmp 8 10 >> tiempos720p.txt
            ./cblur_omp ./imagenes/1080p.bmp 1080p_blur.bmp 8 10 >> tiempos1080p.txt
            ./cblur_omp ./imagenes/4k.bmp 4k_blur.bmp 8 10 >> tiempos4k.txt
        elif [[ $j -eq 3 ]] 
        then
            echo "hilos = 16" >>tiempos720p.txt
            echo "hilos = 16" >>tiempos1080p.txt
            echo "hilos = 16" >>tiempos4k.txt
            ./cblur_omp ./imagenes/720p.bmp 720p_blur.bmp 16 10 >> tiempos720p.txt
            ./cblur_omp ./imagenes/1080p.bmp 1080p_blur.bmp 16 10 >> tiempos1080p.txt
            ./cblur_omp ./imagenes/4k.bmp 4k_blur.bmp 16 10 >> tiempos4k.txt
        fi
    }
}