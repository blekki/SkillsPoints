
program untitled;

uses crt;

type 
	cha = object
	
	ty : byte;
	name : string;
	name2 : string;
	ser : boolean;
	
	end;



var ch : array[1..5] of cha;
	i : byte;

procedure search(i : byte);
var pas : string;
	B : byte;
	
	G : byte;
	
	rep : byte;
	H : byte;
	
	check : byte;
begin
	pas := '';
	check := 0;
	
	case ch[i].ty of
	1: rep := 1;
	2: rep := 2;
	end;
	
	for H := 1 to rep do begin
		case H of
		1:B := length(ch[i].name);
		2:begin
			pas := '';
			B := length(ch[i].name2);
		  end;
		end;
		
		if B < 1 then
			pas := ''
		else
			for G := 1 to B - 1 do begin
				case H of
				1:pas := pas + ch[i].name[G];
				2:pas := pas + ch[i].name2[G];
				end;
			end;
		
		if ch[i].ser = false then begin
		
			for G := 1 to 5 do begin
				if pas = ch[G].name then begin
					if ch[g].ser = true then begin
					textbackground(1);
					check := check + 1;
					end
					else textbackground(4);
					
				end;
			end;
		end
		else textbackground(2);//знайдений
		
	end;
		
		if check >= 1 then 
		textbackground(1);
		
		writeln(' ');
end;	
	
	
BEGIN
	ch[1].ty := 1;
	ch[1].ser := true;
	ch[1].name := '1';
	
	ch[2].ty := 1;
	ch[2].ser := true;
	ch[2].name := '10';
	
	ch[3].ty := 1;
	ch[3].ser := false;
	ch[3].name := '100';
	 
	ch[4].ty := 1;
	ch[4].ser := true;
	ch[4].name := '101';
	
	ch[5].ty := 2;
	ch[5].ser := false;
	ch[5].name := '1000';
	ch[5].name2 := '1010';
	
	
	for i := 1 to 5 do begin
		if i = 4 then
		gotoxy(8,2 * i - 2)
		else
		gotoxy(5,2 * i);
		
		search(i);
	end;
	
	
END.
