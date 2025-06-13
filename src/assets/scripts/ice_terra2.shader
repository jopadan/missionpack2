textures/ice_terra2/ice_0
{
surfaceparm nolightmap
q3map_terrain
q3map_novertexshadows
q3map_forcesunlight
q3map_vertexscale .5
q3map_tcGen ivector ( 512 0 0 ) ( 0 512 0 )
polygonOffset
	{
	map textures/79dr_terrain/snow3.tga
	rgbGen vertex
	}
}

textures/ice_terra2/ice_1
{
surfaceparm nolightmap
q3map_terrain
q3map_novertexshadows
q3map_forcesunlight
q3map_vertexscale .5
q3map_tcGen ivector ( 512 0 0 ) ( 0 512 0 )
polygonOffset
	{
	map textures/79dr_terrain/snow3_dirty.tga
	rgbGen vertex
	}
}

textures/ice_terra2/ice_0to1
{
surfaceparm nolightmap
q3map_terrain
q3map_novertexshadows
q3map_forcesunlight
q3map_vertexscale .5
q3map_tcGen ivector ( 512 0 0 ) ( 0 512 0 )
polygonOffset
	{
	map textures/79dr_terrain/snow3.tga
	rgbGen vertex
	alphaGen vertex
	}
	{
	map textures/79dr_terrain/snow3_dirty.tga
	rgbGen vertex
	alphaGen vertex
	blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}

