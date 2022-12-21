.MODEL SMALL
.STACK 100H

.DATA    

MSG20 DB '                ____________________________$'
MSG21 DB '               |                            |$'
MSG1  DB '               |       SELAMAT DATANG       |$'  
MSG22 DB '               |     DI QUIZ INFORMATIKA    |$'
MSG23 DB '               |____________________________|$'
MSG24 DB '$'
MSG25 DB 'Jawab : $'
MSG2 DB 'Syarat dan ketentuan : $'
MSG3 DB '- Quiz ini terdiri dari 5 Soal.$'
MSG4 DB '- Setiap user yang menjawab benar akan mendapatkan 1 point.$'
MSG5 DB 'Tekan ENTER untuk memulai Quiz... $'
MSG6 DB 'Jawaban Anda Benar.$'
MSG7 DB 'Jawaban Anda Salah.$'
MSG8 DB 'YEYYYY ANDA TELAH MENGISI QUIZ INFORMATIKA DENGAN LENGKAP.$'
MSG9 DB 'TOTAL POINT ANDA : $'
MSG10 DB 'Tekan 1 untuk mengulang Quiz atau Tekan 0 untuk Exit.$' 
MSG11 DB '                   ===== Terima Kasih =====$'
Q1 DB '1. Apa kepanjangan dari TRPL?$'
QA1  DB '   a) Teknologi Rekayasa Perangkat Lunak $'
QA11 DB '   b) Teknik Rekayasa Perangkat Lunak $'
QA111 DB '   c) Telekomunikasi Rekayasa Perangkat Lunak $'
Q2 DB '2. Program Studi TRPL merupakan bagian dari? $'
QA2 DB '   a) Sarjana IPB$'
QA22 DB '   b) Sekolah Vokasi IPB$'
QA222 DB '   c) Sekolah Bisnis IPB$'
Q3 DB '3. Siapakah Ketua Program Studi TRPL?$'
QA3 DB '   a) Medhanita Dewi Renanti, S.Kom, M.Kom$'
QA33 DB '   b) Sofiyanti Indriasari, S.Kom, M.Kom$'
QA333 DB '   c) Gema Parasti Mindara, S.Si, M.Kom$'
Q4 DB '4. Berikut mata kuliah Program Studi TRPL, kecuali?$'
QA4 DB '   a) Penerbitan dan Grafika$'
QA44 DB '   b) Produksi film dan video $'
QA444 DB '   c) Arsitektur dan Organisasi Komputer$'
Q5 DB '5. Gelar apakah yang akan didapat ketika lulus dari Program Studi TRPL?$'
QA5 DB '   a) Sarjana Terapan$'
QA55 DB '   b) Strata 1 (S1)$'
QA555 DB '   c) Ahli Madya$'

.CODE
MAIN PROC 
    
    MOV AX,@DATA
	MOV DS,AX
    
    LEA DX,MSG20
	MOV AH,9
	INT 21H
	
	CALL NL
   
    LEA DX,MSG21
	MOV AH,9
	INT 21H
	
	CALL NL
	   
	LEA DX,MSG1
	MOV AH,9
	INT 21H
	
	CALL NL
	
	LEA DX,MSG22
	MOV AH,9
	INT 21H
	
	CALL NL
   
    LEA DX,MSG23
	MOV AH,9
	INT 21H
	
	CALL NL 
	
	LEA DX,MSG24
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,MSG2
	MOV AH,9
	INT 21H
    
	CALL NL
    
	LEA DX,MSG3
	MOV AH,9
	INT 21H
    
    CALL NL
    
	LEA DX,MSG4
	MOV AH,9
	INT 21H 
	
	CALL NL
	
	LEA DX,MSG24
	MOV AH,9
	INT 21H
    
   
	
	START:
	MOV BL, 0  
    CALL NL
    
	LEA DX,MSG5
	MOV AH,9
	INT 21H
	
	
	MOV AH, 1
	INT 21H
	
	CMP AL, 0DH
	JE QSN1
	JNE START
	
	QSN1:
	CALL NL
    
    LEA DX,MSG24
	MOV AH,9
	INT 21H
	
	CALL NL

	LEA DX,Q1
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,QA1
	MOV AH,9
	INT 21H
	
	CALL NL

	LEA DX,QA11
	MOV AH,9
	INT 21H
	
	CALL NL

	LEA DX,QA111
	MOV AH,9
	INT 21H
	
	CALL NL

	LEA DX,MSG24
	MOV AH,9
	INT 21H
	
	CALL NL

	LEA DX,MSG25
	MOV AH,9
	INT 21H
	
	CALL NL
    
	MOV AH, 1
	INT 21H
	CMP AL, 'a'
	JE QSN2
    JNE QSNW2
	
	QSN2:

	CALL NL
    
	LEA DX,MSG24
	MOV AH,9
	INT 21H
	
	CALL NL

	LEA DX,MSG6
	MOV AH,9
	INT 21H
	
	INC BL
	CALL NL
    
	CALL QN2 
	
	CALL INPUT
	
	CMP AL, 'b'
	JE QSN3
	JNE QSNW3
	
	QSNW2:
	CALL NL
    
    LEA DX,MSG24
	MOV AH,9
	INT 21H
	
	CALL NL

	LEA DX,MSG7
	MOV AH,9
	INT 21H
	
	
	CALL NL
    
	CALL QN2 
	CALL INPUT
	
	CMP AL, 'b'
	JE QSN3 
	JNE QSNW3
	
	
	QSN3:
	CALL NL
    
	LEA DX,MSG24
	MOV AH,9
	INT 21H
	
	CALL NL

	LEA DX,MSG6
	MOV AH,9
	INT 21H
	
	INC BL
	CALL NL    

    
	CALL QN3 
	CALL INPUT
	
	CMP AL, 'c'
	JE QSN4
	JNE QSNW4
	
	QSNW3:
	CALL NL
    
    LEA DX,MSG24
	MOV AH,9
	INT 21H
	
	CALL NL

	LEA DX,MSG7
	MOV AH,9
	INT 21H
	
	
	CALL NL
    
	CALL QN3
	CALL INPUT
	
	CMP AL, 'c'
	JE QSN4 
	JNE QSNW4
	
	QSN4:
	CALL NL
    
    LEA DX,MSG24
	MOV AH,9
	INT 21H
	
	CALL NL

	LEA DX,MSG6
	MOV AH,9
	INT 21H
	
	INC BL
	CALL NL
    
	CALL QN4 
	CALL INPUT
	
	CMP AL, 'b'
	JE QSN5
	JNE QSNW5
	
	QSNW4:
	CALL NL
    
    LEA DX,MSG24
	MOV AH,9
	INT 21H
	
	CALL NL

	LEA DX,MSG7
	MOV AH,9
	INT 21H
	
	
	CALL NL
    
	CALL QN4 
	CALL INPUT
	
	CMP AL, 'b'
	JE QSN5 
	JNE QSNW5
	
	QSN5:
	CALL NL
    
    LEA DX,MSG24
	MOV AH,9
	INT 21H
	
	CALL NL

	LEA DX,MSG6
	MOV AH,9
	INT 21H
	
	INC BL
	CALL NL
    
	CALL QN5 
	
	CALL INPUT
	
	CMP AL, 'a'
	JE EXIT
	JNE EXITW
	
	QSNW5:
	CALL NL

    LEA DX,MSG24
	MOV AH,9
	INT 21H
	
	CALL NL

	LEA DX,MSG7
	MOV AH,9
	INT 21H
	
	
	CALL NL
    
	CALL QN5 
	CALL INPUT
	
	CMP AL, 'a'
	JE EXIT 
	JNE EXITW
	
	EXIT:
	CALL NL 
    
    LEA DX,MSG24
	MOV AH,9
	INT 21H
	
	CALL NL

	LEA DX,MSG6
	MOV AH,9
	INT 21H
	
	INC BL
	CALL NL
	CALL NL
    
	LEA DX,MSG8
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,MSG9
	MOV AH,9
	INT 21H
	
	ADD BL, 48	
	
	CMP BL,57
	JG TEN
	MOV AH, 2
	MOV DL, BL
	INT 21H
	JMP EXIT1
	
	EXITW:
	CALL NL
    
    LEA DX,MSG24
	MOV AH,9
	INT 21H
	
	CALL NL

	LEA DX,MSG7
	MOV AH,9
	INT 21H
	
	
	CALL NL
	CALL NL  

    
	LEA DX,MSG8
	MOV AH,9
	INT 21H 
	
	CALL NL
    CALL NL
    
	LEA DX,MSG9
	MOV AH,9
	INT 21H
	
	ADD BL,48	
	MOV AH,2
	MOV DL, BL
	INT 21H
	
	JMP EXIT1
	
	