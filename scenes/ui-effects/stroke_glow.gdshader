shader_type canvas_item;

uniform sampler2D mask;
uniform float transparency: hint_range(0.0, 1.0, 0.1) = 0.0;

void fragment() {
	COLOR = texture(TEXTURE, UV);
	
	vec2 muv = UV;
	muv.y = 1.0 - muv.y;
	COLOR.a = texture(mask, muv).r * transparency;
	COLOR.rgb = vec3(40.0, 40.0, 0.0);
}
