// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3621,x:32801,y:32678,varname:node_3621,prsc:2|emission-2540-OUT;n:type:ShaderForge.SFN_Fresnel,id:3058,x:32089,y:32855,varname:node_3058,prsc:2|NRM-6063-OUT,EXP-7144-OUT;n:type:ShaderForge.SFN_NormalVector,id:6063,x:31848,y:32781,prsc:2,pt:False;n:type:ShaderForge.SFN_Slider,id:7144,x:31769,y:32974,ptovrint:False,ptlb:qiangdu,ptin:_qiangdu,varname:node_7144,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:1.224225,max:2;n:type:ShaderForge.SFN_Tex2d,id:9988,x:32088,y:32482,ptovrint:False,ptlb:Main_Tex,ptin:_Main_Tex,varname:node_9988,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:323c9f0fa99cbab4fb30ebfa4f86b2f3,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:2540,x:32538,y:32778,varname:node_2540,prsc:2|A-9358-OUT,B-2910-OUT;n:type:ShaderForge.SFN_Multiply,id:2910,x:32237,y:32918,varname:node_2910,prsc:2|A-3058-OUT,B-251-RGB;n:type:ShaderForge.SFN_Color,id:251,x:32076,y:33051,ptovrint:False,ptlb:Rim_Color,ptin:_Rim_Color,varname:node_251,prsc:2,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7794118,c2:0.4183607,c3:0.4183607,c4:1;n:type:ShaderForge.SFN_Multiply,id:9358,x:32301,y:32673,varname:node_9358,prsc:2|A-9988-RGB,B-1566-RGB;n:type:ShaderForge.SFN_Color,id:1566,x:32088,y:32673,ptovrint:False,ptlb:Tex_Color,ptin:_Tex_Color,varname:node_1566,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.245026,c2:0.5029562,c3:0.7573529,c4:1;proporder:7144-9988-251-1566;pass:END;sub:END;*/

Shader "yh/Unlit-RimLight" {
    Properties {
        _qiangdu ("qiangdu", Range(-2, 2)) = 1.224225
        _Main_Tex ("Main_Tex", 2D) = "white" {}
        [HideInInspector]_Rim_Color ("Rim_Color", Color) = (0.7794118,0.4183607,0.4183607,1)
        [HDR]_Tex_Color ("Tex_Color", Color) = (0.245026,0.5029562,0.7573529,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _qiangdu;
            uniform sampler2D _Main_Tex; uniform float4 _Main_Tex_ST;
            uniform float4 _Rim_Color;
            uniform float4 _Tex_Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _Main_Tex_var = tex2D(_Main_Tex,TRANSFORM_TEX(i.uv0, _Main_Tex));
                float3 emissive = ((_Main_Tex_var.rgb*_Tex_Color.rgb)+(pow(1.0-max(0,dot(i.normalDir, viewDirection)),_qiangdu)*_Rim_Color.rgb));
                float3 finalColor = emissive;
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
