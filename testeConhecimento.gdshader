shader_type canvas_item;

uniform sampler2D sampler_noise: repeat_enable;
uniform vec3 color_a: source_color;
uniform vec3 color_b: source_color;


void fragment() {
	vec4 noise_texture = texture(sampler_noise, UV + 0.4 * TIME);

	vec4 fire_texture = texture(TEXTURE, UV);
	vec3 color = mix(color_a, color_b, noise_texture.r);
	// definindo pontos em q o fogo ira aparecer e q não irá
	float all_fire = step(noise_texture.r, UV.y * 0.8);
	fire_texture.rgb = mix(COLOR.rgb, color.rgb, all_fire) + color.rgb * 0.6;

	COLOR = fire_texture;
}
