//******************************//
//								//
//		MODELS/FLAGS			//
//								//
//******************************//

models/flags/b_flag
{
	nopicmip
               cull disable
	       deformVertexes wave 100 sin 0 3 0 .7
		   
        {
               map models/flags/b_flag.tga
              
        }


}

models/flags/b_flag2
{
	nopicmip
      
	deformVertexes wave 100 sin 4 3 0 0.3
        deformVertexes wave 30 sin 0 3 0 .8
        deformVertexes normal .3 .2
        cull none
        
        {
		map models/flags/b_flag2.tga
		 rgbGen identity
	}
        {
		map models/flags/blue_fx.tga
                tcGen environment
                //tcmod scale 9 3
                //tcmod scroll .1 .7
                blendFunc GL_ONE GL_ONE
                rgbGen identity
	}
        {
		map models/flags/b_flag2.tga
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	        rgbGen identity
	}
        {
		map textures/sfx/shadow.tga
                tcGen environment 
                //blendFunc GL_ONE GL_ONE            
                blendFunc GL_DST_COLOR GL_ZERO
                rgbGen identity
	}
}

models/flags/flag_red
{
	nopicmip
               cull none
	       deformVertexes wave 90 sin 1 5.6 1 .4
               deformVertexes wave 100 sin 1 2 1 .9
               deformVertexes wave 50 sin 1 .5 1 1
	 {
                map models/flags/flag_red.tga
                //blendfunc gl_src_alpha gl_one_minus_src_alpha
                //alphaFunc GE128
                blendFunc GL_ONE GL_ONE
                rgbGen lightingDiffuse
                depthWrite
        }


}

models/flags/flagbits
{
	nopicmip
               cull none
	      // deformVertexes wave 100 sin 0 5 0 .7
	 {
                map models/flags/flagbits.tga
                //blendfunc gl_src_alpha gl_one_minus_src_alpha
                alphaFunc GE128
                rgbGen lightingDiffuse
                depthWrite
        }


}

models/flags/flagtest
{
	nopicmip
      
	deformVertexes wave 100 sin 4 3 0 0.3
        deformVertexes wave 30 sin 0 3 0 .8
        deformVertexes normal .2 .2
        cull none
        
        {
		map models/flags/flagtest.tga
		rgbGen identity
        }
        {
		map textures/sfx/shadow.tga
                tcGen environment 
                //blendFunc GL_ONE GL_ONE            
                blendFunc GL_DST_COLOR GL_ZERO
                rgbGen identity
	}
      
    
}

models/flags/pole
{
	nopicmip
	  
        {
             map models/flags/skull.tga
		tcGen environment
		rgbGen lightingDiffuse	
                
        }


}

models/flags/r_flag
{
	nopicmip
               cull disable
	       deformVertexes wave 100 sin 0 3 0 .7
		   
        {
               map models/flags/r_flag.tga
              
        }


}

models/flags/r_flag2
{
	nopicmip
      
	deformVertexes wave 100 sin 4 3 0 0.3
        deformVertexes wave 30 sin 0 3 0 .8
        deformVertexes normal .3 .2
        cull none
        
        {
		map models/flags/r_flag2.tga
		 rgbGen identity
	}
        {
		map models/flags/red_fx.tga
                tcGen environment
                //tcmod scale 9 3
                //tcmod scroll .1 .7
                
                blendFunc GL_ONE GL_ONE
                 rgbGen identity
	}
        {
		map models/flags/r_flag2.tga
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	        rgbGen identity
	}
        {
		map textures/sfx/shadow.tga
                tcGen environment 
                //blendFunc GL_ONE GL_ONE            
                blendFunc GL_DST_COLOR GL_ZERO
               rgbGen identity
	}
}

models/flags/skull
{
	nopicmip
	  
        {
             map models/flags/skull.tga
		//tcGen environment
		rgbGen lightingDiffuse	
                
        }


}

models/flags/n_flag
{
	nopicmip
               cull disable
	       deformVertexes wave 100 sin 0 3 0 .7
		   
        {
               map models/flags/n_flag.tga
              
        }


}

models/flags/n_flag2
{
	nopicmip
      
	deformVertexes wave 100 sin 4 3 0 0.3
        deformVertexes wave 30 sin 0 3 0 .8
        deformVertexes normal .3 .2
        cull none
        
        {
		map models/flags/n_flag2.tga
		 rgbGen identity
	}
        {
		map models/flags/neutral_fx.tga
                tcGen environment
                //tcmod scale 9 3
                //tcmod scroll .1 .7
                
                blendFunc GL_ONE GL_ONE
                 rgbGen identity
	}
        {
		map models/flags/n_flag2.tga
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	        rgbGen identity
	}
        {
		map textures/sfx/shadow.tga
                tcGen environment 
                //blendFunc GL_ONE GL_ONE            
                blendFunc GL_DST_COLOR GL_ZERO
               rgbGen identity
	}
}


models/flags/pole
{
	nopicmip
	  
        {
             map textures/effects/tinfx.tga
		tcGen environment
		rgbGen lightingDiffuse	
                
        }


}

models/flag/flagbits2
{
	nopicmip
               cull none
	{
                map models/mapobjects/statues/flagbits_stat.tga
                alphaFunc GE128
                rgbGen lightingDiffuse
                depthWrite
        }

}

models/flag/flagbits
{
	nopicmip
               cull none
	      // deformVertexes wave 100 sin 0 5 0 .7
	 {
                map models/flags/flagbits.tga
                //blendfunc gl_src_alpha gl_one_minus_src_alpha
                alphaFunc GE128
                rgbGen lightingDiffuse
                depthWrite
        }


}
models/flag2/w_flag2
{
	nopicmip
      
	deformVertexes wave 100 sin 4 3 0 0.3
        deformVertexes wave 30 sin 0 3 0 .8
        deformVertexes normal .3 .2
        cull none
        
        {
		map models/flag2/w_flag2.tga
		 rgbGen identity
	}
        {
		map models/flag2/neutral_fx.tga
                tcGen environment
                //tcmod scale 9 3
                //tcmod scroll .1 .7
                
                blendFunc GL_ONE GL_ONE
                 rgbGen identity
	}
        {
		map models/flag2/w_flag2.tga
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	        rgbGen identity
	}
        {
		map textures/sfx/shadow.tga
                tcGen environment 
                //blendFunc GL_ONE GL_ONE            
                blendFunc GL_DST_COLOR GL_ZERO
               rgbGen identity
	}
}
models/flag2/r_flag2
{
	nopicmip
      
	deformVertexes wave 100 sin 4 3 0 0.3
        deformVertexes wave 30 sin 0 3 0 .8
        deformVertexes normal .3 .2
        cull none
        
        {
		map models/flag2/r_flag2.tga
		 rgbGen identity
	}
        {
		map models/flag2/red_fx.tga
                tcGen environment
                //tcmod scale 9 3
                //tcmod scroll .1 .7
                
                blendFunc GL_ONE GL_ONE
                 rgbGen identity
	}
        {
		map models/flag2/r_flag2.tga
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	        rgbGen identity
	}
        {
		map textures/sfx/shadow.tga
                tcGen environment 
                //blendFunc GL_ONE GL_ONE            
                blendFunc GL_DST_COLOR GL_ZERO
               rgbGen identity
	}
}
models/flag2/b_flag2
{
	nopicmip
      
	deformVertexes wave 100 sin 4 3 0 0.3
        deformVertexes wave 30 sin 0 3 0 .8
        deformVertexes normal .3 .2
        cull none
        
        {
		map models/flag2/b_flag2.tga
		 rgbGen identity
	}
        {
		map models/flag2/blue_fx.tga
                tcGen environment
                //tcmod scale 9 3
                //tcmod scroll .1 .7
                blendFunc GL_ONE GL_ONE
                rgbGen identity
	}
        {
		map models/flag2/b_flag2.tga
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	        rgbGen identity
	}
        {
		map textures/sfx/shadow.tga
                tcGen environment 
                //blendFunc GL_ONE GL_ONE            
                blendFunc GL_DST_COLOR GL_ZERO
                rgbGen identity
	}
}
