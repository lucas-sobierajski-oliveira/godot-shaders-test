shader_type canvas_item;

uniform sampler2D sampler_texture;

void be_gree(inout vec4 color) {
	color.rg = vec2(1.0);
}

void vertex() {
	//COLOR.rg = UV;
	// alterando scale da imagem
	//VERTEX *= 1.0;
}

void fragment() {
	// criando um anova textura
	vec2 texture_stretch = vec2(1.0, sin(TIME));
	vec2 texture_position = vec2(0.0, 0);
	float uv_scale = 1.0;
	vec2 new_size = UV * uv_scale * texture_stretch;
	new_size += UV * 0.0 + texture_position;
	vec4 new_texture= texture(TEXTURE, new_size);
	COLOR = new_texture;

	//if (COLOR.a == 0.0) {
		//COLOR.a = 1.0;
	//}
	//if (UV.y > 0.25) {
		//COLOR.rgb = vec3(0);
	//}
	//COLOR.rgb *= mix(0.5, 1.0, step(0.7, UV.x));
	//be_gree(COLOR);
	// movendo a textura sampler para o lado, setando o UV vector position
	//vec3 zebra_texture = texture(sampler_texture, vec2(UV.x - 0.5, UV.y)).rgb;
	//COLOR.rgb = zebra_texture;
	// Called for every pixel the material is visible on.
	//COLOR.gb = vec2(0.0, 0.0);
	//COLOR[1] = 0.5;
	//COLOR.a = 1.0 - COLOR.a;
	//COLOR.a = 0.2;
	//OLOR.a = UV.x;
	//vec3 new_texture = texture(sampler_texture, UV).rgb;
	// COLOR.rgb = mix(new_texture, COLOR.rgb, 0.7);
	//COLOR.rgb = step(UV.x, 0.5) == 1.0 ? COLOR.rgb : vec3(1.0, 0, 0);
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
