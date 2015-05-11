
-- Botones medidas
local separX = 2
local separY = 2

local puntoinicialX = 1 + 78/2
local puntoinicialY= 20 + 112/2


-- Var sonidos
local sonidosTodos = {"AMB_BD_1.mp3","AMB_FTM2.mp3","AMB_HHCL.mp3", "AMB_HHOP.mp3","AMB_HHPD.mp3","AMB_HTM.mp3","AMB_LTM2.mp3",
"AMB_MTM.mp3","AMB_RIM1.mp3","AMB_SN13.mp3","AMB_SN_5.mp3", "CHINA_1.mp3","CRASH_1.mp3","CRASH_5.mp3","CRASH_6.mp3",
"RIDE_1.mp3"}
local sonidos = { }

local init = 1

-- Al hacer clic
local function onClick( event )
	local selectedButton = event.target
	local indice = selectedButton.sonido
	audio.play( sonidos[indice])
end

-- Poner los botones y sonidos
for i =0,3 do
	for j=0,3 do

		-- Botones
		local button=display.newImage("button.png")
		button.x=puntoinicialX + (j*78+separX)
		button.y=puntoinicialY + (i*112+separY)

		-- Sonidos
		button:addEventListener("tap", onClick)
		button.sonido = init
		sonidos[init] = audio.loadSound(sonidosTodos[init])
		init = init + 1

	end
end

