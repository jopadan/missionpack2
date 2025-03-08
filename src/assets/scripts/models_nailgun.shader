models/weapons/nailgun/nailgun
{
	sort additive
	cull disable
	nopicmip
	{
		map	models/weapons/nailgun/nailgun.tga
		rgbGen lightingDiffuse	
	}
}
models/weapons/nailgun/nail
{
	nopicmip
     
     cull disable

        {
                map models/weapons/nailgun/nail.tga
                alphaFunc GE128
		depthWrite
                rgbGen identity
        }
}
models/weapons/nailgun/nail2
{
	nopicmip
     cull disable

        {
                map models/weapons/nailgun/nail2.tga
                alphaFunc GE128
		depthWrite
                rgbGen identity
        }
}
models/weapons/nailgun/f_nailgun
{
	nopicmip
     cull disable

        {
                map models/weapons/nailgun/f_nailgun.tga
                Blendfunc Add
                rgbGen identity
        }
}
models/weapons/nailgun/nailgun
{
	nopicmip
     //deformVertexes normal .2 .1
     cull disable

        {
                map models/weapons/nailgun/nailgun_env.tga
                //tcMod scale 2 2
                tcGen environment
                rgbGen lightingdiffuse
        }
        {
                map models/weapons/nailgun/nailgun.tga
                blendFunc blend
                rgbGen lightingdiffuse
        }
}
models/powerups/ammo/nailgammo
{
	nopicmip
       {
	        map textures/effects/tinfx2d.tga
		tcGen environment
		blendfunc GL_ONE GL_ZERO
                rgbGen identity
       }
       {
	        map models/powerups/ammo/nailgammo.tga
		blendfunc blend
                rgbGen lightingDiffuse
       }
}
models/powerups/ammo/nailgammo2
{
	nopicmip
       {
	        map models/powerups/ammo/nailgammo2.tga
		blendfunc GL_ONE GL_ZERO
                rgbGen identity
       }
}
