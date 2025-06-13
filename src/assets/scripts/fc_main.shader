textures/79dr_floor/clangdark_bounce_frozen
{
	qer_editorimage textures/79dr_floor/clangdark_frozen_bounce.tga
	q3map_lightimage textures/sfx/jumppadsmall.tga
	surfaceparm nodamage
	q3map_surfacelight 400
	polygonOffset
	{
		map textures/79dr_floor/clangdark_frozen_bounce2.tga
		rgbGen identity
		alphaFunc GE128
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
		depthFunc equal
	}
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin 0.5 0.5 0 1.5 
	}
	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		rgbGen wave square 0.5 0.5 0.25 1.5 
		tcMod stretch sin 1.2 0.8 0 1.5 
	}
}

textures/79dr_ctf/gobo_logo_red_clangdark
{
	qer_editorimage textures/79dr_ctf/logo_gobo_red2.tga
	surfaceparm metalsteps
	{
		map textures/79dr_ctf/logo_gobo_red2.tga
		blendfunc add
		rgbGen identity
		tcMod rotate 90
	}
}

textures/79dr_ctf/gobo_logo_blue_clangdark
{
	qer_editorimage textures/79dr_ctf/logo_gobo_blue2.tga
	surfaceparm metalsteps
	{
		map textures/79dr_ctf/logo_gobo_blue2.tga
		blendfunc add
		rgbGen identity
		tcMod rotate 90
	}
}

textures/79dr_sfx/fc_teslacoil
{
	qer_editorimage textures/sfx/tesla1.tga
	cull disable
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
		tcGen environment 
	}
	{
		map textures/sfx/tesla1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 5 
		tcMod scale 1 0.5
		tcMod turb 0 0.1 0 1
		tcMod scroll -1 1
	}
	{
		map textures/sfx/electricslime.tga
		blendfunc add
		rgbGen wave sin 0 0.5 0 1 
		tcMod scale 0.5 0.5
		tcMod turb 0 0.1 0 1
		tcMod scroll -1 2
	}
	{
		map textures/sfx/cabletest2.tga
		blendfunc blend
		rgbGen identity
	}
}

textures/79dr_trim/chrome_border_trans
{
	qer_editorimage textures/base_trim/chrome_border.tga
	surfaceparm nonsolid
	surfaceparm nomarks
	{
		map $lightmap 
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/base_trim/chrome_border.tga
		blendfunc filter
		rgbGen identity
	}
}

textures/79dr_floor/clangdark_frozen_trans
{
	qer_editorimage textures/79dr_floor/clangdark_frozen.tga
	surfaceparm nonsolid
	surfaceparm nomarks
	{
		map $lightmap 
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/79dr_floor/clangdark_frozen.tga
		blendfunc filter
		rgbGen identity
	}
}

textures/79dr_ctf/platfill_r3_frozen_trans
{
	qer_editorimage textures/79dr_ctf/platfill_r3_frozen.tga
	surfaceparm nonsolid
	surfaceparm nomarks
	{
		map $lightmap 
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/79dr_ctf/platfill_r3_frozen.tga
		blendfunc filter
		rgbGen identity
	}
}

textures/79dr_ctf/platfill_b3_frozen_trans
{
	qer_editorimage textures/79dr_ctf/platfill_b3_frozen.tga
	surfaceparm nonsolid
	surfaceparm nomarks
	{
		map $lightmap 
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/79dr_ctf/platfill_b3_frozen.tga
		blendfunc filter
		rgbGen identity
	}
}

textures/79dr_floor/frozen_clangdark_ow3
{
	qer_editorimage textures/79dr_floor/clangdark_ow3_frozen.tga
	surfaceparm metalsteps
	{
		map textures/sfx/proto_zzztblu2.tga
		rgbGen identity
		tcMod turb 0 0.5 0 9.6
		tcMod scale 2 2
		tcMod scroll 9 5
	}
	{
		map textures/79dr_floor/clangdark_ow3_frozen.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc gl_dst_color gl_one_minus_dst_alpha
		rgbGen identity
		tcGen lightmap 
	}
}

textures/79dr_floor/frozen_clangdark_ow4
{
	qer_editorimage textures/79dr_floor/clangdark_ow3_frozen.tga
	surfaceparm metalsteps
	{
		map textures/sfx/proto_zzztpink.tga
		rgbGen identity
		tcMod turb 0 0.5 0 9.6
		tcMod scale 2 2
		tcMod scroll 9 5
	}
	{
		map textures/79dr_floor/clangdark_ow3_frozen.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc gl_dst_color gl_one_minus_dst_alpha
		rgbGen identity
		tcGen lightmap 
	}
}

textures/79dr_sfx/fog_fc
{
	qer_editorimage textures/79dr_sfx/fog_ice1.tga
	surfaceparm fog
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	fogparms ( 0 0.2 0.3215 ) 32
}

textures/79dr_floor/bloodspot_trans
{
	qer_editorimage textures/79dr_floor/bloodspot.tga
	surfaceparm nodamage
	surfaceparm nonsolid
	surfaceparm trans
	polygonOffset
	{
		map textures/79dr_floor/bloodspot.tga
		rgbGen identity
		alphaFunc GE128
	}
}