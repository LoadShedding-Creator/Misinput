shader_type fog;
uniform float falloff = 1.0;
uniform sampler2D noise_tex;
uniform float noise_scale = 1.0;

void fog() {
	vec2 move_uv = vec2(0.2, 0.0) * TIME/3.0;
	float noise = texture(noise_tex, WORLD_POSITION.xy * noise_scale + move_uv ).r;
	float sdf = -SDF;
	DENSITY = mix(1.0, noise, UVW.x);
	ALBEDO = vec3(1.0);
	
}
