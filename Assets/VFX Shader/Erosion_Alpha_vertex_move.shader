// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33310,y:32451,varname:node_9361,prsc:2|emission-7171-OUT,alpha-9948-OUT,voffset-8902-OUT;n:type:ShaderForge.SFN_Tex2d,id:1307,x:31853,y:32436,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_1307,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3791-OUT;n:type:ShaderForge.SFN_Color,id:360,x:32392,y:32353,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_360,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_VertexColor,id:8377,x:31935,y:32700,varname:node_8377,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1154,x:32396,y:32702,varname:node_1154,prsc:2|A-8377-RGB,B-8742-OUT;n:type:ShaderForge.SFN_Tex2d,id:1220,x:31482,y:32851,ptovrint:False,ptlb:Erosion_Texture,ptin:_Erosion_Texture,varname:_Texture_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:3217,x:31440,y:33127,ptovrint:False,ptlb:soft_Value,ptin:_soft_Value,varname:node_3217,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:2180,x:31690,y:32935,varname:node_2180,prsc:2|A-1220-R,B-3217-OUT;n:type:ShaderForge.SFN_TexCoord,id:8649,x:30978,y:32893,varname:node_8649,prsc:2,uv:1,uaff:True;n:type:ShaderForge.SFN_Vector1,id:4476,x:31451,y:33267,varname:node_4476,prsc:2,v1:-1.5;n:type:ShaderForge.SFN_Lerp,id:9239,x:31703,y:33176,varname:node_9239,prsc:2|A-3217-OUT,B-4476-OUT,T-8649-Z;n:type:ShaderForge.SFN_Subtract,id:3174,x:31894,y:33117,varname:node_3174,prsc:2|A-2180-OUT,B-9239-OUT;n:type:ShaderForge.SFN_Clamp01,id:8742,x:32107,y:33117,varname:node_8742,prsc:2|IN-3174-OUT;n:type:ShaderForge.SFN_Multiply,id:7171,x:32857,y:32338,varname:node_7171,prsc:2|A-360-RGB,B-1307-RGB,C-7633-RGB,D-1154-OUT;n:type:ShaderForge.SFN_Multiply,id:880,x:32536,y:32933,varname:node_880,prsc:2|A-8377-A,B-8742-OUT,C-1307-A,D-360-A;n:type:ShaderForge.SFN_Multiply,id:9948,x:32754,y:32705,varname:node_9948,prsc:2|A-7633-A,B-880-OUT;n:type:ShaderForge.SFN_Tex2d,id:7633,x:32472,y:32055,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_7633,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9063-OUT;n:type:ShaderForge.SFN_Add,id:9063,x:32383,y:31792,varname:node_9063,prsc:2|A-5346-OUT,B-7769-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:7769,x:32232,y:31980,varname:node_7769,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Append,id:5346,x:32190,y:31792,varname:node_5346,prsc:2|A-3696-OUT,B-4859-OUT;n:type:ShaderForge.SFN_Multiply,id:4859,x:32021,y:32012,varname:node_4859,prsc:2|A-8033-T,B-8607-OUT;n:type:ShaderForge.SFN_Multiply,id:3696,x:32007,y:31792,varname:node_3696,prsc:2|A-8317-OUT,B-8033-T;n:type:ShaderForge.SFN_Time,id:8033,x:31719,y:31944,varname:node_8033,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:8607,x:31821,y:32153,ptovrint:False,ptlb:node_8607,ptin:_node_8607,varname:node_8607,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:8317,x:31771,y:31807,ptovrint:False,ptlb:node_8317,ptin:_node_8317,varname:node_8317,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_TexCoord,id:5439,x:31242,y:32683,varname:node_5439,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Append,id:2722,x:31121,y:32539,varname:node_2722,prsc:2|A-8649-U,B-8649-V;n:type:ShaderForge.SFN_Add,id:3791,x:31438,y:32416,varname:node_3791,prsc:2|A-2722-OUT,B-5439-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:2979,x:32350,y:33330,ptovrint:False,ptlb:vertex_move,ptin:_vertex_move,varname:node_2979,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5991-OUT;n:type:ShaderForge.SFN_Multiply,id:8902,x:32796,y:33263,varname:node_8902,prsc:2|A-2979-RGB,B-1370-OUT,C-8649-W,D-4169-XYZ;n:type:ShaderForge.SFN_NormalVector,id:1370,x:32490,y:33405,prsc:2,pt:False;n:type:ShaderForge.SFN_Vector4Property,id:4169,x:32571,y:33558,ptovrint:False,ptlb:node_4169,ptin:_node_4169,varname:node_4169,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_TexCoord,id:3786,x:31944,y:33745,varname:node_3786,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Append,id:841,x:31944,y:33559,varname:node_841,prsc:2|A-8157-OUT,B-4113-OUT;n:type:ShaderForge.SFN_Multiply,id:4113,x:31775,y:33779,varname:node_4113,prsc:2|A-8502-T,B-7863-OUT;n:type:ShaderForge.SFN_Multiply,id:8157,x:31761,y:33559,varname:node_8157,prsc:2|A-4501-OUT,B-8502-T;n:type:ShaderForge.SFN_Time,id:8502,x:31473,y:33711,varname:node_8502,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:7863,x:31575,y:33920,ptovrint:False,ptlb:vertex_v,ptin:_vertex_v,varname:_node_8607_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:4501,x:31525,y:33574,ptovrint:False,ptlb:vertex_u,ptin:_vertex_u,varname:_node_8317_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:5991,x:32129,y:33559,varname:node_5991,prsc:2|A-841-OUT,B-3786-UVOUT;proporder:1307-360-1220-3217-7633-8607-8317-2979-4169-7863-4501;pass:END;sub:END;*/

Shader "yhshader/Erosion_Alpha_vertex_move" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Erosion_Texture ("Erosion_Texture", 2D) = "white" {}
        _soft_Value ("soft_Value", Float ) = 0
        _Mask ("Mask", 2D) = "white" {}
        _node_8607 ("node_8607", Float ) = 0
        _node_8317 ("node_8317", Float ) = 0
        _vertex_move ("vertex_move", 2D) = "white" {}
        _node_4169 ("node_4169", Vector) = (0,0,0,0)
        _vertex_v ("vertex_v", Float ) = 0
        _vertex_u ("vertex_u", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
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
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float4 _Color;
            uniform sampler2D _Erosion_Texture; uniform float4 _Erosion_Texture_ST;
            uniform float _soft_Value;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _node_8607;
            uniform float _node_8317;
            uniform sampler2D _vertex_move; uniform float4 _vertex_move_ST;
            uniform float4 _node_4169;
            uniform float _vertex_v;
            uniform float _vertex_u;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 texcoord1 : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 uv1 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_8502 = _Time;
                float2 node_5991 = (float2((_vertex_u*node_8502.g),(node_8502.g*_vertex_v))+o.uv0);
                float4 _vertex_move_var = tex2Dlod(_vertex_move,float4(TRANSFORM_TEX(node_5991, _vertex_move),0.0,0));
                v.vertex.xyz += (_vertex_move_var.rgb*v.normal*o.uv1.a*_node_4169.rgb);
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
                float2 node_3791 = (float2(i.uv1.r,i.uv1.g)+i.uv0);
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(node_3791, _Texture));
                float4 node_8033 = _Time;
                float2 node_9063 = (float2((_node_8317*node_8033.g),(node_8033.g*_node_8607))+i.uv0);
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(node_9063, _Mask));
                float4 _Erosion_Texture_var = tex2D(_Erosion_Texture,TRANSFORM_TEX(i.uv0, _Erosion_Texture));
                float node_8742 = saturate(((_Erosion_Texture_var.r*_soft_Value)-lerp(_soft_Value,(-1.5),i.uv1.b)));
                float3 emissive = (_Color.rgb*_Texture_var.rgb*_Mask_var.rgb*(i.vertexColor.rgb*node_8742));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,(_Mask_var.a*(i.vertexColor.a*node_8742*_Texture_var.a*_Color.a)));
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
            uniform sampler2D _vertex_move; uniform float4 _vertex_move_ST;
            uniform float4 _node_4169;
            uniform float _vertex_v;
            uniform float _vertex_u;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 uv1 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_8502 = _Time;
                float2 node_5991 = (float2((_vertex_u*node_8502.g),(node_8502.g*_vertex_v))+o.uv0);
                float4 _vertex_move_var = tex2Dlod(_vertex_move,float4(TRANSFORM_TEX(node_5991, _vertex_move),0.0,0));
                v.vertex.xyz += (_vertex_move_var.rgb*v.normal*o.uv1.a*_node_4169.rgb);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
