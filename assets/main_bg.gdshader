shader_type canvas_item;

uniform vec3 cells_colour : source_color = vec3(1.0, 1.0, 1.0);
uniform vec3 lines_colour : source_color = vec3(0.0, 0.0, 0.0);

void fragment(){
	vec3 colour = vec3(0.75);
	
	vec2 cell = fract(UV * TEXTURE_PIXEL_SIZE / 100.0);
	cell = abs(cell - 0.5);
	float distToCell = 1.0 - 2.0 * max(cell.x, cell.y);
	
	float cellLine = smoothstep(0.0, 0.05, distToCell);
	
	colour = mix(lines_colour, colour, cellLine);
	
    COLOR = vec4(colour, 1.0);
}

