shader_type canvas_item;

uniform sampler2D noise_sampler: repeat_enable;
uniform vec4 color_a: source_color;
uniform vec4 color_b: source_color;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	vec4 noise_texture = texture(noise_sampler, UV + 0.9 * TIME * 0.1);
	// ondulando pixels da textura
	vec4 main_texture = texture(TEXTURE, vec2(UV.x + noise_texture.r * 0.07 - 0.035, UV.y + noise_texture.r * 0.07 - 0.035));
	COLOR = main_texture;

	vec4 fire_color = mix(color_a, color_b, noise_texture);
	// adicionando cor aleatoria nos pix baseado na textura
	COLOR *= mix(COLOR, fire_color, noise_texture.r);
	//COLOR = mix(color_a, color_b, noise_texture.r);
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
