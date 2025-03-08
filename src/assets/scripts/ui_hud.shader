
//overlay anim test
ui/assets/score/bgfill
{
	nopicmip
	{	map ui/assets/score/bgfill2.tga
		blendFunc blend
	} 
	{
		map ui/assets/score/bgfill2o1.tga
		blendFunc add
		tcmod scroll 0.1 0
	}
	{
		map ui/assets/score/bgfill2o2.tga
		blendFunc add
		tcmod scroll -0.18 0
	}

	{
		clampmap ui/assets/score/bgfill2o6.tga
		blendFunc add
		tcMod transform 1 0 0 1 -0.8 -0.35
		tcmod scale 4 1
		tcMod stretch sin 3.5 0 0 0
		tcmod rotate -25
	}
	{
		clampmap ui/assets/score/bgfill2o7.tga
		blendFunc add
		tcMod transform 1 0 0 1 -0.8 -0.35
		tcmod scale 4 1
		tcMod stretch sin 3.5 0 0 0
		tcmod rotate -18
	}
}
ui/assets/score/bgfill_red
{
	nopicmip
	{	map ui/assets/score/bgfill2_red.tga
		blendFunc blend
	} 
	{
		map ui/assets/score/bgfill2o1.tga
		blendFunc add
		tcmod scroll -0.3 0
	}
	{
		map ui/assets/score/bgfill2o2.tga
		blendFunc add
		tcmod scroll -0.22 0
	}
	{
		map ui/assets/score/bgfill2o2.tga
		blendFunc add
		tcmod scale 0.5 0.5
		tcmod scroll 0.10 0
	}
	{
		clampmap ui/assets/score/bgfill2o6.tga
		blendFunc add
		tcMod transform 1 0 0 1 -0.8 -0.35
		tcmod scale 4 1
		tcMod stretch sin 3.5 0 0 0
		tcmod rotate -25
	}
	{
		clampmap ui/assets/score/bgfill2o7.tga
		blendFunc add
		tcMod transform 1 0 0 1 -0.8 -0.35
		tcmod scale 4 1
		tcMod stretch sin 3.5 0 0 0
		tcmod rotate -18
	}
}
ui/assets/score/bgfill_blue
{
	nopicmip
	{	map ui/assets/score/bgfill2_blue.tga
		blendFunc blend
	} 
	{
		map ui/assets/score/bgfill2o1.tga
		blendFunc add
		tcmod scroll -0.3 0
	}
	{
		map ui/assets/score/bgfill2o2.tga
		blendFunc add
		tcmod scroll -0.22 0
	}
	{
		map ui/assets/score/bgfill2o2.tga
		blendFunc add
		tcmod scale 0.5 0.5
		tcmod scroll 0.10 0
	}
	{
		clampmap ui/assets/score/bgfill2o6.tga
		blendFunc add
		tcMod transform 1 0 0 1 -0.8 -0.35
		tcmod scale 4 1
		tcMod stretch sin 3.5 0 0 0
		tcmod rotate -25
	}
	{
		clampmap ui/assets/score/bgfill2o7.tga
		blendFunc add
		tcMod transform 1 0 0 1 -0.8 -0.35
		tcmod scale 4 1
		tcMod stretch sin 3.5 0 0 0
		tcmod rotate -18
	}
}

ui/assets/score/ca_score_red
{
	nopicmip
	{	map ui/assets/score/ca_score_red.tga
		blendFunc blend
	}   
}
ui/assets/score/ca_score_blu
{
	nopicmip
	{	map ui/assets/score/ca_score_blu.tga
		blendFunc blend
	}   
}
ui/assets/score/ca_score
{
	nopicmip
	{	map ui/assets/score/ca_score.tga
		blendFunc blend
	}   
}
ui/assets/score/ca_arrow
{
	nopicmip
	{	map ui/assets/score/ca_arrow.tga
		blendFunc blend
	}   
}
ui/assets/score/ca_arrow_red
{
	nopicmip
	{	map ui/assets/score/ca_arrow_red.tga
		blendFunc blend
	}   
}
ui/assets/score/ca_arrow_blue
{
	nopicmip
	{	map ui/assets/score/ca_arrow_blue.tga
		blendFunc blend
	}   
}
ui/assets/score/arrow
{
	nopicmip
	{	map ui/assets/score/arrow.tga
		blendFunc blend
	}   
}
ui/assets/score/arrowg
{
	nopicmip
	{	map ui/assets/score/arrowg.tga
		blendFunc blend
	}   
}
ui/assets/score/arrowr
{
	nopicmip
	{	map ui/assets/score/arrowr.tga
		blendFunc blend
	}   
}
ui/assets/hud/rteambgl
{
	nopicmip
	{	map ui/assets/hud/rteambgl.tga
		blendFunc blend
		//tcMod scroll 7.1  0.2
		//tcmod scale .8 1
		rgbgen wave sin .5 .5 0 1
	}   
}
ui/assets/hud/rteambgr
{
	nopicmip
	{	map ui/assets/hud/rteambgr.tga
		blendFunc blend
		//tcMod scroll 7.1  0.2
		//tcmod scale .8 1
		rgbgen wave sin .5 .5 0 1
	}   
}
ui/assets/hud/bteambgl
{
	nopicmip
	{	map ui/assets/hud/bteambgl.tga
		blendFunc blend
		//tcMod scroll 7.1  0.2
		//tcmod scale .8 1
		rgbgen wave sin .5 .5 0 1
	}   
}
ui/assets/hud/bteambgr
{
	nopicmip
	{	map ui/assets/hud/bteambgr.tga
		blendFunc blend
		//tcMod scroll 7.1  0.2
		//tcmod scale .8 1
		rgbgen wave sin .5 .5 0 1
	}   
}

ui/assets/hud/flag
{
	nopicmip
	{	map ui/assets/hud/flag.tga
		blendFunc blend//GL_ONE GL_ZERO
	//	tcMod scroll 7.1  0.2
	//	tcmod scale .8 1
		rgbgen wave sin .25 .25 0 1
	}   
}

ui/assets/hud/healthalert
{
	nopicmip
	{	map ui/assets/hud/healthalert.tga
		blendFunc add
	//	tcMod scroll 7.1  0.2
	//	tcmod scale .8 1
		rgbgen wave sin .4 .3 0 1
	}   
}

ui/assets/hud/ctf
{
	nopicmip
	{	map ui/assets/hud/ctf.tga
		blendFunc blend
	}   
}
ui/assets/hud/ca
{
	nopicmip
	{	map ui/assets/hud/ca.tga
		blendFunc blend
	}   
}
ui/assets/hud/dm
{
	nopicmip
	{	map ui/assets/hud/dm.tga
		blendFunc blend
	}   
}
ui/assets/hud/tdm
{
	nopicmip
	{	map ui/assets/hud/tdm.tga
		blendFunc blend
	}   
}
ui/assets/hud/tourn
{
	nopicmip
	{	map ui/assets/hud/tourn.tga
		blendFunc blend
	}   
}
ui/assets/hud/tourn
{
	nopicmip
	{	map ui/assets/hud/tourn.tga
		blendFunc blend
	}   
}
ui/assets/hud/weaplit2
{
	nopicmip
	{
		map ui/assets/hud/weaplit2.tga
		blendFunc blend
	}
}
