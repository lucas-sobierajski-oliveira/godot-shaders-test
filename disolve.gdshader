shader_type canvas_item;

uniform float fade_out: hint_range(-1.0, 1.0, 0.1);
uniform vec3 desease_color: source_color;
uniform sampler2D noise_sampler;
uniform sampler2D gradient_sampler;

void vertex() {
	if (sin(TIME) < 0.2) {
		VERTEX *= clamp(abs(sin(TIME)) * 2.5, 1.0, 10.0);
	}
}

void fragment() {
	float noise = texture(noise_sampler, UV).r;
	vec4 gradient_texture = texture(gradient_sampler, vec2(UV.x, UV.y + sin(TIME) * 2.0 + noise));


	COLOR.rgb = mix(gradient_texture.rgb, COLOR.rgb, smoothstep(0.0, 1.0, UV.y + sin(TIME) * 2.0 + noise));
	COLOR.a = min(COLOR.a, gradient_texture.a);

}