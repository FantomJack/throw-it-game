﻿Shader "Custom/Backobjects" {

	SubShader{
		Pass{
		// Only render pixels whose value in the stencil buffer equals 1.
Stencil {
  Ref 1
  Comp Equal
}
}
	}
}
