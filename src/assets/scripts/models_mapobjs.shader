//******************************************//
//	mapobjects/gratelamp subfolder			//
//******************************************//

models/mapobjects/gratelamp/gratelamp_flare
{
	deformVertexes autoSprite

	q3map_surfacelight	300

	surfaceparm	trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	
	{
		Map models/mapobjects/gratelamp/gratelamp_flare.tga
		blendFunc GL_ONE GL_ONE
	}	
	
}

models/mapobjects/gratelamp/gratelamp
{
    cull disable
    
        {
                map models/mapobjects/gratelamp/gratelamp.tga
                alphaFunc GE128
		depthWrite
		rgbGen vertex
        }


}

models/mapobjects/gratelamp/gratetorch
{
    cull disable
    
        {
                map models/mapobjects/gratelamp/gratetorch.tga
                alphaFunc GE128
		depthWrite
		rgbGen vertex
        }


}

models/mapobjects/gratelamp/gratetorch2b
{
    cull disable
    
        {
                map models/mapobjects/gratelamp/gratetorch2b.tga
                alphaFunc GE128
		depthWrite
		rgbGen vertex
        }


}

models/mapobjects/gratelamp/lightbulb
{
    surfaceparm	trans

	{
		map models/mapobjects/gratelamp/lightbulb.tga
		tcGen environment
                blendFunc Add
                rgbGen identity
	}

}
models/mapobjects/gratelamp/gratelight
{
    cull disable
    surfaceparm	trans
    nopicmip
    
        {
                map models/mapobjects/gratelamp/gratelight.tga
                alphaFunc GE128
		depthWrite
		rgbGen vertex
        }


}
models/mapobjects/gratelamp/gratelight_flare
{
	deformVertexes autoSprite
        surfaceparm	trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	
	{
		Map models/mapobjects/gratelamp/gratelight_flare.tga
		blendFunc Add
                rgbGen wave sin .5 .2 0 0
	}	
	
}
