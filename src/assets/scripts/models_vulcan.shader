models/weapons/vulcan/vulcan
{
	sort additive
	cull disable
	nopicmip
	{
		map	models/weapons/vulcan/vulcan.tga
		rgbGen lightingDiffuse	
	}
}

models/weapons/vulcan/f_vulcan
{
	nopicmip
	sort additive
	cull disable
	{
		map	models/weapons/vulcan/f_vulcan.tga
		blendfunc GL_ONE GL_ONE
	}
}

models/powerups/ammo/chaingammo
{
	nopicmip
       {
	        map textures/effects/tinfx2d.tga
		tcGen environment
		blendfunc GL_ONE GL_ZERO
                rgbGen identity
       }
       {
	        map models/powerups/ammo/chaingammo.tga
		blendfunc blend
                rgbGen lightingDiffuse
       }
}
models/powerups/ammo/chaingammo2
{
	nopicmip
       {
	        map models/powerups/ammo/chaingammo2.tga
		blendfunc GL_ONE GL_ZERO
                rgbGen identity
       }
}
