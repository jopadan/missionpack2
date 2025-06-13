textures/ik_sky/ik_sky_night
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	qer_editorimage textures/ik_sky/ik_sky_night_back.tga
	q3map_lightimage textures/ik_sky/ik_sky_night_back.tga
	q3map_surfacelight 200
	skyparms - 512 -
	{
		map textures/ik_sky/ik_sky_night_back.tga
		tcMod scale 2 2
		tcMod scroll 0.01 0.01
		depthWrite
	}
	{
		map textures/ik_sky/ik_sky_night_front.tga
		blendFunc GL_ONE GL_ONE
		tcMod scale 3 3
		tcMod scroll 0.02 0.02
	}
}