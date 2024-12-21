shader_type spatial;
uniform sampler2D noise_tex:repeat_enable;
uniform float noise_scale = 1.0;

void vertex() {

	VERTEX.y += sin(TIME * 0.1 + VERTEX.x * 100.0) / 2.0 ;
	VERTEX.x += sin(TIME + VERTEX.y * 100.0) / 2.0 ;
}

void fragment() {
	vec2 move_uv = vec2(0.2, 0.0) * TIME / 5.0;
	float detail_noise = texture(noise_tex, UV.xy + move_uv * 1.0 ).r;
	//detail_noise *= 0.2;
	float noise = texture(noise_tex, UV.xy * noise_scale + move_uv + detail_noise).r;
	ROUGHNESS = 0.9;
	RIM = 1.0;
	ALBEDO = vec3(noise, 0.2, 1.0);
}

//void light() {
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
//}
