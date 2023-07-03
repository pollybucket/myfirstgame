
// Project: Projeto_Integrador 

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Bora, Dora!" )
SetWindowSize( 1020, 900, 0 )
SetWindowAllowResize( 0 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1020,900 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 32, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts


LoadMusic ( 1, "RelaxGirl.mp3")
PlayMusic ( 1, 1)
ClearScreen()
//*** mostrar imagem de splash/menu ***
splash_img = LoadImage("menu.png")
splash_spr = CreateSprite(splash_img)
SetSpriteSize(splash_spr,1020,900)
Sync()
//*** remover menu ***
while GetRawKeyState(32) = 0
Sync()
endwhile
DeleteSprite(splash_spr)
DeleteImage(splash_img)


LoadFont(1, "Minecraft.ttf")
global texto_pontuacao = 1
global texto_vidas = 2
global texto_fases = 3
CreateText(texto_pontuacao,"Pontos:")
CreateText(texto_vidas,"Vidas:")
CreateText(texto_fases,"Fase:")
SetTextFont(texto_pontuacao,1)
SetTextFont(texto_vidas,1)
SetTextFont(texto_fases,1)
SetTextPosition(texto_pontuacao,130,0)
SetTextSize(texto_pontuacao, 30)
SetTextColor(texto_pontuacao,0,0,0,255)
SetTextPosition(texto_vidas,360,0)
SetTextSize(texto_vidas, 30)
SetTextColor(texto_vidas,0,0,0,255)
SetTextPosition(texto_fases,0,0)
SetTextSize(texto_fases, 30)
SetTextColor(texto_fases,0,0,0,255)

//fundo e paisagem//
global fundoi = 1
global fundos = 1
LoadImage(fundoi,"fundo1.png")
CreateSprite(fundos, fundoi)

global ruai = 2
global ruas = 2
global rua2s = 3
Loadimage(ruai,"ruas.png")
CreateSprite(ruas,ruai)
CreateSprite(rua2s,ruai)
SetSpritey(ruas,622.65)
SetSpritey(rua2s,324.65)

global faixai = 4
global faixas = 4
global faixa2s = 5
LoadImage(faixai,"faixa.png")
CreateSprite(faixas,faixai)
CreateSprite(faixa2s,faixai)
SetSpritePosition(faixas,200,581)
SetSpritePosition(faixa2s,760,286)


global predioi = 6
global predios = 6
LoadImage(predioi, "predios.png")
CreateSprite(predioi,predios)
SetSpritePosition(predios,0,0)

global escolai = 7
global escolas = 7
LoadImage(escolai, "escola.png")
CreateSprite(escolai,escolas)
SetSpritePosition(escolas,535,0)

global checkpointi = 999
global checkpoints = 999
LoadImage(checkpointi, "checkpoint.png")
CreateSprite(checkpointi, checkpoints)
SetSpritePosition(checkpoints,755,200)

//checkpoint//
global chegadai = 8


//personagens//
global meninai = 13
global meninas = 14
global velocidade_menina = 8
LoadImage(meninai,"mae e filha.png")
CreateSprite(meninas,meninai)
SetSpriteAnimation(meninas,81,64,5)
SetSpriteFrame(meninas,4)
pos(meninas)

//carros - parte 1 - loading nas imagens//

//13 a 25 - da direita para esquerda//
global carro1i = 14
global carro2i = 15
global carro3i = 16
global carro4i = 17
global carro5i = 18
global carro6i = 19
global carro7i = 20
global carro8i = 21
global carro9i = 22
global carro10i = 23
global carro11i = 24
global carro12i = 25
global carro13i = 26
//26 a 38 - da esquerda para direita//
global carro21i = 27
global carro22i = 28
global carro23i = 29
global carro24i = 30
global carro25i = 31
global carro26i = 32
global carro27i = 33
global carro28i = 34
global carro29i = 35
global carro210i = 36
global carro211i = 37
global carro212i = 38
global carro213i = 39

LoadImage (carro1i, "carro1-2.png")
LoadImage (carro2i, "carro2-2.png")
LoadImage (carro3i, "carro3-2.png")
LoadImage (carro4i,"carro4-2.png")
LoadImage (carro5i,"carro5-2.png")
LoadImage (carro6i,"carro6-1.png")
LoadImage (carro7i,"carro7-2.png")
LoadImage (carro8i,"carro8-2.png")
LoadImage (carro9i,"carro9-2.png")
LoadImage (carro10i,"carro10-2.png")
LoadImage (carro11i,"carro11-2.png")
LoadImage (carro12i,"carro12-2.png")
LoadImage (carro13i,"carro13-2.png")
LoadImage (carro21i, "carro1-1.png")
LoadImage (carro22i, "carro2-1.png")
LoadImage (carro23i, "carro3-1.png")
LoadImage (carro24i,"carro4-1.png")
LoadImage (carro25i,"carro5-1.png")
LoadImage (carro26i,"carro6-2.png")
LoadImage (carro27i,"carro7-1.png")
LoadImage (carro28i,"carro8-1.png")
LoadImage (carro29i,"carro9-1.png")
LoadImage (carro210i,"carro10-1.png")
LoadImage (carro211i,"carro11-1.png")
LoadImage (carro212i,"carro12-1.png")
LoadImage (carro213i,"carro13-1.png")

//criacao sprites para as 4 faixas de carro//

//faixa 1
global carro1s = 115
global carro2s = 116
global carro3s = 117
global carro4s = 118
global carro5s = 119
global carro6s = 120
global carro7s = 121
global carro8s = 122
global carro9s = 123
global carro10s = 124
global carro11s = 125
global carro12s = 126
global carro13s = 127
//faixa 2
global carro14s = 228
global carro15s = 229
global carro16s = 230
global carro17s = 231
global carro18s = 232
global carro19s = 233
global carro20s = 234
global carro21s = 235
global carro22s = 236
global carro23s = 237
global carro24s = 238
global carro25s = 239
global carro26s = 240
//faixa 3
global carro27s = 341
global carro28s = 342
global carro29s = 343
global carro30s = 344
global carro31s = 345
global carro32s = 346
global carro33s = 347
global carro34s = 348
global carro35s = 349
global carro36s = 350
global carro37s = 351
global carro38s = 352
global carro39s = 353
//faixa 4
global carro40s = 454
global carro41s = 455
global carro42s = 456
global carro43s = 457
global carro44s = 458
global carro45s = 459
global carro46s = 460
global carro47s = 461
global carro48s = 462
global carro49s = 463
global carro50s = 464
global carro51s = 465
global carro52s = 466

//faixa 2//
CreateSprite(carro14s,carro213i)
CreateSprite(carro15s,carro24i)
CreateSprite(carro16s,carro23i)
CreateSprite(carro17s,carro22i)
CreateSprite(carro18s,carro27i)
CreateSprite(carro19s,carro26i)
CreateSprite(carro20s,carro28i)
CreateSprite(carro21s,carro25i)
CreateSprite(carro22s,carro29i)
CreateSprite(carro23s,carro212i)
CreateSprite(carro24s,carro210i)
CreateSprite(carro25s,carro212i)
CreateSprite(carro26s,carro21i)

//faixa 1//
CreateSprite(carro1s,carro3i)
CreateSprite(carro2s,carro9i)
CreateSprite(carro3s,carro1i)
CreateSprite(carro4s,carro6i)
CreateSprite(carro5s,carro7i)
CreateSprite(carro6s,carro4i)
CreateSprite(carro7s,carro8i)
CreateSprite(carro8s,carro5i)
CreateSprite(carro9s,carro2i)
CreateSprite(carro10s,carro10i)
CreateSprite(carro11s,carro12i)
CreateSprite(carro12s,carro13i)
CreateSprite(carro13s,carro12i)

//faixa 3//
CreateSprite(carro27s,carro13i)
CreateSprite(carro28s,carro2i)
CreateSprite(carro29s,carro5i)
CreateSprite(carro30s,carro4i)
CreateSprite(carro31s,carro3i)
CreateSprite(carro32s,carro6i)
CreateSprite(carro33s,carro9i)
CreateSprite(carro34s,carro1i)
CreateSprite(carro35s,carro10i)
CreateSprite(carro36s,carro8i)
CreateSprite(carro37s,carro2i)
CreateSprite(carro38s,carro12i)
CreateSprite(carro39s,carro7i)

//faixa 4// 
CreateSprite(carro40s,carro24i)
CreateSprite(carro41s,carro23i)
CreateSprite(carro42s,carro21i)
CreateSprite(carro43s,carro29i)
CreateSprite(carro44s,carro213i)
CreateSprite(carro45s,carro28i)
CreateSprite(carro46s,carro26i)
CreateSprite(carro47s,carro27i)
CreateSprite(carro48s,carro22i)
CreateSprite(carro49s,carro25i)
CreateSprite(carro50s,carro211i)
CreateSprite(carro51s,carro212i)
CreateSprite(carro52s,carro210i)

SetSpritePosition(carro1s,1020,660)
SetSpritePosition(carro2s,1020,660)
SetSpritePosition(carro3s,1020,660)
SetSpritePosition(carro4s,1020,660)
SetSpritePosition(carro5s,1020,660)
SetSpritePosition(carro6s,1020,660)
SetSpritePosition(carro7s,1020,660)
SetSpritePosition(carro8s,1400,660)
SetSpritePosition(carro9s,1400,660)
SetSpritePosition(carro10s,1400,660)
SetSpritePosition(carro11s,1400,660)
SetSpritePosition(carro12s,1400,660)
SetSpritePosition(carro13s,1400,660)

SetSpritePosition(carro14s,-250,576)
SetSpritePosition(carro15s,-250,576)
SetSpritePosition(carro16s,-250,576)
SetSpritePosition(carro17s,-250,576)
SetSpritePosition(carro18s,-250,576)
SetSpritePosition(carro19s,-250,576)
SetSpritePosition(carro20s,-250,576)
SetSpritePosition(carro21s,-630,576)
SetSpritePosition(carro22s,-630,576)
SetSpritePosition(carro23s,-630,576)
SetSpritePosition(carro24s,-630,576)
SetSpritePosition(carro25s,-630,576)
SetSpritePosition(carro26s,-630,576)

SetSpritePosition(carro27s,1020,360)
SetSpritePosition(carro28s,1020,360)
SetSpritePosition(carro29s,1020,360)
SetSpritePosition(carro30s,1020,360)
SetSpritePosition(carro31s,1020,360)
SetSpritePosition(carro32s,1020,360)
SetSpritePosition(carro33s,1020,360)
SetSpritePosition(carro34s,1400,360)
SetSpritePosition(carro35s,1400,360)
SetSpritePosition(carro36s,1400,360)
SetSpritePosition(carro37s,1400,360)
SetSpritePosition(carro38s,1400,360)
SetSpritePosition(carro39s,1400,360)

SetSpritePosition(carro40s,-250,260)
SetSpritePosition(carro41s,-250,260)
SetSpritePosition(carro42s,-250,260)
SetSpritePosition(carro43s,-250,260)
SetSpritePosition(carro44s,-250,260)
SetSpritePosition(carro45s,-250,260)
SetSpritePosition(carro46s,-250,260)
SetSpritePosition(carro47s,-630,260)
SetSpritePosition(carro48s,-630,260)
SetSpritePosition(carro49s,-630,260)
SetSpritePosition(carro50s,-630,260)
SetSpritePosition(carro51s,-630,260)
SetSpritePosition(carro52s,-630,260)

//praça//
global postei = 9
global postes = 9
global poste2s = 10
LoadImage(postei, "poste.png")
CreateSprite (postes,postei)
CreateSprite (poste2s,postei)
SetSpritePosition (postes, 70, 370)
SetSpritePosition (poste2s, 570, 370)
SetSpritePhysicsOn ( postes, 1 )

global lixeirai = 10
global lixeiras = 11
LoadImage(lixeirai,"lixeira.png")
CreateSprite(lixeiras,lixeirai)
SetSpritePosition(lixeiras,100,495)

global bancoi = 11
global bancos = 12
LoadImage(bancoi, "banco.png")
CreateSprite(bancos,bancoi)
SetSpritePosition(bancos,610,485)


global placaati = 40
global placaats = 67
global placaats2 = 68
LoadImage(placaati, "placamae.png")
CreateSprite(placaats, placaati)
CreateSprite(placaats2, placaati)
SetSpritePosition(placaats,900,400)
SetSpritePosition(placaats2,120,700)

//randomizando carros
global i 
global j 

i = random (228,234)
j = random (235,240)

global l
global m
l = random (115,121)
m = random (122,127)

global o
global p
o = random (341, 346)
p = random (348, 352)

global q
global r
q = random (454,459)
r = random (461,465)

//fim de jogo
fimdejogoi = LoadImage("mensagem_final.png")
CreateSprite(69,fimdejogoi)
SetSpriteAnimation(69,1020,900,3)
SetSpriteVisible(69,0)


global pontos = 55
global vidas = 3
global fase = 1
global velocidade_carro = 12
global morte = 0

CreateText(100,"> JOGAR NOVAMENTE")
	SetTextFont(100,1)
	SetTextPosition(100,500,600)
	SetTextSize(100, 30)
	SetTextVisible(100,0)
CreateText(101,"> SAIR DO JOGO")
	SetTextFont(101,1)
	SetTextPosition(101, 500,700)
	SetTextSize(101, 30)
	SetTextVisible(101,0)

CreateText(102,"> CREDITOS/SAIR DO JOGO")
	SetTextFont(102,1)
	SetTextPosition(102, 500,800)
	SetTextSize(102, 30)
	SetTextVisible(102,0)
	

CreateText(103, "SAIR DO JOGO")
		SetTextFont(103,1)
		SetTextPosition(103, 400, 750)
		SetTextSize(103, 30)
		SetTextVisible(103,0)
		
LoadImage(700, "creditos.png")
CreateSprite(700,700)
SetSpriteVisible(700,0)

global creditos = 0

do
	if fase = 8
		SetSpriteFrame(69,3)
		tela_fim()
		reinicio_ou_fim()
	endif


	if vidas = 0
		sleep(250)
		pos(meninas)
		tela_fim()
		reinicio_ou_fim ()
		SetSpriteFrame(69,2)	
	endif
	
	if pontos = 0
		sleep(250)
		SetSpriteFrame(69,1)
		tela_fim()
		reinicio_ou_fim ()
		
	endif
	
	if creditos = 1 and GetPointerPressed()=1
		if GetTextHitTest(103,GetPointerX(),GetPointerY())
			end
		endif
	endif
	
	ctrlmenina(meninas, morte)
	mover_carros(i,velocidade_carro+2,576)
	mover_carros(j,velocidade_carro+2,576)
	mover_carros(l,-velocidade_carro,660)
	mover_carros(m,-velocidade_carro,660)
	mover_carros(o,-velocidade_carro+1,360)
	mover_carros(p,-velocidade_carro+1,360)
	mover_carros(q,velocidade_carro,260)
	mover_carros(r,velocidade_carro,260)
	atualizar_carros_indo()
	atualizar_carros_vindo()
	atualizar_textos()
	atfaixa(meninas, ruas, faixas)
	atfaixa (meninas, rua2s, faixa2s)

		//checkpoint//
	if GetSpriteCollision (meninas, checkpoints) and GetRawKeyState(32)
		fase = fase + 1
		velocidade_carro = velocidade_carro + 2
		pontos = pontos + 5
		pos(meninas)
		setspritex(i,-250)
		setspritex(j,-630)
		setspritex(q,-250)
		setspritex(r,-630)
		setspritex(l,1020)
		setspritex(m,1400)
		setspritex(o,1020)
		setspritex(p,1400)
		i = random (228,234)
		j = random (235,240)
		l = random (115,121)
		m = random (122,127)
		o = random (341, 346)
		p = random (348, 352)
		q = random (454,459)
		r = random (461,465)
		SetSpriteFrame(meninas,4)
		sleep(1500)
	endif	
	
  
	if ((GetSpriteCollision (meninas, i) or GetSpriteCollision (meninas, j) or GetSpriteCollision (meninas, l) or GetSpriteCollision (meninas, m) or GetSpriteCollision (meninas, o) or GetSpriteCollision (meninas, p) or GetSpriteCollision (meninas, q) or GetSpriteCollision (meninas, r)) and (GetSpriteCollision (meninas, ruas) or GetSpriteCollision (meninas, rua2s)))
		vidas = vidas - 1
		pontos = pontos - 5
		if vidas > 0
			pos(meninas)
			SetSpriteFrame(meninas,4)
		else
			SetSpriteFrame(meninas,5)
		    morte = 1
			vidas = 0
			pontos = pontos
			velocidade_carro = 0
		endif
	endif
	 	
	if pontos = 0
		morte = 1
		vidas = 0
	endif

	  
  	Sync()
loop

function tela_fim()
		SetSpriteVisible(69,1)
		SetTextVisible(texto_pontuacao,0)
		SetTextVisible(texto_fases,0)
		SetTextVisible(texto_vidas,0)
		SetTextVisible(100,1)
		SetTextVisible(101,1)
		SetTextVisible(102,1)
		SetSpriteFrame(meninas,4)
endfunction

function reinicio_ou_fim ()
		

if GetPointerPressed()=1
			
	if GetTextHitTest(100,GetPointerX(),GetPointerY())
		pos(meninas)
		vidas = 3
		fase = 1
		pontos = 55
		morte = 0
		velocidade_carro = 12
		SetTextVisible(100,0)
		SetTextVisible(101,0)
		SetTextVisible(102,0)
		SetSpriteVisible(69,0)
		SetTextVisible(texto_pontuacao,1)
		SetTextVisible(texto_fases,1)
		SetTextVisible(texto_vidas,1)
		setspritex(i,-250)
		setspritex(j,-630)
		setspritex(q,-250)
		setspritex(r,-630)
		setspritex(l,1020)
		setspritex(m,1400)
		setspritex(o,1020)
		setspritex(p,1400)
		i = random (228,234)
		j = random (235,240)
		l = random (115,121)
		m = random (122,127)
		o = random (341, 346)
		p = random (348, 352)
		q = random (454,459)
		r = random (461,465)
	endif
		
	if GetTextHitTest(101,GetPointerX(),GetPointerY())
		end
	endif
	
	if GetTextHitTest(102,GetPointerX(),GetPointerY())
		creditos = 1
		vidas = 3
		morte = 0
		SetTextVisible(100,0)
		SetTextVisible(101,0)
		SetTextVisible(102,0)
		SetTextVisible(103,1)
		SetSpriteVisible(700,1)
		endif
		
	endif

		
endfunction
		

function pos(personagem)
	x = random(1,300)
	y = 800
	
	setspritex(personagem,x)
	setspritey(personagem,y)
endfunction

function ctrlmenina(personagem, morreu)
	x = getspritex(personagem)
	y = getspritey(personagem)
	
	key = GetRawKeyState(38) //cima
	if key and morreu=0
		setspritey(personagem,y-velocidade_menina)
		SetSpriteFrame(personagem,4)
	endif
	
	key = GetRawKeyState(40) //baixo
	if key and morreu=0
		setspritey(personagem,y+velocidade_menina)
		SetSpriteFrame(personagem,1)
	endif
	
	key = GetRawKeyState(37) //direta
	if key and morreu=0
		setspritex(personagem,x-velocidade_menina)
		SetSpriteFrame(personagem,3)
	endif
	
	key = GetRawKeyState(39) //esquerda
	if key and morreu=0
		setspritex(personagem,x+velocidade_menina)
		SetSpriteFrame(personagem,2)
	endif
			
	if getspritex(personagem)<-8
		setspritex(personagem,-8)
	endif
	if getspritex(personagem)>950
		setspritex(personagem,950)
	endif
	if getspritey(personagem)<170
		setspritey(personagem,170)
	endif
	if getspritey(personagem)>850
		setspritey(personagem,850)
	endif
		
	
endfunction

function atfaixa(personagem,avenida,seguranca)
	if GetSpriteCollision(personagem,avenida) and GetSpriteCollision(personagem,seguranca)=0
		if pontos > 0
			pontos = pontos - 1
		else
			pontos = 0
		endif
	endif
endfunction

function atualizar_textos()
	settextstring(texto_pontuacao,"Pontos: "+str(pontos))
	settextstring(texto_vidas,"Vidas: "+str(vidas))
	settextstring(texto_fases,"Fase: "+str(fase))
endfunction

function mover_carros(sid,sid2,sid3)
	SetSpritePosition(sid,getspritex(sid)+sid2,sid3)
endfunction

function atualizar_carros_indo ()
	if (getspritex(i)>1670)
		setspritex(i,-250)
		if i < 234
			i = i+1
		else
			i = random (228,234)
		endif
	endif
	
	if (getspritex(j)>1290)
		setspritex(j,-630)
		if j < 240
			j = j+1
		else
			j = random (235,240)
		endif
	endif
	
	if (getspritex(q)>1570)
		setspritex(q,-250)
		if q < 460
			q = q+1
		else
			q = random (454,460)
		endif
	endif
	
	if (getspritex(r)>1290)
		setspritex(r,-630)
		if r < 466
			r = r+1
		else
			r = random (461,466)
		endif
	endif
	
endfunction

function atualizar_carros_vindo ()
		if (getspritex(l)<-1010)
		setspritex(l,1020)
		if l < 121
			l = l+1
		else
			l = random (115,121)
		endif
	endif
	
	if (getspritex(m)<-630)
		setspritex(m,1400)
		if m < 127
			m = m+1
		else
			m = random (122,127)
		endif
	endif
	
	if (getspritex(o)<-1010)
		setspritex(o,1020)
		if o < 347
			o = o+1
		else
			o = random (341, 347)
		endif
	endif
	
	
	if (getspritex(p)<-630)
		setspritex(p,1400)
		if p < 352
			p = p+1
		else
			p = random (348, 352)
		endif
	endif
	
endfunction
