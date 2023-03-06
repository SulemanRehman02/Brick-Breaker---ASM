.model large
.stack 100h
.data
;----------------------------------------Rules-----------------------------------
  Rules1     DB  0AH,0DH," "
   DB  0AH,0DH," "
   DB  0AH,0DH," "
   DB  0AH,0DH," "
   
   DB  0AH,0DH," "
   DB  0AH,0DH," "
   DB  0AH,0DH," " 
   DB  0AH,0DH," "
   DB 0ah,0Dh,"                  Hit Bricks with the ball "
   DB  0AH,0DH,"                  if all bricks break you"
   DB  0AH,0DH,"                  you will proceed to next level"
   DB  0AH,0DH,"                  next level has shorter paddle "
              DB  0AH,0DH,"                  and increased ball speed"
			  db 0ah ,0dh,"                  Press space to back$"
             
;-----------------------------------------Welcome Screen------------------------------
   WLCM      DB  0AH,0DH,"                  ================================"
   DB  0AH,0DH,"                  ================================"
   DB  0AH,0DH,"                  ================================"
   DB  0AH,0DH,"                  ================================"
   DB  0AH,0DH,"                  ================================"
   DB  0AH,0DH,"                  ================================"
              DB  0AH,0DH,"                  ================================"
              DB  0AH,0DH,"                  ========== WELCOME TO =========="
              DB  0AH,0DH,"                  ================================"
              DB  0AH,0DH,"                  ================================"
              DB  0AH,0DH,"                  ========= BRICK BREAKER ========"
              DB  0AH,0DH,"                  ================================"
              DB  0AH,0DH,"                  ================================"
			  db 0ah,0dh,"                  ================================="
			  db 0ah,0dh,"                  ================================="
			  db 0ah,0dh,"                  ================================="
			  DB  0AH,0DH,"                  ================================"
			  DB  0AH,0DH,"                  ================================"
			  DB  0AH,0DH,"                  ================================"
			  DB  0AH,0DH,"                  ================================"
			  DB  0AH,0DH,"                  ================================$"
			  
			  
;------------------------------------------Menu-----------------------------------
  Menu1     DB  0AH,0DH," "
   DB  0AH,0DH," "
   DB  0AH,0DH," "
   DB  0AH,0DH," "
   
   DB  0AH,0DH," "
   DB  0AH,0DH," "
   DB  0AH,0DH," " 
   DB  0AH,0DH," "
   DB 0ah,0Dh,"                  ================================"
   DB  0AH,0DH,"                  ================================"
   DB  0AH,0DH,"                  ================================"
   DB  0AH,0DH,"                  ================================"
              DB  0AH,0DH,"                  ================================"
              DB  0AH,0DH,"                  ========= 1.Start Game ========="
                      
              DB  0AH,0DH,"                  ========= 2.Rules =============="
               
			  db 0ah,0dh,"                  ============3.Exit==============$"
			  
paddlex dw 0
paddley dw 400
paddlexcopy dw 0
paddleycopy dw 400
paddlecounter dw 200

MovePaddlex dw 30
MovePaddley dw 400
MovePaddlexcopy dw 30
MovePaddleycopy dw 400

Lives dw 3
ballx dw 100
bally dw 200
ballxcopy dw 100
ballycopy dw 200
ballstartx dw 100
ballstarty dw 200
Moveballx dw 100
MoveBally dw 200
MoveBallxCopy dw 100
MoveBallyCopy dw 200
leftflag dw 0
rightflag dw 1
downflag dw 1
upflag dw 0
 filename db "SCORE.txt",0
    Filehandler dw ?
    buffer db 5000 dup("$")
    ouput db "Enter your score :$"
    space db "   ", '$'
;-----------------------------------Bricks---------------------------------------------
Brickx dw 100
Brickxcopy dw 100
bricky1 dw 80
Brickycopy1 dw 80
Bricky2 dw 150
Brickycopy2 dw 150

Brickx1 dw 200
Brickx1copy dw 200
bricky11 dw 80
Bricky12 dw 150

Brickx2 dw 300
Brickx2copy dw 300
bricky21 dw 80
Bricky22 dw 150

Brickx3 dw 400
Brickx3copy dw 400
bricky31 dw 80
Bricky32 dw 150
;--------------------------------Bricks Flags --------------------------------------
Brickflag1 dw 1
Brickflag2 dw 1
Brickflag3 dw 1
Brickflag4 dw 1
Brickflag5 dw 1
Brickflag6 dw 1
Brickflag7 dw 1
Brickflag8 dw 1
String db "Lives: $"
		Rect dw 0
		Rect1 dw 0 
		Rect2 dw 0000b
		Rect3 dw 0
		Rect4 dw 0
		Livesflag dw 1

String1 db "Score: $"
Rec dw 0
Rec1 dw 0
Rec3 dw 200
Rec4 dw 200
Score db 0
Scoreflag db 1
String2 db "Paused$"
Paused1 dw 300
Paused2 dw 300
Paused3 dw 300
Paused4 dw 300
output1 db "Input Name$" 
		score1 db 10 dup (?),'$'
		
		level11 db "Level1$"
		level22 db "Level2$"
		Level33 db "Level3$"

;-----------------------------Win Screen----------------------------------------
   Win     DB  0AH,0DH,"                  ================================"
   DB  0AH,0DH,"                  ================================"
   DB  0AH,0DH,"                  ================================"
   DB  0AH,0DH,"                  ================================"
   DB  0AH,0DH,"                  ================================"
   DB  0AH,0DH,"                  ================================"
              DB  0AH,0DH,"                  ================================"
              DB  0AH,0DH,"                  ========== Congratulations =========="
              DB  0AH,0DH,"                  ================================"
              DB  0AH,0DH,"                  ================================"
              DB  0AH,0DH,"                  ========= You have won  ========"
              DB  0AH,0DH,"                  ================================"
              DB  0AH,0DH,"                  ================================"
			  db 0ah,0dh,"                  =============================="
			  DB  0AH,0DH,"                  ================================"
			  DB  0AH,0DH,"                  ================================"
			  DB  0AH,0DH,"                  ================================"
			  DB  0AH,0DH,"                  ================================"
			  DB  0AH,0DH,"                  ================================$"
			  
			  
.code
jmp start
Rectangle1 macro p1,p2,p3,p4,p5
pusha
mov di ,0
.while(di < 50)
mov ax,p4
mov p1 ,ax
mov ax,0
mov si,0
.while(si < 90)
mov cx , p1
mov dx ,p2
mov ah ,0ch
mov al ,p3
int 10h
inc p1
inc si
.endw

inc p2
inc di
.endw
mov ax,p5
mov p2,ax
popa
endm 
PrintScore PROC uses ax bx cx dx si di
                             
Rectangle1 Rec,Rec1,0000b,Rec3,Rec4
mov ah,02h
mov dl,20h
mov dh,0h
int 10h
mov ah,09h
mov bl ,1111b
lea dx , String1
int 21h
     mov ah, 09h
mov al, Score
add al ,'0'
mov bl,1100b
mov cx ,1
int 10h


RET
PrintScore ENDP   
FileHandling1 Proc uses ax bx cx dx si di
mov ah, 3DH
    mov al, 2 ; 0 for reading, 1 for writing. 2 for both
    mov dx, offset filename
    int 21h
    mov Filehandler,ax

    mov ah,3fh
    mov cx,10 ;cx is how many bytes to read.
    mov dx,offset buffer ; dos functions like dx having pointers for some reason.
    mov bx,filehandler ; bx needs the file handle.
    int 21h ; call dos

    mov bx, 0
    mov bl, buffer

    mov ah, 3Eh
    mov bx, filehandler
    int 21h

    mov ax, 0
    mov al, score
    

 

    mov ah, 3DH
    mov al, 1 ; 0 for reading, 1 for writing. 2 for both
    mov dx, offset filename
    int 21h
    mov Filehandler,ax

    mov ax,0

    mov bx , filehandler

    mov cx,0
    mov dx, 0
    mov ah,42h
    mov al,2 ; 0 beginning of file, 2 end of file
    int 21h

    ;4. INT 21H Function 42H: To write in a file
    mov ah, 40H
    mov bx, Filehandler
    mov cx, 3
    mov dx, offset score
    int 21h

    mov ah, 40H
    mov bx, Filehandler
    mov cx, 3
    mov dx, offset space
    int 21h
	
	   mov ah, 40H
    mov bx, Filehandler
    mov cx, lengthof score1
    mov dx, offset score1
    int 21h
  mov ah, 40H
    mov bx, Filehandler
    mov cx, 3
    mov dx, offset space
    int 21h
	
	  mov ah, 40H
    mov bx, Filehandler
    mov cx, lengthof level11
    mov dx, offset level11
    int 21h
	
    mov ah, 3Eh
    mov bx, filehandler
    int 21h






ret
FileHandling1 endp 


FileHandling2 Proc uses ax bx cx dx si di
mov ah, 3DH
    mov al, 2 ; 0 for reading, 1 for writing. 2 for both
    mov dx, offset filename
    int 21h
    mov Filehandler,ax

    mov ah,3fh
    mov cx,10 ;cx is how many bytes to read.
    mov dx,offset buffer ; dos functions like dx having pointers for some reason.
    mov bx,filehandler ; bx needs the file handle.
    int 21h ; call dos

    mov bx, 0
    mov bl, buffer

    mov ah, 3Eh
    mov bx, filehandler
    int 21h

    mov ax, 0
    mov al, score
    

  

    mov ah, 3DH
    mov al, 1 ; 0 for reading, 1 for writing. 2 for both
    mov dx, offset filename
    int 21h
    mov Filehandler,ax

    mov ax,0

    mov bx , filehandler

    mov cx,0
    mov dx, 0
    mov ah,42h
    mov al,2 ; 0 beginning of file, 2 end of file
    int 21h

    ;4. INT 21H Function 42H: To write in a file
    mov ah, 40H
    mov bx, Filehandler
    mov cx, 3
    mov dx, offset score
    int 21h

    mov ah, 40H
    mov bx, Filehandler
    mov cx, 3
    mov dx, offset space
    int 21h
	
	   mov ah, 40H
    mov bx, Filehandler
    mov cx, lengthof score1
    mov dx, offset score1
    int 21h
  mov ah, 40H
    mov bx, Filehandler
    mov cx, 3
    mov dx, offset space
    int 21h
	
	  mov ah, 40H
    mov bx, Filehandler
    mov cx, lengthof level22
    mov dx, offset level22
    int 21h
	
    mov ah, 3Eh
    mov bx, filehandler
    int 21h






ret
FileHandling2 endp 


FileHandling3 Proc uses ax bx cx dx si di
mov ah, 3DH
    mov al, 2 ; 0 for reading, 1 for writing. 2 for both
    mov dx, offset filename
    int 21h
    mov Filehandler,ax

    mov ah,3fh
    mov cx,10 ;cx is how many bytes to read.
    mov dx,offset buffer ; dos functions like dx having pointers for some reason.
    mov bx,filehandler ; bx needs the file handle.
    int 21h ; call dos

    mov bx, 0
    mov bl, buffer

    mov ah, 3Eh
    mov bx, filehandler
    int 21h

    mov ax, 0
    mov al, score
    

 

    mov ah, 3DH
    mov al, 1 ; 0 for reading, 1 for writing. 2 for both
    mov dx, offset filename
    int 21h
    mov Filehandler,ax

    mov ax,0

    mov bx , filehandler

    mov cx,0
    mov dx, 0
    mov ah,42h
    mov al,2 ; 0 beginning of file, 2 end of file
    int 21h

    ;4. INT 21H Function 42H: To write in a file
    mov ah, 40H
    mov bx, Filehandler
    mov cx, 3
    mov dx, offset score
    int 21h

    mov ah, 40H
    mov bx, Filehandler
    mov cx, 3
    mov dx, offset space
    int 21h
	
	   mov ah, 40H
    mov bx, Filehandler
    mov cx, lengthof score1
    mov dx, offset score1
    int 21h
  mov ah, 40H
    mov bx, Filehandler
    mov cx, 3
    mov dx, offset space
    int 21h
	
	  mov ah, 40H
    mov bx, Filehandler
    mov cx, lengthof level33
    mov dx, offset level33
    int 21h
	
    mov ah, 3Eh
    mov bx, filehandler
    int 21h






ret
FileHandling3 endp 

Paused PROC uses ax bx cx dx si di
                             


Press:
mov ah,01h
int 16h
jz Press
mov ah,00h
int 16h
.if(al==32)
Rectangle1 Paused1,Paused2,000b,Paused3,Paused4
ret
.endif
jmp press


Paused ENDP          

PrintLives PROC uses ax bx cx dx si di
                             
Rectangle1 Rect,Rect1,0000b,Rect3,Rect4
mov ah,02h
mov dh,0h
mov dl ,0h
int 10h
mov ah,09h
mov bl ,1111b
lea dx , String
int 21h
     mov ah, 09h
mov al, 3
mov bl,1100b
mov cx,Lives
int 10h
mov ah,02h
mov dh,0h
mov dl,40h
int 10h
mov ah,09h
mov bl ,1111b
lea dx , Score1
int 21h

RET
PrintLives ENDP   



ballReset proc uses ax bx cx dx si di
mov ax ,ballstartx
mov MoveballxCopy ,ax
mov ax , ballstarty
mov MoveBallyCopy,ax
mov leftflag,0
mov downflag,1
mov rightflag,1
mov upflag ,0

ret
ballReset endp

Rules PROC uses ax bx cx dx si di
                             
        mov ah,00h
mov al,12h
int 10h
        MOV AH,9
        LEA DX,Rules1
        INT 21H        
		
Press:
mov ah,01h
int 16h
jz Press
mov ah,00h
int 16h
.if(al==32)
call Menu
ret
.endif
jmp press


RET
Rules ENDP 
Win1 PROC uses ax bx cx dx si di
                             
        mov ah,00h
mov al,12h
int 10h
        MOV AH,9
        LEA DX,Win
        INT 21H        
		
Press:
mov ah,01h
int 16h
jz Press
mov ah,00h
int 16h
.if(al==32)
call Menu
ret
.endif
jmp press


RET
Win1 ENDP 
InputName PROC uses ax bx cx dx si di
                             
       mov ah,00h
	   mov al,12h
	   int 10h
	   
mov dx,offset output1
    mov ah,09
    int 21h

    mov dx,offset score1
    mov ah,3fh
    int 21h

RET
InputName ENDP   
Rectangle macro p1,p2,p3,p4,p5
pusha
mov di ,0
.while(di < 50)
mov ax,p4
mov p1 ,ax
mov ax,0
mov si,0
.while(si < 70)
mov cx , p1
mov dx ,p2
mov ah ,0ch
mov al ,p3
int 10h
inc p1
inc si
.endw

inc p2
inc di
.endw
mov ax,p5
mov p2,ax
popa
endm 
CheckBricks2 proc uses ax bx cx dx si di
mov cx,ballxcopy
mov dx,ballycopy

.if(downflag==1 && rightflag==1 && Brickflag1!=-1)
.if(cx==90 && dx >= 90 && dx <= 140)
mov rightflag,0
mov leftflag,1
sub Brickflag1,1
.elseif(dx == 70 && cx >= 90 && cx <= 180 )
mov downflag,0
mov upflag,1
sub Brickflag1,1 
.endif

.elseif(downflag==1 && leftflag==1&& Brickflag1!=-1)
.if(cx==180 && dx >= 70 && dx<= 140)
mov leftflag,0
mov rightflag,1
sub Brickflag1,1
.elseif(dx == 90 && cx>=90 && cx<=180)
mov downflag,0
mov upflag,1
sub Brickflag1,1
.endif
.elseif(upflag ==  1 && rightflag==1&&Brickflag1!=-1)
.if(dx==140 && cx >=90 && cx<=180)
mov downflag,1
mov upflag,0
sub Brickflag1,1
.elseif(cx ==90 && dx>=70 && dx<=140)
mov rightflag,0
mov leftflag,1
sub Brickflag1,1
.endif
.elseif(leftflag ==1 && upflag==1&&Brickflag1!=-1)
.if(dx==140 && cx>=90 && cx<=180)
mov downflag,1
mov upflag,0
sub Brickflag1,1
.elseif(cx==180 && dx>=70 && dx<=140)
mov rightflag,1
mov leftflag,0
sub Brickflag1,1
.endif
.endif

.if(Brickflag1 == 0)
sub Brickflag1,1
Rectangle Brickx,bricky1,0000b,Brickxcopy,80
add Score,1
mov Scoreflag,1
.endif

.if(downflag==1 && rightflag==1 && Brickflag2!=-1)
.if(cx==90 && dx >= 140 && dx <= 210)
mov rightflag,0
mov leftflag,1
sub Brickflag2,1
.elseif(dx == 140 && cx >= 90 && cx <= 180 )
mov downflag,0
mov upflag,1
sub Brickflag2,1 
.endif
.elseif(downflag==1 && leftflag==1&& Brickflag2!=-1)
.if(cx==180 && dx >= 140 && dx<= 210)
mov leftflag,0
mov rightflag,1
sub Brickflag2,1
.elseif(dx == 140 && cx>=90 && cx<=180)
mov downflag,0
mov upflag,1
sub Brickflag2,1
.endif
.elseif(upflag ==  1 && rightflag==1&&Brickflag2!=-1)
.if(dx==210 && cx >=90 && cx<=180)
mov downflag,1
mov upflag,0
sub Brickflag2,1
.elseif(cx ==90 && dx>=140 && dx<=210)
mov rightflag,0
mov leftflag,1
sub Brickflag2,1
.endif
.elseif(leftflag ==1 && upflag==1&&Brickflag2!=-1)
.if(dx==210 && cx>=90 && cx<=180)
mov downflag,1
mov upflag,0
sub Brickflag2,1
.elseif(cx==180 && dx>=70 && dx<=140)
mov rightflag,1
mov leftflag,0
sub Brickflag2,1
.endif
.endif

.if(Brickflag2 == 0)
sub Brickflag2,1
Rectangle Brickx,bricky2,0000b,Brickxcopy,150
add Score,1
mov Scoreflag,1
.endif

.if(downflag==1 && rightflag==1 && Brickflag3!=-1)
.if(cx==190 && dx >= 70 && dx <= 140)
mov rightflag,0
mov leftflag,1
sub Brickflag3,1
.elseif(dx == 70 && cx >= 190 && cx <= 280 )
mov downflag,0
mov upflag,1
sub Brickflag3,1 
.endif

.elseif(downflag==1 && leftflag==1&& Brickflag3!=-1)
.if(cx==280 && dx >= 70 && dx<= 140)
mov leftflag,0
mov rightflag,1
sub Brickflag3,1
.elseif(dx == 70 && cx>=190 && cx<=280)
mov downflag,0
mov upflag,1
sub Brickflag3,1
.endif
.elseif(upflag ==  1 && rightflag==1&&Brickflag3!=-1)
.if(dx==140 && cx >=190 && cx<=280)
mov downflag,1
mov upflag,0
sub Brickflag3,1
.elseif(cx ==190 && dx>=70 && dx<=140)
mov rightflag,0
mov leftflag,1
sub Brickflag3,1
.endif
.elseif(leftflag ==1 && upflag==1&&Brickflag3!=-1)
.if(dx==140 && cx>=190 && cx<=280)
mov downflag,1
mov upflag,0
sub Brickflag3,1
.elseif(cx==280 && dx>=70 && dx<=140)
mov rightflag,1
mov leftflag,0
sub Brickflag3,1
.endif
.endif

.if(Brickflag3 == 0)
sub Brickflag3,1
Rectangle Brickx1,bricky11,0000b,Brickx1copy,80
add Score,1
mov Scoreflag,1
.endif


.if(downflag==1 && rightflag==1 && Brickflag4!=-1)
.if(cx==190 && dx >= 140 && dx <= 210)
mov rightflag,0
mov leftflag,1
sub Brickflag4,1
.elseif(dx == 140 && cx >= 190 && cx <= 280 )
mov downflag,0
mov upflag,1
sub Brickflag4,1 
.endif

.elseif(downflag==1 && leftflag==1&& Brickflag4!=-1)
.if(cx==280 && dx>= 140 && dx<= 210)
mov leftflag,0
mov rightflag,1
sub Brickflag4,1
.elseif(dx == 140 && cx>=190 && cx<=280)
mov downflag,0
mov upflag,1
sub Brickflag4,1
.endif

.elseif(upflag ==  1 && rightflag==1&&Brickflag4!=-1)
.if(dx==210 && cx >=190 && cx<=280)
mov downflag,1
mov upflag,0
sub Brickflag4,1
.elseif(cx ==190 && dx>=140 && dx<=210)
mov rightflag,0
mov leftflag,1
sub Brickflag4,1
.endif
.elseif(leftflag ==1 && upflag==1&&Brickflag4!=-1)
.if(dx==210 && cx>=190 && cx<=280)
mov downflag,1
mov upflag,0
sub Brickflag4,1
.elseif(cx==280 && dx>=140 && dx<=210)
mov rightflag,1
mov leftflag,0
sub Brickflag4,1
.endif
.endif

.if(Brickflag4 == 0)
sub Brickflag4,1
Rectangle Brickx1,bricky12,0b,Brickx1copy,150
add Score,1
mov Scoreflag,1
.endif

.if(downflag==1 && rightflag==1 && Brickflag5!=-1)
.if(cx==290 && dx >= 90 && dx <= 140)
mov rightflag,0
mov leftflag,1
sub Brickflag5,1
.elseif(dx == 70 && cx >= 290 && cx <= 380 )
mov downflag,0
mov upflag,1
sub Brickflag5,1 
.endif
.elseif(downflag==1 && leftflag==1&& Brickflag5!=-1)
.if(cx==380 && dx >= 70 && dx<= 140)
mov leftflag,0
mov rightflag,1
sub Brickflag5,1
.elseif(dx == 70 && cx>=290 && cx<=380)
mov downflag,0
mov upflag,1
sub Brickflag5,1
.endif

.elseif(upflag ==  1 && rightflag==1&&Brickflag5!=-1)
.if(dx==140 && cx >=290 && cx<=380)
mov downflag,1
mov upflag,0
sub Brickflag5,1
.elseif(cx ==290 && dx>=70 && dx<=140)
mov rightflag,0
mov leftflag,1
sub Brickflag5,1
.endif
.elseif(leftflag ==1 && upflag==1 && Brickflag5!=-1)
.if(dx==140 && cx>=290 && cx<=380)
mov downflag,1
mov upflag,0
sub Brickflag5,1
.elseif(cx==380 && dx>=70 && dx<=140)
mov rightflag,1
mov leftflag,0
sub Brickflag5,1
.endif
.endif

.if(Brickflag5 == 0)
sub Brickflag5,1
Rectangle Brickx2,bricky21,0b,Brickx2copy,80
add Score,1
mov Scoreflag,1
.endif

.if(downflag==1 && rightflag==1 && Brickflag6!=-1)
.if(cx==290 && dx >= 140 && dx <= 210)
mov rightflag,0
mov leftflag,1
sub Brickflag6,1
.elseif(dx == 70 && cx >= 290 && cx <= 380 )
mov downflag,0
mov upflag,1
sub Brickflag6,1 
.endif

.elseif(downflag==1 && leftflag==1&& Brickflag6!=-1)
.if(cx==380 && dx >= 140 && dx<= 210)
mov leftflag,0
mov rightflag,1
sub Brickflag6,1
.elseif(dx == 140 && cx>=290 && cx<=380)
mov downflag,0
mov upflag,1
sub Brickflag5,1
.endif

.elseif(upflag ==  1 && rightflag==1&&Brickflag6!=-1)
.if(dx==210 && cx >=290 && cx<=380)
mov downflag,1
mov upflag,0
sub Brickflag6,1
.elseif(cx ==290 && dx>=140 && dx<=210)
mov rightflag,0
mov leftflag,1
sub Brickflag6,1
.endif

.elseif(leftflag ==1 && upflag==1 && Brickflag6!=-1)
.if(dx==210 && cx>=290 && cx<=380)
mov downflag,1
mov upflag,0
sub Brickflag6,1
.elseif(cx==380 && dx>=140 && dx<=210)
mov rightflag,1
mov leftflag,0
sub Brickflag6,1
.endif
.endif

.if(Brickflag6 == 0)
sub Brickflag6,1
Rectangle Brickx2,bricky22,0b,Brickx2copy,150
add Score,1
mov Scoreflag,1
.endif

.if(downflag==1 && rightflag==1 && Brickflag7!=-1)
.if(cx==390 && dx >= 90 && dx <= 140)
mov rightflag,0
mov leftflag,1
sub Brickflag7,1
.elseif(dx == 70 && cx >= 390 && cx <= 480 )
mov downflag,0
mov upflag,1
sub Brickflag7,1 
.endif

.elseif(downflag==1 && leftflag==1&& Brickflag7!=-1)
.if(cx==480 && dx >= 70 && dx<= 140)
mov leftflag,0
mov rightflag,1
sub Brickflag7,1
.elseif(dx == 90 && cx>=390 && cx<=480)
mov downflag,0
mov upflag,1
sub Brickflag7,1

.endif
.elseif(upflag ==  1 && rightflag==1&&Brickflag7!=-1)
.if(dx==140 && cx >=390 && cx<=480)
mov downflag,1
mov upflag,0
sub Brickflag7,1
.elseif(cx ==390 && dx>=70 && dx<=140)
mov rightflag,0
mov leftflag,1
sub Brickflag7,1
.endif

.elseif(leftflag ==1 && upflag==1&&Brickflag7!=-1)
.if(dx==140 && cx>=390 && cx<=480)
mov downflag,1
mov upflag,0
sub Brickflag7,1
.elseif(cx==480 && dx>=70 && dx<=140)
mov rightflag,1
mov leftflag,0
sub Brickflag7,1
.endif
.endif

.if(Brickflag7 == 0)
sub Brickflag7,1
Rectangle Brickx3,bricky31,0b,Brickx3copy,80
add Score,1
mov Scoreflag,1
.endif

.if(downflag==1 && rightflag==1 && Brickflag8!=-1)
.if(cx==390 && dx > 140 && dx < 210)
mov rightflag,0
mov leftflag,1
sub Brickflag8,1
.elseif(dx == 140 && cx >= 390 && cx <= 480 )
mov downflag,0
mov upflag,1
sub Brickflag8,1 
.endif

.elseif(downflag==1 && leftflag==1&& Brickflag8!=-1)
.if(cx==480 && dx > 140 && dx< 210)
mov leftflag,0
mov rightflag,1
sub Brickflag8,1
.elseif(dx == 140 && cx>=390 && cx<=480)
mov downflag,0
mov upflag,1
sub Brickflag8,1
.endif

.elseif(upflag ==  1 && rightflag==1&&Brickflag8!=-1)
.if(dx==210 && cx >=390 && cx<=480)
mov downflag,1
mov upflag,0
sub Brickflag8,1
.elseif(cx ==390 && dx>140 && dx<210)
mov rightflag,0
mov leftflag,1
sub Brickflag8,1
.endif
.elseif(leftflag ==1 && upflag==1&&Brickflag8!=-1)
.if(dx==210 && cx>=390 && cx<=480)
mov downflag,1
mov upflag,0
sub Brickflag8,1
.elseif(cx==480 && dx>70 && dx<140)
mov rightflag,1
mov leftflag,0
sub Brickflag8,1
.endif
.endif

.if(Brickflag8 == 0)
sub Brickflag8,1
Rectangle Brickx3,bricky32,0b,Brickx3copy,150
add Score,1
mov Scoreflag,1
.endif



ret
CheckBricks2 endp


CheckBricks3 proc uses ax bx cx dx si di
mov cx,ballxcopy
mov dx,ballycopy

.if(downflag==1 && rightflag==1 && Brickflag1!=-1)
.if(cx==90 && dx >= 90 && dx <= 140)
mov rightflag,0
mov leftflag,1
sub Brickflag1,1
.elseif(dx == 70 && cx >= 90 && cx <= 180 )
mov downflag,0
mov upflag,1
sub Brickflag1,1 
.endif

.elseif(downflag==1 && leftflag==1&& Brickflag1!=-1)
.if(cx==180 && dx >= 70 && dx<= 140)
mov leftflag,0
mov rightflag,1
sub Brickflag1,1
.elseif(dx == 90 && cx>=90 && cx<=180)
mov downflag,0
mov upflag,1
sub Brickflag1,1
.endif
.elseif(upflag ==  1 && rightflag==1&&Brickflag1!=-1)
.if(dx==140 && cx >=90 && cx<=180)
mov downflag,1
mov upflag,0
sub Brickflag1,1
.elseif(cx ==90 && dx>=70 && dx<=140)
mov rightflag,0
mov leftflag,1
sub Brickflag1,1
.endif
.elseif(leftflag ==1 && upflag==1&&Brickflag1!=-1)
.if(dx==140 && cx>=90 && cx<=180)
mov downflag,1
mov upflag,0
sub Brickflag1,1
.elseif(cx==180 && dx>=70 && dx<=140)
mov rightflag,1
mov leftflag,0
sub Brickflag1,1
.endif
.endif

.if(Brickflag1 == 0)
sub Brickflag1,1
Rectangle Brickx,bricky1,0000b,Brickxcopy,80
.if(Brickflag2!=0)
mov Brickflag2,0
.endif
.if(Brickflag3!=0)
mov Brickflag3,0
.endif
.if(Brickflag4!=0)
mov Brickflag4,0
.endif
.if(Brickflag5!=0)
mov Brickflag5,0
.endif
add Score,1
mov Scoreflag,1
.endif

.if(downflag==1 && rightflag==1 && Brickflag2!=-1)
.if(cx==90 && dx >= 140 && dx <= 210)
mov rightflag,0
mov leftflag,1
sub Brickflag2,1
.elseif(dx == 140 && cx >= 90 && cx <= 180 )
mov downflag,0
mov upflag,1
sub Brickflag2,1 
.endif
.elseif(downflag==1 && leftflag==1&& Brickflag2!=-1)
.if(cx==180 && dx >= 140 && dx<= 210)
mov leftflag,0
mov rightflag,1
sub Brickflag2,1
.elseif(dx == 140 && cx>=90 && cx<=180)
mov downflag,0
mov upflag,1
sub Brickflag2,1
.endif
.elseif(upflag ==  1 && rightflag==1&&Brickflag2!=-1)
.if(dx==210 && cx >=90 && cx<=180)
mov downflag,1
mov upflag,0
sub Brickflag2,1
.elseif(cx ==90 && dx>=140 && dx<=210)
mov rightflag,0
mov leftflag,1
sub Brickflag2,1
.endif
.elseif(leftflag ==1 && upflag==1&&Brickflag2!=-1)
.if(dx==210 && cx>=90 && cx<=180)
mov downflag,1
mov upflag,0
sub Brickflag2,1
.elseif(cx==180 && dx>=70 && dx<=140)
mov rightflag,1
mov leftflag,0
sub Brickflag2,1
.endif
.endif

.if(Brickflag2 == 0)
sub Brickflag2,1
Rectangle Brickx,bricky2,0000b,Brickxcopy,150
add Score,1
mov Scoreflag,1
.endif

.if(downflag==1 && rightflag==1 && Brickflag3!=-1)
.if(cx==190 && dx >= 70 && dx <= 140)
mov rightflag,0
mov leftflag,1
sub Brickflag3,1
.elseif(dx == 70 && cx >= 190 && cx <= 280 )
mov downflag,0
mov upflag,1
sub Brickflag3,1 
.endif

.elseif(downflag==1 && leftflag==1&& Brickflag3!=-1)
.if(cx==280 && dx >= 70 && dx<= 140)
mov leftflag,0
mov rightflag,1
sub Brickflag3,1
.elseif(dx == 70 && cx>=190 && cx<=280)
mov downflag,0
mov upflag,1
sub Brickflag3,1
.endif
.elseif(upflag ==  1 && rightflag==1&&Brickflag3!=-1)
.if(dx==140 && cx >=190 && cx<=280)
mov downflag,1
mov upflag,0
sub Brickflag3,1
.elseif(cx ==190 && dx>=70 && dx<=140)
mov rightflag,0
mov leftflag,1
sub Brickflag3,1
.endif
.elseif(leftflag ==1 && upflag==1&&Brickflag3!=-1)
.if(dx==140 && cx>=190 && cx<=280)
mov downflag,1
mov upflag,0
sub Brickflag3,1
.elseif(cx==280 && dx>=70 && dx<=140)
mov rightflag,1
mov leftflag,0
sub Brickflag3,1
.endif
.endif

.if(Brickflag3 == 0)
sub Brickflag3,1
Rectangle Brickx1,bricky11,0000b,Brickx1copy,80
add Score,1
mov Scoreflag,1
.endif


.if(downflag==1 && rightflag==1 && Brickflag4!=-1)
.if(cx==190 && dx >= 140 && dx <= 210)
mov rightflag,0
mov leftflag,1
sub Brickflag4,1
.elseif(dx == 140 && cx >= 190 && cx <= 280 )
mov downflag,0
mov upflag,1
sub Brickflag4,1 
.endif

.elseif(downflag==1 && leftflag==1&& Brickflag4!=-1)
.if(cx==280 && dx>= 140 && dx<= 210)
mov leftflag,0
mov rightflag,1
sub Brickflag4,1
.elseif(dx == 140 && cx>=190 && cx<=280)
mov downflag,0
mov upflag,1
sub Brickflag4,1
.endif

.elseif(upflag ==  1 && rightflag==1&&Brickflag4!=-1)
.if(dx==210 && cx >=190 && cx<=280)
mov downflag,1
mov upflag,0
sub Brickflag4,1
.elseif(cx ==190 && dx>=140 && dx<=210)
mov rightflag,0
mov leftflag,1
sub Brickflag4,1
.endif
.elseif(leftflag ==1 && upflag==1&&Brickflag4!=-1)
.if(dx==210 && cx>=190 && cx<=280)
mov downflag,1
mov upflag,0
sub Brickflag4,1
.elseif(cx==280 && dx>=140 && dx<=210)
mov rightflag,1
mov leftflag,0
sub Brickflag4,1
.endif
.endif

.if(Brickflag4 == 0)
sub Brickflag4,1
Rectangle Brickx1,bricky12,0b,Brickx1copy,150
add Score,1
mov Scoreflag,1
.endif

.if(downflag==1 && rightflag==1 && Brickflag5!=-1)
.if(cx==290 && dx >= 90 && dx <= 140)
mov rightflag,0
mov leftflag,1
sub Brickflag5,1
.elseif(dx == 70 && cx >= 290 && cx <= 380 )
mov downflag,0
mov upflag,1
sub Brickflag5,1 
.endif
.elseif(downflag==1 && leftflag==1&& Brickflag5!=-1)
.if(cx==380 && dx >= 70 && dx<= 140)
mov leftflag,0
mov rightflag,1
sub Brickflag5,1
.elseif(dx == 70 && cx>=290 && cx<=380)
mov downflag,0
mov upflag,1
sub Brickflag5,1
.endif

.elseif(upflag ==  1 && rightflag==1&&Brickflag5!=-1)
.if(dx==140 && cx >=290 && cx<=380)
mov downflag,1
mov upflag,0
sub Brickflag5,1
.elseif(cx ==290 && dx>=70 && dx<=140)
mov rightflag,0
mov leftflag,1
sub Brickflag5,1
.endif
.elseif(leftflag ==1 && upflag==1 && Brickflag5!=-1)
.if(dx==140 && cx>=290 && cx<=380)
mov downflag,1
mov upflag,0
sub Brickflag5,1
.elseif(cx==380 && dx>=70 && dx<=140)
mov rightflag,1
mov leftflag,0
sub Brickflag5,1
.endif
.endif

.if(Brickflag5 == 0)
sub Brickflag5,1
Rectangle Brickx2,bricky21,0b,Brickx2copy,80
add Score,1
mov Scoreflag,1
.endif

.if(downflag==1 && rightflag==1 && Brickflag6!=-1)
.if(cx==290 && dx >= 140 && dx <= 210)
mov rightflag,0
mov leftflag,1
sub Brickflag6,1
.elseif(dx == 70 && cx >= 290 && cx <= 380 )
mov downflag,0
mov upflag,1
sub Brickflag6,1 
.endif

.elseif(downflag==1 && leftflag==1&& Brickflag6!=-1)
.if(cx==380 && dx >= 140 && dx<= 210)
mov leftflag,0
mov rightflag,1
sub Brickflag6,1
.elseif(dx == 140 && cx>=290 && cx<=380)
mov downflag,0
mov upflag,1
sub Brickflag5,1
.endif

.elseif(upflag ==  1 && rightflag==1&&Brickflag6!=-1)
.if(dx==210 && cx >=290 && cx<=380)
mov downflag,1
mov upflag,0
sub Brickflag6,1
.elseif(cx ==290 && dx>=140 && dx<=210)
mov rightflag,0
mov leftflag,1
sub Brickflag6,1
.endif

.elseif(leftflag ==1 && upflag==1 && Brickflag6!=-1)
.if(dx==210 && cx>=290 && cx<=380)
mov downflag,1
mov upflag,0
sub Brickflag6,1
.elseif(cx==380 && dx>=140 && dx<=210)
mov rightflag,1
mov leftflag,0
sub Brickflag6,1
.endif
.endif

.if(Brickflag6 == 0)
sub Brickflag6,1
Rectangle Brickx2,bricky22,0b,Brickx2copy,150
add Score,1
mov Scoreflag,1
.endif

.if(downflag==1 && rightflag==1 && Brickflag7!=-1)
.if(cx==390 && dx >= 90 && dx <= 140)
mov rightflag,0
mov leftflag,1
sub Brickflag7,1
.elseif(dx == 70 && cx >= 390 && cx <= 480 )
mov downflag,0
mov upflag,1
sub Brickflag7,1 
.endif

.elseif(downflag==1 && leftflag==1&& Brickflag7!=-1)
.if(cx==480 && dx >= 70 && dx<= 140)
mov leftflag,0
mov rightflag,1
sub Brickflag7,1
.elseif(dx == 90 && cx>=390 && cx<=480)
mov downflag,0
mov upflag,1
sub Brickflag7,1

.endif
.elseif(upflag ==  1 && rightflag==1&&Brickflag7!=-1)
.if(dx==140 && cx >=390 && cx<=480)
mov downflag,1
mov upflag,0
sub Brickflag7,1
.elseif(cx ==390 && dx>=70 && dx<=140)
mov rightflag,0
mov leftflag,1
sub Brickflag7,1
.endif

.elseif(leftflag ==1 && upflag==1&&Brickflag7!=-1)
.if(dx==140 && cx>=390 && cx<=480)
mov downflag,1
mov upflag,0
sub Brickflag7,1
.elseif(cx==480 && dx>=70 && dx<=140)
mov rightflag,1
mov leftflag,0
sub Brickflag7,1
.endif
.endif

.if(Brickflag7 == 0)
sub Brickflag7,1
Rectangle Brickx3,bricky31,0b,Brickx3copy,80
add Score,1
mov Scoreflag,1
.endif

.if(downflag==1 && rightflag==1 && Brickflag8!=-1)
.if(cx==390 && dx > 140 && dx < 210)
mov rightflag,0
mov leftflag,1
sub Brickflag8,1
.elseif(dx == 140 && cx >= 390 && cx <= 480 )
mov downflag,0
mov upflag,1
sub Brickflag8,1 
.endif

.elseif(downflag==1 && leftflag==1&& Brickflag8!=-1)
.if(cx==480 && dx > 140 && dx< 210)
mov leftflag,0
mov rightflag,1
sub Brickflag8,1
.elseif(dx == 140 && cx>=390 && cx<=480)
mov downflag,0
mov upflag,1
sub Brickflag8,1
.endif

.elseif(upflag ==  1 && rightflag==1&&Brickflag8!=-1)
.if(dx==210 && cx >=390 && cx<=480)
mov downflag,1
mov upflag,0
sub Brickflag8,1
.elseif(cx ==390 && dx>140 && dx<210)
mov rightflag,0
mov leftflag,1
sub Brickflag8,1
.endif
.elseif(leftflag ==1 && upflag==1&&Brickflag8!=-1)
.if(dx==210 && cx>=390 && cx<=480)
mov downflag,1
mov upflag,0
sub Brickflag8,1
.elseif(cx==480 && dx>70 && dx<140)
mov rightflag,1
mov leftflag,0
sub Brickflag8,1
.endif
.endif

.if(Brickflag8 == 0)
sub Brickflag8,1
Rectangle Brickx3,bricky32,0b,Brickx3copy,150
add Score,1
mov Scoreflag,1
.endif



ret
CheckBricks3 endp
MakeBricks Proc uses ax bx cx dx si di
Rectangle Brickx,bricky1,1011b,Brickxcopy,80
Rectangle Brickx,bricky2,1110b,Brickxcopy,150
Rectangle Brickx1,bricky11,1011b,Brickx1copy,80
Rectangle Brickx1,bricky12,1110b,Brickx1copy,150
Rectangle Brickx2,bricky21,1011b,Brickx2copy,80
Rectangle Brickx2,bricky22,1110b,Brickx2copy,150
Rectangle Brickx3,bricky31,1011b,Brickx3copy,80
Rectangle Brickx3,bricky32,1110b,Brickx3copy,150
ret
MakeBricks endp
Delayer proc uses ax bx cx dx si di
mov si,0
L2:

inc si
cmp si,20000
jne l2
ret
Delayer endp
Menu PROC uses ax bx cx dx si di
                             
        mov ah,00h
mov al,12h
int 10h
        MOV AH,9
        LEA DX,Menu1
        INT 21H        
		
Press:
mov ah,01h
int 16h
jz Press
mov ah,00h
int 16h
.if(al==49)
call InputName
call Game
ret
.endif
.if(al==50)
call Rules
.endif
.if(al==51)
ret
.endif
jmp press


RET
Menu ENDP  

WELCOME_SCR PROC uses ax bx cx dx si di
                             
        mov ah,00h
mov al,12h
int 10h
        MOV AH,9
        LEA DX,WLCM
        INT 21H        
		
Press:
mov ah,01h
int 16h
jz Press
mov ah,00h
int 16h
.if(al==32)
ret
.endif
jmp press


RET
WELCOME_SCR ENDP    

MakePaddle Proc uses ax bx cx dx si di
mov di,0
mov ax,paddleycopy
mov paddley,ax
.while(di<10)
mov ax,paddlexcopy
mov paddlex,ax


mov si,0
.while(si<paddlecounter)
mov cx,paddlex
mov dx,paddley
mov ah,0ch
mov al,1100b

int 10h
inc paddlex
inc si
.endw
inc paddley
inc di
.endw
ret
MakePaddle endp
MovePaddle Proc uses ax bx cx dx si di
mov di,0
mov ax,paddleycopy
mov paddley,ax
.while(di<10)
mov ax,paddlexcopy
mov paddlex,ax


mov si,0
.while(si<paddlecounter)
mov cx,paddlex
mov dx,paddley
mov ah,0ch
mov al,0000b

int 10h
inc paddlex
inc si
.endw
inc paddley
inc di
.endw
mov di ,0
mov ax,MovePaddleycopy
mov MovePaddley,ax
.while(di<10)
mov ax,MovePaddlexcopy
mov MovePaddlex,ax
mov si,0
.while(si<paddlecounter)
mov cx,MovePaddlex
mov dx,MovePaddley
mov ah,0ch
mov al,1100b
int 10h
inc MovePaddlex
inc si
.endw
inc MovePaddley
inc di
.endw
mov ax,MovePaddlexcopy
mov paddlexcopy,ax
Mov ax ,MovePaddleycopy
mov paddleycopy,ax

ret
MovePaddle endp

MakeBall Proc uses ax bx cx dx si di
mov di ,0
mov ax ,ballycopy
mov bally,ax
.while(di<10)
mov ax,ballxcopy
mov ballx,ax
mov si,0
.while(si<10)
mov cx,ballx
mov dx , bally
mov ah,0ch
mov al,1110b
int 10h
inc ballx
inc si
.endw
inc bally
inc di
.endw
ret
MakeBall endp
MoveBall Proc uses ax bx cx dx si di
mov di ,0
mov ax ,ballycopy
mov bally,ax
.while(di<10)
mov ax,ballxcopy
mov ballx,ax
mov si,0
.while(si<10)
mov cx,ballx
mov dx , bally
mov ah,0ch
mov al,0000b
int 10h
inc ballx
inc si
.endw
inc bally
inc di
.endw
mov di,0
mov ax,MoveBallyCopy
mov MoveBally,ax
.while(di<10)
mov ax,MoveBallxCopy
mov Moveballx,ax
mov si,0
.while(si<10)
mov cx,Moveballx
mov dx,MoveBally
mov ah,0ch
mov al,1110b
int 10h
inc Moveballx
inc si
.endw
inc MoveBally
inc di
.endw
mov ax,MoveBallxCopy
mov ballxcopy,ax
mov ax,MoveBallyCopy
mov ballycopy,ax


ret
MoveBall endp

Level1 Proc uses ax bx cx dx si di
mov ah,00h
mov al ,12h
int 10h

call MakePaddle
call MakeBricks
l1:

.if(Livesflag==1)
call PrintLives
mov Livesflag,0
.endif
.if(Scoreflag==1)
call PrintScore
mov Scoreflag,0
.endif
mov cx,ballxcopy
mov dx,ballycopy
call CheckBricks2
mov ax,0
mov ah,01h
int 16h
jz MoveballLabel
mov ah,00h
int 16h

.if(ah==4bh&&paddlexcopy>=10)
sub MovePaddlexcopy,10
call MovePaddle
jmp delayed
.endif
.if(ah==4dh&&paddlexcopy<=430)
add MovePaddlexcopy,10
call MovePaddle
jmp delayed
.endif
.if(al == 32)
call Paused
.endif


MoveballLabel:
call Delayer
delayed:
call MakeBall
.if(rightflag==1 &&  downflag==1)
.if(dx==460)
call ballReset
sub Lives,1
mov Livesflag,1
.elseif(cx==600)
mov rightflag,0
mov leftflag,1
.elseif(dx == 390)
.if(cx >  paddlexcopy)
mov ax,0
mov ax , paddlexcopy
add ax , 200
.if(cx < ax)
mov downflag,0
mov upflag,1
.endif
.endif
.endif
.elseif(rightflag==1 && upflag==1)
.if(dx==80)
mov downflag,1
mov upflag,0
.endif
.if(cx==600)
mov rightflag,0
mov leftflag,1
.endif
.elseif(leftflag==1 && upflag==1)
.if(dx==80)
mov upflag,0
mov downflag,1
.endif
.if(cx==20)
mov rightflag,1
mov leftflag,0
.endif
.elseif(leftflag==1 && downflag==1)
.if(dx==460)
call ballReset
sub lives,1
mov Livesflag,1

.endif
.if(cx==20)
mov rightflag,1
mov leftflag,0
.endif
.if(dx == 390)
.if(cx >  paddlexcopy)
mov ax,0
mov ax , paddlexcopy
add ax , 200
.if(cx < ax)
mov downflag,0
mov upflag,1
.endif
.endif
.endif
.endif

.if(rightflag==1 && downflag==1)
add MoveBallxCopy,1
add MoveBallyCopy,1
.elseif(rightflag==1 && upflag==1)
add MoveBallxCopy,1
sub MoveBallyCopy,1
.elseif(leftflag==1 && upflag==1)
sub MoveBallxCopy,1
sub MoveBallyCopy,1
.elseif(leftflag==1 && downflag==1)
sub MoveBallxCopy,1
add MoveBallyCopy,1
.endif


call MoveBall
cmp Lives,0
jne L1
call FileHandling1



ret
Level1 endp


Level2 Proc uses ax bx cx dx si di
mov ah,00h
mov al,12h
int 10h
call ballReset
mov Brickflag1,2
mov Brickflag2,2
mov Brickflag3,2
mov Brickflag4,2
mov Brickflag5,2
mov Brickflag6,2
mov Brickflag7,2
mov Brickflag8,2
sub paddlecounter,50
call MakePaddle
call MakeBricks
l2:
.if(Livesflag==1)
call PrintLives
mov Livesflag,0
.endif
.if(Scoreflag==1)
call PrintScore
mov Scoreflag,0
.endif
mov cx,ballxcopy
mov dx,ballycopy
call CheckBricks2
mov ax,0
mov ah,01h
int 16h
jz MoveballLabel1
mov ah,00h
int 16h

.if(ah==4bh&&paddlexcopy>=10)
sub MovePaddlexcopy,10
call MovePaddle
jmp delayed
.endif
.if(ah==4dh&&paddlexcopy<=480)
add MovePaddlexcopy,10
call MovePaddle
jmp delayed
.endif
.if(al == 32)
call Paused
.endif


MoveballLabel1:
call Delayer
delayed:
call MakeBall
.if(rightflag==1 &&  downflag==1)
.if(dx==460)
call ballReset
sub Lives,1
mov Livesflag,1
.elseif(cx==600)
mov rightflag,0
mov leftflag,1
.elseif(dx == 390)
.if(cx >  paddlexcopy)
mov ax,0
mov ax , paddlexcopy
add ax , 150
.if(cx < ax)
mov downflag,0
mov upflag,1
.endif
.endif
.endif
.elseif(rightflag==1 && upflag==1)
.if(dx==80)
mov downflag,1
mov upflag,0
.endif
.if(cx==600)
mov rightflag,0
mov leftflag,1
.endif
.elseif(leftflag==1 && upflag==1)
.if(dx==80)
mov upflag,0
mov downflag,1
.endif
.if(cx==20)
mov rightflag,1
mov leftflag,0
.endif
.elseif(leftflag==1 && downflag==1)
.if(dx==460)
call ballReset
sub lives,1
mov Livesflag,1

.endif
.if(cx==20)
mov rightflag,1
mov leftflag,0
.endif
.if(dx == 390)
.if(cx >  paddlexcopy)
mov ax,0
mov ax , paddlexcopy
add ax , 150
.if(cx <= ax)
mov downflag,0
mov upflag,1
.endif
.endif
.endif
.endif

.if(rightflag==1 && downflag==1)
add MoveBallxCopy,2
add MoveBallyCopy,2
.elseif(rightflag==1 && upflag==1)
add MoveBallxCopy,2
sub MoveBallyCopy,2
.elseif(leftflag==1 && upflag==1)
sub MoveBallxCopy,2
sub MoveBallyCopy,2
.elseif(leftflag==1 && downflag==1)
sub MoveBallxCopy,2
add MoveBallyCopy,2
.endif

.if(Score==16)
call Level3
ret
.endif



call MoveBall
cmp Lives,0
jne L2

call FileHandling2


ret
Level2 endp

Level3 Proc uses ax bx cx dx si di
mov ah,00h
mov al,12h
int 10h
call ballReset
mov Brickflag1,3
mov Brickflag2,3
mov Brickflag3,3
mov Brickflag4,3
mov Brickflag5,3
mov Brickflag6,3
mov Brickflag7,3
mov Brickflag8,3
mov paddlecounter,100
call MakePaddle
call MakeBricks
l3:
.if(Livesflag==1)
call PrintLives
mov Livesflag,0
.endif
.if(Scoreflag==1)
call PrintScore
mov Scoreflag,0
.endif
mov cx,ballxcopy
mov dx,ballycopy
call CheckBricks3
mov ax,0
mov ah,01h
int 16h
jz MoveballLabel
mov ah,00h
int 16h

.if(ah==4bh&&paddlexcopy>=10)
sub MovePaddlexcopy,10
call MovePaddle
jmp delayed
.endif
.if(ah==4dh&&paddlexcopy<=530)
add MovePaddlexcopy,10
call MovePaddle
jmp delayed
.endif

.if(al == 32)
call Paused
.endif

MoveballLabel:
call Delayer
delayed:
call MakeBall
.if(rightflag==1 &&  downflag==1)
.if(dx==460)
call ballReset
sub Lives,1
mov Livesflag,1
.elseif(cx==600)
mov rightflag,0
mov leftflag,1
.elseif(dx == 390)
.if(cx >  paddlexcopy)
mov ax,0
mov ax , paddlexcopy
add ax , 100
.if(cx < ax)
mov downflag,0
mov upflag,1
.endif
.endif
.endif
.elseif(rightflag==1 && upflag==1)
.if(dx==80)
mov downflag,1
mov upflag,0
.endif
.if(cx==600)
mov rightflag,0
mov leftflag,1
.endif
.elseif(leftflag==1 && upflag==1)
.if(dx==80)
mov upflag,0
mov downflag,1
.endif
.if(cx==20)
mov rightflag,1
mov leftflag,0
.endif
.elseif(leftflag==1 && downflag==1)
.if(dx==460)
call ballReset
sub lives,1
mov Livesflag,1
.endif
.if(cx==20)
mov rightflag,1
mov leftflag,0
.endif
.if(dx == 390)
.if(cx >  paddlexcopy)
mov ax,0
mov ax , paddlexcopy
add ax , 100
.if(cx <= ax)
mov downflag,0
mov upflag,1
.endif
.endif
.endif
.endif

.if(rightflag==1 && downflag==1)
add MoveBallxCopy,5
add MoveBallyCopy,5
.elseif(rightflag==1 && upflag==1)
add MoveBallxCopy,5
sub MoveBallyCopy,5
.elseif(leftflag==1 && upflag==1)
sub MoveBallxCopy,5
sub MoveBallyCopy,5
.elseif(leftflag==1 && downflag==1)
sub MoveBallxCopy,5
add MoveBallyCopy,5
.endif
.if(Score==8)
call Win1
ret
.endif


call MoveBall
cmp Lives,0
jne L3

call FileHandling3


ret
Level3 endp
 Game proc uses ax bx cx dx si di
 mov Scoreflag,1
mov Livesflag,1
mov Score,0
call Level1
.if(Score==8)
mov Scoreflag,1
mov Livesflag,1
mov Score,0
call Level2
.endif
.if(Score==8)
mov Scoreflag,1
Mov Score,0
mov Livesflag,1
call Level3
.endif
mov Lives,3
call Menu

ret
Game endp
start:

mov ax,@data
mov ds,ax
mov ah,00h
mov al,12h
int 10h
call WELCOME_SCR
call Menu


mov ah,4ch
int 21h
end




