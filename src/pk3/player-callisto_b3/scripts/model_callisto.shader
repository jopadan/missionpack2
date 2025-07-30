
models/players/callisto/pm
{
	nopicmip
	{
		map models/players/callisto/color.tga
		blendFunc GL_ONE GL_ZERO
		alphaFunc GE128
		rgbGen entity
	}
	{
		map models/players/callisto/color.tga
		blendFunc GL_ONE GL_ZERO
		alphaFunc LT128
		rgbGen identity
	}
}

models/players/callisto/pmh
{
	nopicmip
	{
		map models/players/callisto/color_h.tga
		blendFunc GL_ONE GL_ZERO
		alphaFunc GE128
		rgbGen entity
	}
	{
		map models/players/callisto/color_h.tga
		blendFunc GL_ONE GL_ZERO
		alphaFunc LT128
		rgbGen identity
	}
}
