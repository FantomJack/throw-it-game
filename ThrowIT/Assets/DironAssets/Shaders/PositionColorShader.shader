// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:35933,y:31925,varname:node_9361,prsc:2|emission-2880-OUT,custl-4438-OUT;n:type:ShaderForge.SFN_NormalVector,id:9684,x:30202,y:31664,prsc:2,pt:True;n:type:ShaderForge.SFN_ViewVector,id:9393,x:30213,y:31522,varname:node_9393,prsc:2;n:type:ShaderForge.SFN_Lerp,id:4814,x:31619,y:30859,varname:node_4814,prsc:2|A-7745-OUT,B-1864-OUT,T-8185-OUT;n:type:ShaderForge.SFN_Vector3,id:491,x:29715,y:31863,varname:node_491,prsc:2,v1:1,v2:0,v3:0;n:type:ShaderForge.SFN_Vector3,id:3572,x:29714,y:32709,varname:node_3572,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Vector3,id:8425,x:29712,y:32225,varname:node_8425,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Dot,id:9049,x:30593,y:31589,varname:node_9049,prsc:2,dt:1|A-9393-OUT,B-9684-OUT;n:type:ShaderForge.SFN_Dot,id:5929,x:30641,y:32651,varname:node_5929,prsc:2,dt:1|A-9684-OUT,B-3572-OUT;n:type:ShaderForge.SFN_Dot,id:5190,x:30638,y:32210,varname:node_5190,prsc:2,dt:1|A-9684-OUT,B-4912-OUT;n:type:ShaderForge.SFN_Lerp,id:375,x:31847,y:31135,varname:node_375,prsc:2|A-4814-OUT,B-6336-RGB,T-5190-OUT;n:type:ShaderForge.SFN_Color,id:2737,x:30825,y:31169,ptovrint:False,ptlb:Y Color,ptin:_YColor,varname:_YColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8382353,c2:0.9665314,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:6336,x:30825,y:30719,ptovrint:False,ptlb:Z Color,ptin:_ZColor,varname:_ZColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.08272059,c2:0.4984742,c3:0.6617647,c4:1;n:type:ShaderForge.SFN_Color,id:9000,x:30825,y:30236,ptovrint:False,ptlb:X Color,ptin:_XColor,varname:_XColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8970588,c2:0.6710655,c3:0.1846886,c4:1;n:type:ShaderForge.SFN_Color,id:3782,x:32680,y:31624,ptovrint:False,ptlb:Light Multiplier,ptin:_LightMultiplier,varname:_LightMultiplier,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_OneMinus,id:9203,x:30767,y:31609,varname:node_9203,prsc:2|IN-9049-OUT;n:type:ShaderForge.SFN_Multiply,id:2088,x:32916,y:31940,varname:node_2088,prsc:2|A-3782-RGB,B-6565-OUT;n:type:ShaderForge.SFN_Color,id:3455,x:32884,y:31624,ptovrint:False,ptlb:Light Add,ptin:_LightAdd,varname:_LightAdd,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1544118,c2:0.09477688,c3:0.01930147,c4:1;n:type:ShaderForge.SFN_Add,id:9082,x:33177,y:32076,varname:node_9082,prsc:2|A-3455-RGB,B-2088-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1864,x:31028,y:30376,ptovrint:False,ptlb:Opposite X,ptin:_OppositeX,varname:_OppositeX,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-9000-RGB,B-9652-RGB;n:type:ShaderForge.SFN_Color,id:9652,x:30825,y:30477,ptovrint:False,ptlb:Opposite X Color,ptin:_OppositeXColor,varname:_OppositeXColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.409,c2:0.1100069,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:8768,x:30825,y:31386,ptovrint:False,ptlb:Opposite Y Color,ptin:_OppositeYColor,varname:_OppositeYColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4078431,c2:0.1098039,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:6412,x:30825,y:30939,ptovrint:False,ptlb:Opposite Z Color,ptin:_OppositeZColor,varname:_OppositeZColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4078431,c2:0.1098039,c3:0,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:8871,x:31097,y:31290,ptovrint:False,ptlb:Opposite Y,ptin:_OppositeY,varname:_OppositeY,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-2737-RGB,B-8768-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:2757,x:31075,y:30852,ptovrint:False,ptlb:Opposite Z ,ptin:_OppositeZ,varname:_OppositeZ,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-6336-RGB,B-6412-RGB;n:type:ShaderForge.SFN_Lerp,id:5254,x:32059,y:31357,varname:node_5254,prsc:2|A-375-OUT,B-2757-OUT,T-7025-OUT;n:type:ShaderForge.SFN_Lerp,id:7085,x:32252,y:31622,varname:node_7085,prsc:2|A-5254-OUT,B-2737-RGB,T-5929-OUT;n:type:ShaderForge.SFN_Lerp,id:7759,x:32474,y:31858,varname:node_7759,prsc:2|A-7085-OUT,B-8871-OUT,T-7182-OUT;n:type:ShaderForge.SFN_Dot,id:8185,x:30638,y:32034,varname:node_8185,prsc:2,dt:1|A-9684-OUT,B-3284-OUT;n:type:ShaderForge.SFN_Dot,id:7182,x:30652,y:32813,varname:node_7182,prsc:2,dt:1|A-9684-OUT,B-9309-OUT;n:type:ShaderForge.SFN_Dot,id:7025,x:30638,y:32380,varname:node_7025,prsc:2,dt:1|A-9684-OUT,B-8060-OUT;n:type:ShaderForge.SFN_Vector3,id:6761,x:29712,y:32347,varname:node_6761,prsc:2,v1:0,v2:0,v3:-1;n:type:ShaderForge.SFN_Vector3,id:9309,x:29714,y:32832,varname:node_9309,prsc:2,v1:0,v2:-1,v3:0;n:type:ShaderForge.SFN_Vector3,id:8654,x:29712,y:32036,varname:node_8654,prsc:2,v1:-1,v2:0,v3:0;n:type:ShaderForge.SFN_Tex2d,id:5207,x:33495,y:31659,ptovrint:False,ptlb:Shadow Texture,ptin:_ShadowTexture,varname:_ShadowTexture,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:2412,x:34723,y:31936,varname:node_2412,prsc:2|A-5833-RGB,B-9337-OUT;n:type:ShaderForge.SFN_Color,id:5833,x:34442,y:31670,ptovrint:False,ptlb:Shadow Tint,ptin:_ShadowTint,varname:_ShadowTint,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.0351968,c2:0.1346796,c3:0.1544118,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:7621,x:33677,y:31992,ptovrint:False,ptlb:Shadow Boost,ptin:_ShadowBoost,varname:_ShadowBoost,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_OneMinus,id:8284,x:33677,y:31828,varname:node_8284,prsc:2|IN-5207-RGB;n:type:ShaderForge.SFN_Multiply,id:8506,x:33894,y:31916,varname:node_8506,prsc:2|A-8284-OUT,B-7621-OUT;n:type:ShaderForge.SFN_Clamp01,id:8590,x:34111,y:31916,varname:node_8590,prsc:2|IN-8506-OUT;n:type:ShaderForge.SFN_OneMinus,id:3534,x:34275,y:31916,varname:node_3534,prsc:2|IN-8590-OUT;n:type:ShaderForge.SFN_Multiply,id:9337,x:34510,y:31936,varname:node_9337,prsc:2|A-3534-OUT,B-5207-RGB;n:type:ShaderForge.SFN_Multiply,id:4438,x:35092,y:32197,varname:node_4438,prsc:2|A-2412-OUT,B-3763-OUT;n:type:ShaderForge.SFN_VertexColor,id:8028,x:31992,y:32336,varname:node_8028,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1683,x:32485,y:32130,varname:node_1683,prsc:2|A-4435-RGB,B-8028-RGB;n:type:ShaderForge.SFN_Tex2d,id:4435,x:31992,y:32078,ptovrint:False,ptlb:Albedo,ptin:_Albedo,varname:_Albedo,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6565,x:32738,y:32098,varname:node_6565,prsc:2|A-7759-OUT,B-1683-OUT;n:type:ShaderForge.SFN_Dot,id:2550,x:30638,y:31819,varname:node_2550,prsc:2,dt:1|A-9684-OUT,B-4939-OUT;n:type:ShaderForge.SFN_Color,id:1667,x:30825,y:30028,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:7745,x:31169,y:30132,varname:node_7745,prsc:2|A-1667-RGB,B-9000-RGB,T-2550-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:3458,x:32481,y:30957,varname:node_3458,prsc:2;n:type:ShaderForge.SFN_Lerp,id:2995,x:33197,y:30974,varname:node_2995,prsc:2|A-5362-RGB,B-7334-OUT,T-9037-OUT;n:type:ShaderForge.SFN_Color,id:5362,x:32514,y:30729,ptovrint:False,ptlb:Overall Gradient Color,ptin:_OverallGradientColor,varname:_OverallGradientColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7647059,c2:0.9026369,c3:1,c4:1;n:type:ShaderForge.SFN_Vector3,id:7334,x:32558,y:30559,varname:node_7334,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Multiply,id:5313,x:32839,y:31146,varname:node_5313,prsc:2|A-4927-OUT,B-444-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8401,x:32408,y:31361,ptovrint:False,ptlb:Overall Gradient Contrast,ptin:_OverallGradientContrast,varname:_OverallGradientContrast,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Subtract,id:4927,x:32658,y:31016,varname:node_4927,prsc:2|A-3458-Y,B-8247-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8247,x:32464,y:31120,ptovrint:False,ptlb:Overall Gradient Offset,ptin:_OverallGradientOffset,varname:_OverallGradientOffset,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:5624,x:33341,y:31935,varname:node_5624,prsc:2|A-2995-OUT,B-9082-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:9037,x:33005,y:31146,varname:node_9037,prsc:2,min:-1,max:1|IN-5313-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3763,x:33500,y:32122,ptovrint:False,ptlb:Overall Gradient,ptin:_OverallGradient,varname:_OverallGradient,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-9082-OUT,B-5624-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3117,x:34338,y:31800,ptovrint:False,ptlb:World Space Gradient Scale_copy,ptin:_WorldSpaceGradientScale_copy,varname:_WorldSpaceGradientScale_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_VectorRejection,id:4939,x:30008,y:31871,varname:node_4939,prsc:2|A-491-OUT,B-3572-OUT;n:type:ShaderForge.SFN_VectorRejection,id:3284,x:30008,y:32022,varname:node_3284,prsc:2|A-8654-OUT,B-3572-OUT;n:type:ShaderForge.SFN_VectorRejection,id:4912,x:29998,y:32186,varname:node_4912,prsc:2|A-8425-OUT,B-3572-OUT;n:type:ShaderForge.SFN_VectorRejection,id:8060,x:29998,y:32351,varname:node_8060,prsc:2|A-6761-OUT,B-3572-OUT;n:type:ShaderForge.SFN_Divide,id:444,x:32616,y:31244,varname:node_444,prsc:2|A-5012-OUT,B-8401-OUT;n:type:ShaderForge.SFN_Vector1,id:5012,x:32427,y:31267,varname:node_5012,prsc:2,v1:1;n:type:ShaderForge.SFN_NormalVector,id:9012,x:33121,y:34792,prsc:2,pt:True;n:type:ShaderForge.SFN_ViewVector,id:5356,x:33132,y:34650,varname:node_5356,prsc:2;n:type:ShaderForge.SFN_Lerp,id:5454,x:34286,y:33396,varname:node_5454,prsc:2|A-2089-OUT,B-9657-OUT,T-9631-OUT;n:type:ShaderForge.SFN_Vector3,id:9745,x:32634,y:34991,varname:node_9745,prsc:2,v1:1,v2:0,v3:0;n:type:ShaderForge.SFN_Vector3,id:5773,x:32633,y:35837,varname:node_5773,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Vector3,id:6128,x:32631,y:35353,varname:node_6128,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Dot,id:900,x:33385,y:34506,varname:node_900,prsc:2,dt:1|A-5356-OUT,B-9012-OUT;n:type:ShaderForge.SFN_Dot,id:8838,x:33560,y:35779,varname:node_8838,prsc:2,dt:1|A-9012-OUT,B-5773-OUT;n:type:ShaderForge.SFN_Dot,id:6448,x:33557,y:35338,varname:node_6448,prsc:2,dt:1|A-9012-OUT,B-4491-OUT;n:type:ShaderForge.SFN_Lerp,id:118,x:34514,y:33672,varname:node_118,prsc:2|A-5454-OUT,B-2210-RGB,T-6448-OUT;n:type:ShaderForge.SFN_Color,id:2225,x:33744,y:34297,ptovrint:False,ptlb:Emission Y Color,ptin:_EmissionYColor,varname:_EmissionYColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8382353,c2:0.9665314,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:2210,x:33744,y:33847,ptovrint:False,ptlb:Emission Z Color,ptin:_EmissionZColor,varname:_EmissionZColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.08272059,c2:0.4984742,c3:0.6617647,c4:1;n:type:ShaderForge.SFN_Color,id:6132,x:33744,y:33364,ptovrint:False,ptlb:Emission X Color,ptin:_EmissionXColor,varname:_EmissionXColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8970588,c2:0.6710655,c3:0.1846886,c4:1;n:type:ShaderForge.SFN_OneMinus,id:4285,x:33395,y:34301,varname:node_4285,prsc:2|IN-900-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9657,x:33947,y:33504,ptovrint:False,ptlb:Emission Opposite X,ptin:_EmissionOppositeX,varname:_EmissionOppositeX,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-6132-RGB,B-9983-RGB;n:type:ShaderForge.SFN_Color,id:9983,x:33744,y:33605,ptovrint:False,ptlb:Emission Opposite X Color,ptin:_EmissionOppositeXColor,varname:_EmissionOppositeXColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.409,c2:0.1100069,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:2580,x:33744,y:34514,ptovrint:False,ptlb:Emission Opposite Y Color,ptin:_EmissionOppositeYColor,varname:_EmissionOppositeYColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4078431,c2:0.1098039,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:7862,x:33744,y:34067,ptovrint:False,ptlb:Emission Opposite Z Color,ptin:_EmissionOppositeZColor,varname:_EmissionOppositeZColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4078431,c2:0.1098039,c3:0,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:9814,x:34016,y:34418,ptovrint:False,ptlb:Emission Opposite Y,ptin:_EmissionOppositeY,varname:_EmissionOppositeY,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-2225-RGB,B-2580-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:8779,x:33994,y:33980,ptovrint:False,ptlb:Emission Opposite Z,ptin:_EmissionOppositeZ,varname:_EmissionOppositeZ,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-2210-RGB,B-7862-RGB;n:type:ShaderForge.SFN_Lerp,id:8601,x:34726,y:33894,varname:node_8601,prsc:2|A-118-OUT,B-8779-OUT,T-7659-OUT;n:type:ShaderForge.SFN_Lerp,id:7011,x:34919,y:34159,varname:node_7011,prsc:2|A-8601-OUT,B-2225-RGB,T-8838-OUT;n:type:ShaderForge.SFN_Lerp,id:2880,x:35141,y:34395,varname:node_2880,prsc:2|A-7011-OUT,B-9814-OUT,T-3975-OUT;n:type:ShaderForge.SFN_Dot,id:9631,x:33557,y:35162,varname:node_9631,prsc:2,dt:1|A-9012-OUT,B-1280-OUT;n:type:ShaderForge.SFN_Dot,id:3975,x:33571,y:35941,varname:node_3975,prsc:2,dt:1|A-9012-OUT,B-9168-OUT;n:type:ShaderForge.SFN_Dot,id:7659,x:33557,y:35508,varname:node_7659,prsc:2,dt:1|A-9012-OUT,B-482-OUT;n:type:ShaderForge.SFN_Vector3,id:1733,x:32631,y:35475,varname:node_1733,prsc:2,v1:0,v2:0,v3:-1;n:type:ShaderForge.SFN_Vector3,id:9168,x:32633,y:35960,varname:node_9168,prsc:2,v1:0,v2:-1,v3:0;n:type:ShaderForge.SFN_Vector3,id:7524,x:32631,y:35164,varname:node_7524,prsc:2,v1:-1,v2:0,v3:0;n:type:ShaderForge.SFN_Dot,id:9711,x:33557,y:34947,varname:node_9711,prsc:2,dt:1|A-9012-OUT,B-8735-OUT;n:type:ShaderForge.SFN_Color,id:788,x:33744,y:33156,ptovrint:False,ptlb:Emission Color,ptin:_EmissionColor,varname:_EmissionColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:2089,x:34088,y:33260,varname:node_2089,prsc:2|A-788-RGB,B-6132-RGB,T-9711-OUT;n:type:ShaderForge.SFN_VectorRejection,id:8735,x:32927,y:34999,varname:node_8735,prsc:2|A-9745-OUT,B-5773-OUT;n:type:ShaderForge.SFN_VectorRejection,id:1280,x:32927,y:35150,varname:node_1280,prsc:2|A-7524-OUT,B-5773-OUT;n:type:ShaderForge.SFN_VectorRejection,id:4491,x:32917,y:35314,varname:node_4491,prsc:2|A-6128-OUT,B-5773-OUT;n:type:ShaderForge.SFN_VectorRejection,id:482,x:32917,y:35479,varname:node_482,prsc:2|A-1733-OUT,B-5773-OUT;proporder:1667-9000-2737-6336-1864-9652-8871-8768-2757-6412-4435-5207-5833-7621-3782-3455-3763-5362-8401-8247-788-6132-2225-2210-9657-9983-9814-2580-8779-7862;pass:END;sub:END;*/

Shader "Animmal/PositionColor" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _XColor ("X Color", Color) = (0.8970588,0.6710655,0.1846886,1)
        _YColor ("Y Color", Color) = (0.8382353,0.9665314,1,1)
        _ZColor ("Z Color", Color) = (0.08272059,0.4984742,0.6617647,1)
        [MaterialToggle] _OppositeX ("Opposite X", Float ) = 0.409
        _OppositeXColor ("Opposite X Color", Color) = (0.409,0.1100069,0,1)
        [MaterialToggle] _OppositeY ("Opposite Y", Float ) = 0.4078431
        _OppositeYColor ("Opposite Y Color", Color) = (0.4078431,0.1098039,0,1)
        [MaterialToggle] _OppositeZ ("Opposite Z ", Float ) = 0.4078431
        _OppositeZColor ("Opposite Z Color", Color) = (0.4078431,0.1098039,0,1)
        _Albedo ("Albedo", 2D) = "white" {}
        _ShadowTexture ("Shadow Texture", 2D) = "white" {}
        _ShadowTint ("Shadow Tint", Color) = (0.0351968,0.1346796,0.1544118,1)
        _ShadowBoost ("Shadow Boost", Float ) = 0
        _LightMultiplier ("Light Multiplier", Color) = (1,1,1,1)
        _LightAdd ("Light Add", Color) = (0.1544118,0.09477688,0.01930147,1)
        [MaterialToggle] _OverallGradient ("Overall Gradient", Float ) = 0.1544118
        _OverallGradientColor ("Overall Gradient Color", Color) = (0.7647059,0.9026369,1,1)
        _OverallGradientContrast ("Overall Gradient Contrast", Float ) = 1
        _OverallGradientOffset ("Overall Gradient Offset", Float ) = 0
        _EmissionColor ("Emission Color", Color) = (1,1,1,1)
        _EmissionXColor ("Emission X Color", Color) = (0.8970588,0.6710655,0.1846886,1)
        _EmissionYColor ("Emission Y Color", Color) = (0.8382353,0.9665314,1,1)
        _EmissionZColor ("Emission Z Color", Color) = (0.08272059,0.4984742,0.6617647,1)
        [MaterialToggle] _EmissionOppositeX ("Emission Opposite X", Float ) = 0.409
        _EmissionOppositeXColor ("Emission Opposite X Color", Color) = (0.409,0.1100069,0,1)
        [MaterialToggle] _EmissionOppositeY ("Emission Opposite Y", Float ) = 0.4078431
        _EmissionOppositeYColor ("Emission Opposite Y Color", Color) = (0.4078431,0.1098039,0,1)
        [MaterialToggle] _EmissionOppositeZ ("Emission Opposite Z", Float ) = 0.4078431
        _EmissionOppositeZColor ("Emission Opposite Z Color", Color) = (0.4078431,0.1098039,0,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu 
            #pragma target 3.0
            uniform float4 _YColor;
            uniform float4 _ZColor;
            uniform float4 _XColor;
            uniform float4 _LightMultiplier;
            uniform float4 _LightAdd;
            uniform fixed _OppositeX;
            uniform float4 _OppositeXColor;
            uniform float4 _OppositeYColor;
            uniform float4 _OppositeZColor;
            uniform fixed _OppositeY;
            uniform fixed _OppositeZ;
            uniform sampler2D _ShadowTexture; uniform float4 _ShadowTexture_ST;
            uniform float4 _ShadowTint;
            uniform float _ShadowBoost;
            uniform sampler2D _Albedo; uniform float4 _Albedo_ST;
            uniform float4 _Color;
            uniform float4 _OverallGradientColor;
            uniform float _OverallGradientContrast;
            uniform float _OverallGradientOffset;
            uniform fixed _OverallGradient;
            uniform float4 _EmissionYColor;
            uniform float4 _EmissionZColor;
            uniform float4 _EmissionXColor;
            uniform fixed _EmissionOppositeX;
            uniform float4 _EmissionOppositeXColor;
            uniform float4 _EmissionOppositeYColor;
            uniform float4 _EmissionOppositeZColor;
            uniform fixed _EmissionOppositeY;
            uniform fixed _EmissionOppositeZ;
            uniform float4 _EmissionColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float3 node_9745 = float3(1,0,0);
                float3 node_5773 = float3(0,1,0);
                float3 node_7524 = float3(-1,0,0);
                float3 node_6128 = float3(0,0,1);
                float3 node_1733 = float3(0,0,-1);
                float3 emissive = lerp(lerp(lerp(lerp(lerp(lerp(_EmissionColor.rgb,_EmissionXColor.rgb,max(0,dot(normalDirection,(node_9745 - (node_5773 * dot(node_9745,node_5773)/dot(node_5773,node_5773)))))),lerp( _EmissionXColor.rgb, _EmissionOppositeXColor.rgb, _EmissionOppositeX ),max(0,dot(normalDirection,(node_7524 - (node_5773 * dot(node_7524,node_5773)/dot(node_5773,node_5773)))))),_EmissionZColor.rgb,max(0,dot(normalDirection,(node_6128 - (node_5773 * dot(node_6128,node_5773)/dot(node_5773,node_5773)))))),lerp( _EmissionZColor.rgb, _EmissionOppositeZColor.rgb, _EmissionOppositeZ ),max(0,dot(normalDirection,(node_1733 - (node_5773 * dot(node_1733,node_5773)/dot(node_5773,node_5773)))))),_EmissionYColor.rgb,max(0,dot(normalDirection,node_5773))),lerp( _EmissionYColor.rgb, _EmissionOppositeYColor.rgb, _EmissionOppositeY ),max(0,dot(normalDirection,float3(0,-1,0))));
                float4 _ShadowTexture_var = tex2D(_ShadowTexture,TRANSFORM_TEX(i.uv0, _ShadowTexture));
                float3 node_491 = float3(1,0,0);
                float3 node_3572 = float3(0,1,0);
                float3 node_8654 = float3(-1,0,0);
                float3 node_8425 = float3(0,0,1);
                float3 node_6761 = float3(0,0,-1);
                float4 _Albedo_var = tex2D(_Albedo,TRANSFORM_TEX(i.uv0, _Albedo));
                float3 node_9082 = (_LightAdd.rgb+(_LightMultiplier.rgb*(lerp(lerp(lerp(lerp(lerp(lerp(_Color.rgb,_XColor.rgb,max(0,dot(normalDirection,(node_491 - (node_3572 * dot(node_491,node_3572)/dot(node_3572,node_3572)))))),lerp( _XColor.rgb, _OppositeXColor.rgb, _OppositeX ),max(0,dot(normalDirection,(node_8654 - (node_3572 * dot(node_8654,node_3572)/dot(node_3572,node_3572)))))),_ZColor.rgb,max(0,dot(normalDirection,(node_8425 - (node_3572 * dot(node_8425,node_3572)/dot(node_3572,node_3572)))))),lerp( _ZColor.rgb, _OppositeZColor.rgb, _OppositeZ ),max(0,dot(normalDirection,(node_6761 - (node_3572 * dot(node_6761,node_3572)/dot(node_3572,node_3572)))))),_YColor.rgb,max(0,dot(normalDirection,node_3572))),lerp( _YColor.rgb, _OppositeYColor.rgb, _OppositeY ),max(0,dot(normalDirection,float3(0,-1,0))))*(_Albedo_var.rgb*i.vertexColor.rgb))));
                float3 finalColor = emissive + ((_ShadowTint.rgb+((1.0 - saturate(((1.0 - _ShadowTexture_var.rgb)*_ShadowBoost)))*_ShadowTexture_var.rgb))*lerp( node_9082, (lerp(_OverallGradientColor.rgb,float3(1,1,1),clamp(((i.posWorld.g-_OverallGradientOffset)*(1.0/_OverallGradientContrast)),-1,1))*node_9082), _OverallGradient ));
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
