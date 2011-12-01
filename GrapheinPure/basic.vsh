#version 150

// what now must be done...


/*
    vector is already in location.
 It must be translated, then projected -> IN ORDER, no multiplication
 Remember translation is not a linear operation
 
 
 */
layout(location = 0) in vec4 Vposition;
layout(location = 1) in vec4 Vcolour;

//uniform mat4    ModelViewMatrix; 

uniform mat4    ProjectionMatrix;
out vec4 colour;
    
void main()
{
//    vec4 p2;
    
//    p2 = viewportTranslation * position;
    
// 	gl_Position = projectionMatrix * p2;
    
//    gl_Position = position;
    //vec4(vec2(1.0/450.0) * position.xy, 0, 1);
    
    colour = Vcolour;
    gl_Position = ProjectionMatrix * Vposition; // ModelViewMatrix * Vertex;
//    gl_Position = Vposition;
    
}
