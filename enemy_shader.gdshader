shader_type fog;


uniform sampler2D noise_tex:repeat_enable;
uniform float noise_scale = 1.0;

void fog() {
	vec2 move_uv = vec2(0.2, 0.0) * TIME/1.0;
	float detail_noise = texture(noise_tex, WORLD_POSITION.xy + move_uv).r;
	detail_noise *= 0.2;
	float noise = texture(noise_tex, WORLD_POSITION.xy * noise_scale + move_uv ).r;
	
	
	if (WORLD_POSITION.z < -50.0) {
		if (WORLD_POSITION.z > -60.0){
			if (WORLD_POSITION.y > 0.0){
				DENSITY = mix(1.0, noise * 5.0, UVW.x) / 1.0;
			}
			
			
		}
		
	}
	ALBEDO = vec3(1.0);
	//ALBEDO = vec3(1.0);
}
