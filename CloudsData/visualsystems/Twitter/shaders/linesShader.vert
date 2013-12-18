#version 110
#extension GL_ARB_texture_rectangle : enable

//gl_Normal.x == 1 == node, 0 == edge -- tells us if we are in the middle of the line or on the node
//gl_Normal.y == pop decay, if x == 1.0, fully bright, if x == 0., default

varying float edgePositionMix;
varying float popMix;

void main(){
    gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
	gl_FrontColor = gl_Color;
	
	edgePositionMix = gl_Normal.x;
	popMix = gl_Normal.y;
	
}
