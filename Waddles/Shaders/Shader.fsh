//
//  Shader.fsh
//  Waddles
//
//  Created by Sumedha Pramod on 1/23/14.
//  Copyright (c) 2014 Sumedha Pramod. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
