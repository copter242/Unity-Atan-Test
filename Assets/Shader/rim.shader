// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:8043,x:33168,y:32385,varname:node_8043,prsc:2|emission-6341-OUT;n:type:ShaderForge.SFN_Fresnel,id:4059,x:32018,y:32764,varname:node_4059,prsc:2|NRM-5250-OUT,EXP-1836-OUT;n:type:ShaderForge.SFN_NormalVector,id:5250,x:31787,y:32764,prsc:2,pt:False;n:type:ShaderForge.SFN_Slider,id:6036,x:31651,y:32944,ptovrint:False,ptlb:rim2_Wide,ptin:_rim2_Wide,varname:_rim2_Wide,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:3;n:type:ShaderForge.SFN_Color,id:6608,x:31876,y:32064,ptovrint:False,ptlb:Color1,ptin:_Color1,varname:_Color1,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9485294,c2:0.3347751,c3:0.3347751,c4:1;n:type:ShaderForge.SFN_Color,id:4041,x:31883,y:32576,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:_Color2,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3235294,c2:0.8600404,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:8348,x:32234,y:32589,varname:node_8348,prsc:2|A-4041-RGB,B-4059-OUT;n:type:ShaderForge.SFN_Multiply,id:5526,x:32238,y:32194,varname:node_5526,prsc:2|A-6608-RGB,B-310-OUT;n:type:ShaderForge.SFN_Fresnel,id:310,x:32070,y:32248,varname:node_310,prsc:2|NRM-1159-OUT,EXP-3704-OUT;n:type:ShaderForge.SFN_NormalVector,id:1159,x:31839,y:32208,prsc:2,pt:False;n:type:ShaderForge.SFN_Slider,id:3704,x:31657,y:32409,ptovrint:False,ptlb:rim1_Wide,ptin:_rim1_Wide,varname:_rim1_Wide,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:3;n:type:ShaderForge.SFN_Slider,id:4381,x:32170,y:32422,ptovrint:False,ptlb:Color1_Intensity,ptin:_Color1_Intensity,varname:_Color1_Intensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:3;n:type:ShaderForge.SFN_Multiply,id:596,x:32496,y:32362,varname:node_596,prsc:2|A-5526-OUT,B-4381-OUT;n:type:ShaderForge.SFN_Slider,id:8066,x:32174,y:32840,ptovrint:False,ptlb:Color2_Intensity,ptin:_Color2_Intensity,varname:_Color2_Intensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:3;n:type:ShaderForge.SFN_Multiply,id:4330,x:32495,y:32679,varname:node_4330,prsc:2|A-8348-OUT,B-8066-OUT;n:type:ShaderForge.SFN_Vector1,id:6938,x:31850,y:33053,varname:node_6938,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:1836,x:32018,y:32960,varname:node_1836,prsc:2|A-6036-OUT,B-6938-OUT;n:type:ShaderForge.SFN_Lerp,id:6341,x:32982,y:32469,varname:node_6341,prsc:2|A-596-OUT,B-4330-OUT,T-9324-OUT;n:type:ShaderForge.SFN_Slider,id:9324,x:32611,y:32632,ptovrint:False,ptlb:bianhua,ptin:_bianhua,varname:_bianhua,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4764044,max:3;proporder:6036-6608-4041-3704-4381-8066-9324;pass:END;sub:END;*/

Shader "Custom/NewSurfaceShader" {
    Properties {
        _rim2_Wide ("rim2_Wide", Range(-1, 3)) = 1
        [HDR]_Color1 ("Color1", Color) = (0.9485294,0.3347751,0.3347751,1)
        [HDR]_Color2 ("Color2", Color) = (0.3235294,0.8600404,1,1)
        _rim1_Wide ("rim1_Wide", Range(-1, 3)) = 1
        _Color1_Intensity ("Color1_Intensity", Range(-1, 3)) = 1
        _Color2_Intensity ("Color2_Intensity", Range(-1, 3)) = 1
        _bianhua ("bianhua", Range(0, 3)) = 0.4764044
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _rim2_Wide;
            uniform float4 _Color1;
            uniform float4 _Color2;
            uniform float _rim1_Wide;
            uniform float _Color1_Intensity;
            uniform float _Color2_Intensity;
            uniform float _bianhua;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float3 emissive = lerp(((_Color1.rgb*pow(1.0-max(0,dot(i.normalDir, viewDirection)),_rim1_Wide))*_Color1_Intensity),((_Color2.rgb*pow(1.0-max(0,dot(i.normalDir, viewDirection)),(_rim2_Wide+1.0)))*_Color2_Intensity),_bianhua);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
