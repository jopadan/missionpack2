models/weaphits/proxmine
{
	nopicmip
        cull disable  
        {
                map models/weaphits/proxmine.tga
                rgbGen lightingdiffuse
        }
        {
                map models/weaphits/proxmineb.tga
                blendFunc add
                rgbGen wave sin .5 .5 0 2
        }

}

models/weaphits/proxmine2
{
	nopicmip
        cull disable  
        nomipmaps
        {
                clampmap models/weaphits/proxmine2.tga
                blendFunc add
                tcmod rotate 200
                tcMod stretch sin .6 0.2 0 .11
                rgbGen identity
        }
        {
                clampmap models/weaphits/proxmine2.tga
                blendFunc add
                tcmod rotate -200
                tcMod stretch sin .6 0.2 0 .2
                rgbGen identity
        }

}

models/weapons/proxmine/proxmine3
{
	sort additive
	cull disable
	nopicmip
	{
		map	models/weapons/proxmine/proxmine3.tga
		rgbGen lightingDiffuse	
	}
}

models/weapons/proxmine/f_proxmine
{
	nopicmip
        cull disable  
        {
                map models/weapons/proxmine/f_proxmine.tga
                blendFunc add
                rgbGen identity
        }


}

models/weapons/proxmine/proxmine2
{
	nopicmip
        cull disable  
        {
                map models/weapons/proxmine/proxmine2.tga
                rgbGen lightingdiffuse
        }
        {
                map models/weapons/proxmine/proxmine2b.tga
                blendFunc add
                rgbGen wave sin .5 .5 0 2
        }

}

models/weapons/proxmine/proxmine1
{
	nopicmip
        cull disable  
        {
                map models/weapons/proxmine/proxmine1b.tga
                tcmod scroll 0 2
                rgbGen lightingdiffuse
        }
        {
                map models/weapons/proxmine/proxmine1.tga
                blendFunc Blend
                rgbGen lightingdiffuse
        }

}

models/powerups/ammo/proxammo
{
	nopicmip
       {
	        map textures/effects/tinfx2d.tga
		tcGen environment
		blendfunc GL_ONE GL_ZERO
                rgbGen identity
       }
       {
	        map models/powerups/ammo/proxammo.tga
		blendfunc blend
                rgbGen lightingDiffuse
       }
}
models/powerups/ammo/proxammo2
{
	nopicmip
       {
	        map models/powerups/ammo/proxammo2.tga
		blendfunc GL_ONE GL_ZERO
                rgbGen identity
       }
}
