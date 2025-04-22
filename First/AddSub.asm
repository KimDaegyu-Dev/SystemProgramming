TITLE Add and SUbtract ; AddSub.asm, TITLE : 소스 파일에 제목을 할당, 어셈블된 리스팅 파일의 상단에 지정된 텍스트 출력, 큰 프로젝트에서 각 소스 파일을 구분하는데 도움을 줌

INCLUDE Irvine32.inc  ; 어셈블할 떄 필요한 정의나 설정 정보를 지정한 파일에서 찾아옴, 기본저긍로 include 디렉토리에서 찾음

.code  ;지시어, 코드 세그먼트의 시작을 나타냄, 이 이후부터 프로그램 코드에 대한 부분임을 알려줌
main PROC

	mov    eax,10000h ;데이터 이동(복사)
	add    eax,40000h ;덧셈
	sub    eax,20000h ;뺄셈
	call   DumpRegs   ;display registers, call 명령어 : 지정한 프로시저 호출, DumpRegs 프로시저: 레지스터 값을 16진수로 출력, Irvine32 라이브러ㅣ에서 제공
	
	exit  ; 프로그램을 종료하는 MS-Window 함수를 간접적으로 호출, Irvine32.inc에서 정의된 매크로 명령
main ENDP
; PROC, ENDP 지정한 이름의 프로시저 시작, 마지막을 나타냄, 프로시저란 보통 반환값이 없는 함수를 의미
END main ; 프로그램의 마지막 행을 나타냄, 프로그램의 끝 뿐만아니라 프로그램의 시작점을 main이라는 프로시저로 지정함 