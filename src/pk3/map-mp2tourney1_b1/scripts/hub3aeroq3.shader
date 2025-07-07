// **** Team Arena Style Blue Beam ****

textures/hub3aeroq3/hub3_beam_blue
	{
	qer_editorimage textures/hub3aeroq3/hub3_beam_blue.tga
	surfaceparm trans
	surfaceparm nomarks
    	surfaceparm nonsolid
	surfaceparm nolightmap
	qer_trans .6
	cull none
	
		{
		map textures/hub3aeroq3/hub3_beam_blue.tga
		blendfunc add
		}
	}


// **** Team Arena Style Red Beam ****

textures/hub3aeroq3/hub3_beam_red
	{
	qer_editorimage textures/hub3aeroq3/hub3_beam_red.tga
	surfaceparm trans
	surfaceparm nomarks
    surfaceparm nonsolid
	surfaceparm nolightmap
	qer_trans .6
	cull none
		{
		map textures/hub3aeroq3/hub3_beam_red.tga
		blendfunc add
		}
	}


// **** IHV Transparent Window on Gray Block ****

textures/hub3aeroq3/blocks11c
	{
	qer_editorimage textures/hub3aeroq3/blocks11c.tga
	//cull twosided
	surfaceparm trans
		{
		map textures/hub3aeroq3/blocks11c.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		}
		{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		}
	}



// **** IHV Transparent Window on Brown Block ****

textures/hub3aeroq3/xblocks10tr
	{
	qer_editorimage textures/hub3aeroq3/xblocks10tr.tga
	//cull twosided
	surfaceparm trans
		{
		map textures/hub3aeroq3/xblocks10tr.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		}
		{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		}
	}

// **** Blue IHV Transparent Window on Brown Block ****

textures/hub3aeroq3/blocks15_bluetr
	{
	qer_editorimage textures/hub3aeroq3/blocks15_bluetr.tga
	//cull twosided
	surfaceparm trans
		{
		map textures/hub3aeroq3/blocks15_bluetr.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		}
		{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		}
	}

// **** Quake Style Teleporter ****

textures/hub3aeroq3/q1_tele
	{
	qer_editorimage textures/hub3aeroq3/q1_tele.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm nomarks
	cull disable
	tessSize 128
	q3map_surfacelight 25

		{
		map textures/effects/envmap.tga
		rgbGen identity
		tcGen environment
		}
		{
		map textures/hub3aeroq3/q1_tele.tga
		blendfunc blend
		rgbGen identity
		tcMod turb 0 0.3 0 0.2
		}
	}


// **** (Blue) Similar to base_floor techfloor ****

textures/hub3aeroq3/hub3techfloor
	{    
    qer_editorimage textures/hub3aeroq3/hub3_techfloor.tga
	//surfaceparm metalsteps	   
        {
		map textures/hub3aeroq3/hub3_fireswirl2blue.tga
        tcMod stretch sin .8 0.3 0 9.7
        tcmod rotate 333
        rgbGen identity
   		}
        {
		map textures/hub3aeroq3/hub3_techfloor.tga
        blendFunc blend
		rgbGen identity
		}
        {
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
        depthFunc equal
		}
	}

// **** (Red) Similar to base_floor techfloor ****

textures/hub3aeroq3/hub3techfloor_red
	{    
    qer_editorimage textures/hub3aeroq3/hub3_techfloor.tga
	//surfaceparm metalsteps	   
        {
		map textures/hub3aeroq3/hub3_fireswirl2red.tga
        tcMod stretch sin .8 0.3 0 9.7
        tcmod rotate 333
        rgbGen identity
   		}
        {
		map textures/hub3aeroq3/hub3_techfloor.tga
        blendFunc blend
		rgbGen identity
		}
        {
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
        depthFunc equal
		}
	}


// **** Similar to sfx blue beam ****

textures/hub3aeroq3/hub3_beam_blue_wide
	{
	qer_editorimage textures/hub3aeroq3/hub3_beam_blue_wide.tga
	surfaceparm trans	
	surfaceparm nomarks	
	surfaceparm nonsolid
	surfaceparm nolightmap
    qer_trans 0.4
	cull none
		{
		map textures/hub3aeroq3/hub3_beam_blue_wide.tga
		tcMod Scroll .3 0
        blendFunc add
        }
	}


// **** Similar to sfx red beam ****

textures/hub3aeroq3/hub3_beam_red_wide
	{
	qer_editorimage textures/hub3aeroq3/hub3_beam_red_wide.tga
	surfaceparm trans	
	surfaceparm nomarks	
	surfaceparm nonsolid
	surfaceparm nolightmap
    qer_trans 0.4
	cull none
		{
		map textures/hub3aeroq3/hub3_beam_red_wide.tga
		tcMod Scroll .3 0
        blendFunc add
        }
	}


// **** Bouncepad for dark tiled floor, with blue pad effects ****

textures/hub3aeroq3/hub3_bounce_dkfloor
	{
	surfaceparm nodamage
	q3map_lightimage textures/hub3aeroq3/hub3_jumppadsmall.tga	
	q3map_surfacelight 400
		{
		map textures/hub3aeroq3/hub3_bounce_dkfloor.tga
		rgbGen identity
		}
	
		{
		map $lightmap
		rgbGen identity
		blendfunc gl_dst_color gl_zero
		}
	
		{
		map textures/hub3aeroq3/hub3_bouncepad01b_layer1.tga
		blendfunc gl_one gl_one
		rgbGen wave sin .5 .5 0 1.5	
		}

		{
		clampmap textures/hub3aeroq3/hub3_jumppadsmall.tga
		blendfunc gl_one gl_one
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
		}
	}

// **** Bouncepad for dark tiled floor, with red pad effects ****

textures/hub3aeroq3/hub3_bounce_dkfloor_red
	{
	surfaceparm nodamage
	q3map_lightimage textures/hub3aeroq3/hub3_jumppadsmall_red.tga	
	q3map_surfacelight 400
		{
		map textures/hub3aeroq3/hub3_bounce_dkfloor.tga
		rgbGen identity
		}
	
		{
		map $lightmap
		rgbGen identity
		blendfunc gl_dst_color gl_zero
		}
	
		{
		map textures/hub3aeroq3/hub3_bouncepad01b_layer1_red.tga
		blendfunc gl_one gl_one
		rgbGen wave sin .5 .5 0 1.5	
		}

		{
		clampmap textures/hub3aeroq3/hub3_jumppadsmall_red.tga
		blendfunc gl_one gl_one
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
		}
	}

// **** gratelamp flare, adjusted to be darker ****

models/mapobjects/gratelamp/gratelamp_flare
	{
	deformVertexes autoSprite
	//q3map_surfacelight 300
	q3map_surfacelight 10
	surfaceparm	trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
		{
		Map models/mapobjects/gratelamp/gratelamp_flare.tga
		blendFunc GL_ONE GL_ONE
		}	
	}

// **** Similar to sfx/healthfloor ****

textures/hub3aeroq3/hub3_wep_floor_red
	{
	qer_editorimage textures/hub3aeroq3/hub3_techfloor_metalbridge06.tga
       	{
		map textures/hub3aeroq3/zzz_dkred.tga
       	tcmod scroll 0 1
    	tcMod turb 0 .25 0 1.6
		tcmod scale 2 2
		blendFunc GL_ONE GL_ZERO
		rgbGen identity
		}
		{
		clampmap textures/gothic_block/blocks18cgeomtrn2.tga
		blendFunc blend
		tcmod rotate 130
		tcMod stretch sin .8 0.2 0 .2
		rgbGen identity
		}
		{
		clampmap textures/gothic_block/blocks18cgeomtrn2.tga
		blendFunc blend
		tcmod rotate 80
		tcMod stretch sin .8 0.2 0 .1
		rgbGen identity
		}
		{
		clampmap textures/hub3aeroq3/hub3_techfloor_metalbridge06.tga
		blendFunc blend
		rgbGen identity
		}
		{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
		}
	}

// **** (Blue) Similar to base_floor techfloor ****

textures/hub3aeroq3/hub3_dimfloor_wep
	{    
    qer_editorimage textures/hub3aeroq3/hub3_dimfloor_wep.tga
        {
		map textures/hub3aeroq3/hub3_fireswirl2blue.tga
        tcMod stretch sin .8 0.3 0 9.7
        tcmod rotate 333
        rgbGen identity
   		}
        {
		map textures/hub3aeroq3/hub3_dimfloor_wep.tga
        blendFunc blend
		rgbGen identity
		}
        {
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
        depthFunc equal
		}
	}
