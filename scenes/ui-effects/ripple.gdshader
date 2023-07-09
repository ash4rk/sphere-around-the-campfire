shader_type canvas_item;

uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;
uniform vec2 center;
uniform float distortion_force;
uniform float size;
uniform float thickness;

void fragment() {
	float ratio = SCREEN_PIXEL_SIZE.x / SCREEN_PIXEL_SIZE.y;
	float outerCircle = (1.0 - smoothstep(size - 0.1, size + 0.1, length(UV - center)));
	float innerCircle = smoothstep(size - thickness - 0.1, size - thickness, length(UV - center));
	float mask = outerCircle * innerCircle;
	vec2 disposal = normalize(UV - center) * distortion_force * mask;
	
	COLOR = texture(SCREEN_TEXTURE, SCREEN_UV - disposal);
}
