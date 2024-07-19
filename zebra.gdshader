shader_type canvas_item;

uniform sampler2D noise_sampler;
uniform vec4 fire_color_a: source_color;
uniform vec4 fire_color_b: source_color;

void fragment() {
	vec4 noise_texture = texture(noise_sampler, UV);
	vec4 current_texture = texture(TEXTURE, 5.0 * UV + noise_texture.r * 0.09 - 0.2 * TIME * 0.9);
	COLOR = current_texture;
}