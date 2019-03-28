/*

Boost Software License - Version 1.0 - August 17th,2003

Permission is hereby granted,free of charge,to any person or organization
obtaining a copy of the software and accompanying documentation covered by
this license(the "Software") to use,reproduce,display,distribute,
execute,and transmit the Software,and to prepare derivative works of the
Software,and to permit third-parties to whom the Software is furnished to
do so,all subject to the following:

The copyright notices in the Software and this entire statement,including
the above license grant,this restriction and the following disclaimer,
must be included in all copies of the Software,in whole or in part,and
all derivative works of the Software,unless such copies or derivative
works are solely in the form of machine-executable object code generated by
a source language processor.

THE SOFTWARE IS PROVIDED "AS IS",WITHOUT WARRANTY OF ANY KIND,EXPRESS OR
IMPLIED,INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE,TITLE AND NON-INFRINGEMENT. IN NO EVENT
SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
FOR ANY DAMAGES OR OTHER LIABILITY,WHETHER IN CONTRACT,TORT OR OTHERWISE,
ARISING FROM,OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.

*/
module derelict.sdl2.internal.gpu_dynload;

import derelict.sdl2.config;
static if(!staticGPU) {
    import derelict.util.loader,
           derelict.util.system;
    public import derelict.sdl2.internal.gpu_dynamic;

    class DerelictSDL2GPULoader : SharedLibLoader {
        this()
        {
            super(libNames);
        }

        protected override void loadSymbols()
        {
            bindFunc(cast(void**)&GPU_GetLinkedVersion, "GPU_GetLinkedVersion");
            bindFunc(cast(void**)&GPU_GetInitWindow, "GPU_GetInitWindow");
            bindFunc(cast(void**)&GPU_SetPreInitFlags, "GPU_SetPreInitFlags");
            bindFunc(cast(void**)&GPU_GetPreInitFlags, "GPU_GetPreInitFlags");
            bindFunc(cast(void**)&GPU_SetRequiredFeatures, "GPU_SetRequiredFeatures");
            bindFunc(cast(void**)&GPU_GetRequiredFeatures, "GPU_GetRequiredFeatures");
            bindFunc(cast(void**)&GPU_GetDefaultRendererOrder, "GPU_GetDefaultRendererOrder");
            bindFunc(cast(void**)&GPU_GetRendererOrder, "GPU_GetRendererOrder");
            bindFunc(cast(void**)&GPU_SetRendererOrder, "GPU_SetRendererOrder");
            bindFunc(cast(void**)&GPU_Init, "GPU_Init");
            bindFunc(cast(void**)&GPU_InitRenderer, "GPU_InitRenderer");
            bindFunc(cast(void**)&GPU_InitRendererByID, "GPU_InitRendererByID");
            bindFunc(cast(void**)&GPU_IsFeatureEnabled, "GPU_IsFeatureEnabled");
            bindFunc(cast(void**)&GPU_CloseCurrentRenderer, "GPU_CloseCurrentRenderer");
            bindFunc(cast(void**)&GPU_Quit, "GPU_Quit");
            bindFunc(cast(void**)&GPU_SetDebugLevel, "GPU_SetDebugLevel");
            bindFunc(cast(void**)&GPU_GetDebugLevel, "GPU_GetDebugLevel");
            bindFunc(cast(void**)&GPU_LogInfo, "GPU_LogInfo");
            bindFunc(cast(void**)&GPU_LogWarning, "GPU_LogWarning");
            bindFunc(cast(void**)&GPU_LogError, "GPU_LogError");
            bindFunc(cast(void**)&GPU_SetLogCallback, "GPU_SetLogCallback");
            bindFunc(cast(void**)&GPU_PushErrorCode, "GPU_PushErrorCode");
            bindFunc(cast(void**)&GPU_PopErrorCode, "GPU_PopErrorCode");
            bindFunc(cast(void**)&GPU_GetErrorString, "GPU_GetErrorString");
            bindFunc(cast(void**)&GPU_SetErrorQueueMax, "GPU_SetErrorQueueMax");
            bindFunc(cast(void**)&GPU_MakeRendererID, "GPU_MakeRendererID");
            bindFunc(cast(void**)&GPU_GetRendererID, "GPU_GetRendererID");
            bindFunc(cast(void**)&GPU_GetNumRegisteredRenderers, "GPU_GetNumRegisteredRenderers");
            bindFunc(cast(void**)&GPU_GetRegisteredRendererList, "GPU_GetRegisteredRendererList");
            bindFunc(cast(void**)&GPU_RegisterRenderer, "GPU_RegisterRenderer");
            bindFunc(cast(void**)&GPU_ReserveNextRendererEnum, "GPU_ReserveNextRendererEnum");
            bindFunc(cast(void**)&GPU_GetNumActiveRenderers, "GPU_GetNumActiveRenderers");
            bindFunc(cast(void**)&GPU_GetActiveRendererList, "GPU_GetActiveRendererList");
            bindFunc(cast(void**)&GPU_GetCurrentRenderer, "GPU_GetCurrentRenderer");
            bindFunc(cast(void**)&GPU_SetCurrentRenderer, "GPU_SetCurrentRenderer");
            bindFunc(cast(void**)&GPU_GetRenderer, "GPU_GetRenderer");
            bindFunc(cast(void**)&GPU_FreeRenderer, "GPU_FreeRenderer");
            bindFunc(cast(void**)&GPU_ResetRendererState, "GPU_ResetRendererState");
            bindFunc(cast(void**)&GPU_SetCoordinateMode, "GPU_SetCoordinateMode");
            bindFunc(cast(void**)&GPU_GetCoordinateMode, "GPU_GetCoordinateMode");
            bindFunc(cast(void**)&GPU_SetDefaultAnchor, "GPU_SetDefaultAnchor");
            bindFunc(cast(void**)&GPU_GetDefaultAnchor, "GPU_GetDefaultAnchor");
            bindFunc(cast(void**)&GPU_GetContextTarget, "GPU_GetContextTarget");
            bindFunc(cast(void**)&GPU_GetWindowTarget, "GPU_GetWindowTarget");
            bindFunc(cast(void**)&GPU_CreateTargetFromWindow, "GPU_CreateTargetFromWindow");
            bindFunc(cast(void**)&GPU_MakeCurrent, "GPU_MakeCurrent");
            bindFunc(cast(void**)&GPU_SetWindowResolution, "GPU_SetWindowResolution");
            bindFunc(cast(void**)&GPU_SetFullscreen, "GPU_SetFullscreen");
            bindFunc(cast(void**)&GPU_GetFullscreen, "GPU_GetFullscreen");
            bindFunc(cast(void**)&GPU_SetShapeBlending, "GPU_SetShapeBlending");
            bindFunc(cast(void**)&GPU_GetBlendModeFromPreset, "GPU_GetBlendModeFromPreset");
            bindFunc(cast(void**)&GPU_SetShapeBlendFunction, "GPU_SetShapeBlendFunction");
            bindFunc(cast(void**)&GPU_SetShapeBlendEquation, "GPU_SetShapeBlendEquation");
            bindFunc(cast(void**)&GPU_SetShapeBlendMode, "GPU_SetShapeBlendMode");
            bindFunc(cast(void**)&GPU_SetLineThickness, "GPU_SetLineThickness");
            bindFunc(cast(void**)&GPU_GetLineThickness, "GPU_GetLineThickness");
            bindFunc(cast(void**)&GPU_CreateAliasTarget, "GPU_CreateAliasTarget");
            bindFunc(cast(void**)&GPU_LoadTarget, "GPU_LoadTarget");
            bindFunc(cast(void**)&GPU_FreeTarget, "GPU_FreeTarget");
            bindFunc(cast(void**)&GPU_SetVirtualResolution, "GPU_SetVirtualResolution");
            bindFunc(cast(void**)&GPU_GetVirtualResolution, "GPU_GetVirtualResolution");
            bindFunc(cast(void**)&GPU_GetVirtualCoords, "GPU_GetVirtualCoords");
            bindFunc(cast(void**)&GPU_UnsetVirtualResolution, "GPU_UnsetVirtualResolution");
            bindFunc(cast(void**)&GPU_MakeRect, "GPU_MakeRect");
            bindFunc(cast(void**)&GPU_MakeColor, "GPU_MakeColor");
            bindFunc(cast(void**)&GPU_SetViewport, "GPU_SetViewport");
            bindFunc(cast(void**)&GPU_UnsetViewport, "GPU_UnsetViewport");
            bindFunc(cast(void**)&GPU_GetDefaultCamera, "GPU_GetDefaultCamera");
            bindFunc(cast(void**)&GPU_GetCamera, "GPU_GetCamera");
            bindFunc(cast(void**)&GPU_SetCamera, "GPU_SetCamera");
            bindFunc(cast(void**)&GPU_EnableCamera, "GPU_EnableCamera");
            bindFunc(cast(void**)&GPU_IsCameraEnabled, "GPU_IsCameraEnabled");
            bindFunc(cast(void**)&GPU_GetPixel, "GPU_GetPixel");
            bindFunc(cast(void**)&GPU_SetClipRect, "GPU_SetClipRect");
            bindFunc(cast(void**)&GPU_SetClip, "GPU_SetClip");
            bindFunc(cast(void**)&GPU_UnsetClip, "GPU_UnsetClip");
            bindFunc(cast(void**)&GPU_IntersectRect, "GPU_IntersectRect");
            bindFunc(cast(void**)&GPU_IntersectClipRect, "GPU_IntersectClipRect");
            bindFunc(cast(void**)&GPU_SetTargetColor, "GPU_SetTargetColor");
            bindFunc(cast(void**)&GPU_SetTargetRGB, "GPU_SetTargetRGB");
            bindFunc(cast(void**)&GPU_SetTargetRGBA, "GPU_SetTargetRGBA");
            bindFunc(cast(void**)&GPU_UnsetTargetColor, "GPU_UnsetTargetColor");
            bindFunc(cast(void**)&GPU_LoadSurface, "GPU_LoadSurface");
            bindFunc(cast(void**)&GPU_LoadSurface_RW, "GPU_LoadSurface_RW");
            bindFunc(cast(void**)&GPU_SaveSurface, "GPU_SaveSurface");
            bindFunc(cast(void**)&GPU_SaveSurface_RW, "GPU_SaveSurface_RW");
            bindFunc(cast(void**)&GPU_CreateImage, "GPU_CreateImage");
            bindFunc(cast(void**)&GPU_CreateImageUsingTexture, "GPU_CreateImageUsingTexture");
            bindFunc(cast(void**)&GPU_LoadImage, "GPU_LoadImage");
            bindFunc(cast(void**)&GPU_LoadImage_RW, "GPU_LoadImage_RW");
            bindFunc(cast(void**)&GPU_CreateAliasImage, "GPU_CreateAliasImage");
            bindFunc(cast(void**)&GPU_CopyImage, "GPU_CopyImage");
            bindFunc(cast(void**)&GPU_FreeImage, "GPU_FreeImage");
            bindFunc(cast(void**)&GPU_SetImageVirtualResolution, "GPU_SetImageVirtualResolution");
            bindFunc(cast(void**)&GPU_UnsetImageVirtualResolution, "GPU_UnsetImageVirtualResolution");
            bindFunc(cast(void**)&GPU_UpdateImage, "GPU_UpdateImage");
            bindFunc(cast(void**)&GPU_UpdateImageBytes, "GPU_UpdateImageBytes");
            bindFunc(cast(void**)&GPU_ReplaceImage, "GPU_ReplaceImage");
            bindFunc(cast(void**)&GPU_SaveImage, "GPU_SaveImage");
            bindFunc(cast(void**)&GPU_SaveImage_RW, "GPU_SaveImage_RW");
            bindFunc(cast(void**)&GPU_GenerateMipmaps, "GPU_GenerateMipmaps");
            bindFunc(cast(void**)&GPU_SetColor, "GPU_SetColor");
            bindFunc(cast(void**)&GPU_SetRGB, "GPU_SetRGB");
            bindFunc(cast(void**)&GPU_SetRGBA, "GPU_SetRGBA");
            bindFunc(cast(void**)&GPU_GetBlending, "GPU_GetBlending");
            bindFunc(cast(void**)&GPU_SetBlending, "GPU_SetBlending");
            bindFunc(cast(void**)&GPU_SetBlendFunction, "GPU_SetBlendFunction");
            bindFunc(cast(void**)&GPU_SetBlendEquation, "GPU_SetBlendEquation");
            bindFunc(cast(void**)&GPU_SetBlendMode, "GPU_SetBlendMode");
            bindFunc(cast(void**)&GPU_SetImageFilter, "GPU_SetImageFilter");
            bindFunc(cast(void**)&GPU_SetAnchor, "GPU_SetAnchor");
            bindFunc(cast(void**)&GPU_GetAnchor, "GPU_GetAnchor");
            bindFunc(cast(void**)&GPU_GetSnapMode, "GPU_GetSnapMode");
            bindFunc(cast(void**)&GPU_SetSnapMode, "GPU_SetSnapMode");
            bindFunc(cast(void**)&GPU_SetWrapMode, "GPU_SetWrapMode");
            bindFunc(cast(void**)&GPU_CopyImageFromSurface, "GPU_CopyImageFromSurface");
            bindFunc(cast(void**)&GPU_CopyImageFromTarget, "GPU_CopyImageFromTarget");
            bindFunc(cast(void**)&GPU_CopySurfaceFromTarget, "GPU_CopySurfaceFromTarget");
            bindFunc(cast(void**)&GPU_CopySurfaceFromImage, "GPU_CopySurfaceFromImage");
            bindFunc(cast(void**)&GPU_VectorLength, "GPU_VectorLength");
            bindFunc(cast(void**)&GPU_VectorNormalize, "GPU_VectorNormalize");
            bindFunc(cast(void**)&GPU_VectorDot, "GPU_VectorDot");
            bindFunc(cast(void**)&GPU_VectorCross, "GPU_VectorCross");
            bindFunc(cast(void**)&GPU_VectorCopy, "GPU_VectorCopy");
            bindFunc(cast(void**)&GPU_VectorApplyMatrix, "GPU_VectorApplyMatrix");
            bindFunc(cast(void**)&GPU_MatrixCopy, "GPU_MatrixCopy");
            bindFunc(cast(void**)&GPU_MatrixIdentity, "GPU_MatrixIdentity");
            bindFunc(cast(void**)&GPU_MatrixOrtho, "GPU_MatrixOrtho");
            bindFunc(cast(void**)&GPU_MatrixFrustum, "GPU_MatrixFrustum");
            bindFunc(cast(void**)&GPU_MatrixPerspective, "GPU_MatrixPerspective");
            bindFunc(cast(void**)&GPU_MatrixLookAt, "GPU_MatrixLookAt");
            bindFunc(cast(void**)&GPU_MatrixTranslate, "GPU_MatrixTranslate");
            bindFunc(cast(void**)&GPU_MatrixScale, "GPU_MatrixScale");
            bindFunc(cast(void**)&GPU_MatrixRotate, "GPU_MatrixRotate");
            bindFunc(cast(void**)&GPU_MatrixMultiply, "GPU_MatrixMultiply");
            bindFunc(cast(void**)&GPU_MultiplyAndAssign, "GPU_MultiplyAndAssign");
            bindFunc(cast(void**)&GPU_GetMatrixString, "GPU_GetMatrixString");
            bindFunc(cast(void**)&GPU_GetCurrentMatrix, "GPU_GetCurrentMatrix");
            bindFunc(cast(void**)&GPU_GetModelView, "GPU_GetModelView");
            bindFunc(cast(void**)&GPU_GetProjection, "GPU_GetProjection");
            bindFunc(cast(void**)&GPU_GetModelViewProjection, "GPU_GetModelViewProjection");
            bindFunc(cast(void**)&GPU_MatrixMode, "GPU_MatrixMode");
            bindFunc(cast(void**)&GPU_PushMatrix, "GPU_PushMatrix");
            bindFunc(cast(void**)&GPU_PopMatrix, "GPU_PopMatrix");
            bindFunc(cast(void**)&GPU_LoadIdentity, "GPU_LoadIdentity");
            bindFunc(cast(void**)&GPU_Ortho, "GPU_Ortho");
            bindFunc(cast(void**)&GPU_Frustum, "GPU_Frustum");
            bindFunc(cast(void**)&GPU_Translate, "GPU_Translate");
            bindFunc(cast(void**)&GPU_Scale, "GPU_Scale");
            bindFunc(cast(void**)&GPU_Rotate, "GPU_Rotate");
            bindFunc(cast(void**)&GPU_MultMatrix, "GPU_MultMatrix");
            bindFunc(cast(void**)&GPU_Clear, "GPU_Clear");
            bindFunc(cast(void**)&GPU_ClearColor, "GPU_ClearColor");
            bindFunc(cast(void**)&GPU_ClearRGB, "GPU_ClearRGB");
            bindFunc(cast(void**)&GPU_ClearRGBA, "GPU_ClearRGBA");
            bindFunc(cast(void**)&GPU_Blit, "GPU_Blit");
            bindFunc(cast(void**)&GPU_BlitRotate, "GPU_BlitRotate");
            bindFunc(cast(void**)&GPU_BlitScale, "GPU_BlitScale");
            bindFunc(cast(void**)&GPU_BlitTransform, "GPU_BlitTransform");
            bindFunc(cast(void**)&GPU_BlitTransformX, "GPU_BlitTransformX");
            bindFunc(cast(void**)&GPU_BlitRect, "GPU_BlitRect");
            bindFunc(cast(void**)&GPU_BlitRectX, "GPU_BlitRectX");
            bindFunc(cast(void**)&GPU_TriangleBatch, "GPU_TriangleBatch");
            bindFunc(cast(void**)&GPU_TriangleBatchX, "GPU_TriangleBatchX");
            bindFunc(cast(void**)&GPU_FlushBlitBuffer, "GPU_FlushBlitBuffer");
            bindFunc(cast(void**)&GPU_Flip, "GPU_Flip");
            bindFunc(cast(void**)&GPU_Pixel, "GPU_Pixel");
            bindFunc(cast(void**)&GPU_Line, "GPU_Line");
            bindFunc(cast(void**)&GPU_Arc, "GPU_Arc");
            bindFunc(cast(void**)&GPU_ArcFilled, "GPU_ArcFilled");
            bindFunc(cast(void**)&GPU_Circle, "GPU_Circle");
            bindFunc(cast(void**)&GPU_CircleFilled, "GPU_CircleFilled");
            bindFunc(cast(void**)&GPU_Ellipse, "GPU_Ellipse");
            bindFunc(cast(void**)&GPU_EllipseFilled, "GPU_EllipseFilled");
            bindFunc(cast(void**)&GPU_Sector, "GPU_Sector");
            bindFunc(cast(void**)&GPU_SectorFilled, "GPU_SectorFilled");
            bindFunc(cast(void**)&GPU_Tri, "GPU_Tri");
            bindFunc(cast(void**)&GPU_TriFilled, "GPU_TriFilled");
            bindFunc(cast(void**)&GPU_Rectangle, "GPU_Rectangle");
            bindFunc(cast(void**)&GPU_Rectangle2, "GPU_Rectangle2");
            bindFunc(cast(void**)&GPU_RectangleFilled, "GPU_RectangleFilled");
            bindFunc(cast(void**)&GPU_RectangleFilled2, "GPU_RectangleFilled2");
            bindFunc(cast(void**)&GPU_RectangleRound, "GPU_RectangleRound");
            bindFunc(cast(void**)&GPU_RectangleRound2, "GPU_RectangleRound2");
            bindFunc(cast(void**)&GPU_RectangleRoundFilled, "GPU_RectangleRoundFilled");
            bindFunc(cast(void**)&GPU_RectangleRoundFilled2, "GPU_RectangleRoundFilled2");
            bindFunc(cast(void**)&GPU_Polygon, "GPU_Polygon");
            bindFunc(cast(void**)&GPU_PolygonFilled, "GPU_PolygonFilled");
            bindFunc(cast(void**)&GPU_CreateShaderProgram, "GPU_CreateShaderProgram");
            bindFunc(cast(void**)&GPU_FreeShaderProgram, "GPU_FreeShaderProgram");
            bindFunc(cast(void**)&GPU_CompileShader_RW, "GPU_CompileShader_RW");
            bindFunc(cast(void**)&GPU_CompileShader, "GPU_CompileShader");
            bindFunc(cast(void**)&GPU_LoadShader, "GPU_LoadShader");
            bindFunc(cast(void**)&GPU_LinkShaders, "GPU_LinkShaders");
            bindFunc(cast(void**)&GPU_LinkManyShaders, "GPU_LinkManyShaders");
            bindFunc(cast(void**)&GPU_FreeShader, "GPU_FreeShader");
            bindFunc(cast(void**)&GPU_AttachShader, "GPU_AttachShader");
            bindFunc(cast(void**)&GPU_DetachShader, "GPU_DetachShader");
            bindFunc(cast(void**)&GPU_LinkShaderProgram, "GPU_LinkShaderProgram");
            bindFunc(cast(void**)&GPU_GetCurrentShaderProgram, "GPU_GetCurrentShaderProgram");
            bindFunc(cast(void**)&GPU_IsDefaultShaderProgram, "GPU_IsDefaultShaderProgram");
            bindFunc(cast(void**)&GPU_ActivateShaderProgram, "GPU_ActivateShaderProgram");
            bindFunc(cast(void**)&GPU_DeactivateShaderProgram, "GPU_DeactivateShaderProgram");
            bindFunc(cast(void**)&GPU_GetShaderMessage, "GPU_GetShaderMessage");
            bindFunc(cast(void**)&GPU_GetAttributeLocation, "GPU_GetAttributeLocation");
            bindFunc(cast(void**)&GPU_MakeAttributeFormat, "GPU_MakeAttributeFormat");
            bindFunc(cast(void**)&GPU_MakeAttribute, "GPU_MakeAttribute");
            bindFunc(cast(void**)&GPU_GetUniformLocation, "GPU_GetUniformLocation");
            bindFunc(cast(void**)&GPU_LoadShaderBlock, "GPU_LoadShaderBlock");
            bindFunc(cast(void**)&GPU_SetShaderBlock, "GPU_SetShaderBlock");
            bindFunc(cast(void**)&GPU_GetShaderBlock, "GPU_GetShaderBlock");
            bindFunc(cast(void**)&GPU_SetShaderImage, "GPU_SetShaderImage");
            bindFunc(cast(void**)&GPU_GetUniformiv, "GPU_GetUniformiv");
            bindFunc(cast(void**)&GPU_SetUniformi, "GPU_SetUniformi");
            bindFunc(cast(void**)&GPU_SetUniformiv, "GPU_SetUniformiv");
            bindFunc(cast(void**)&GPU_GetUniformuiv, "GPU_GetUniformuiv");
            bindFunc(cast(void**)&GPU_SetUniformui, "GPU_SetUniformui");
            bindFunc(cast(void**)&GPU_SetUniformuiv, "GPU_SetUniformuiv");
            bindFunc(cast(void**)&GPU_GetUniformfv, "GPU_GetUniformfv");
            bindFunc(cast(void**)&GPU_SetUniformf, "GPU_SetUniformf");
            bindFunc(cast(void**)&GPU_SetUniformfv, "GPU_SetUniformfv");
            bindFunc(cast(void**)&GPU_GetUniformMatrixfv, "GPU_GetUniformMatrixfv");
            bindFunc(cast(void**)&GPU_SetUniformMatrixfv, "GPU_SetUniformMatrixfv");
            bindFunc(cast(void**)&GPU_SetAttributef, "GPU_SetAttributef");
            bindFunc(cast(void**)&GPU_SetAttributei, "GPU_SetAttributei");
            bindFunc(cast(void**)&GPU_SetAttributeui, "GPU_SetAttributeui");
            bindFunc(cast(void**)&GPU_SetAttributefv, "GPU_SetAttributefv");
            bindFunc(cast(void**)&GPU_SetAttributeiv, "GPU_SetAttributeiv");
            bindFunc(cast(void**)&GPU_SetAttributeuiv, "GPU_SetAttributeuiv");
            bindFunc(cast(void**)&GPU_SetAttributeSource, "GPU_SetAttributeSource");
        }
    }

    __gshared DerelictSDL2GPULoader DerelictSDL2GPU;

    shared static this()
    {
        DerelictSDL2GPU = new DerelictSDL2GPULoader();
    }

    private:
        static if(Derelict_OS_Windows)
            enum libNames = "SDL2_gpu.dll";
        else static if(Derelict_OS_Mac)
            enum libNames = "/usr/local/lib/libSDL2_gpu.dylib,../Frameworks/SDL2_gpu.framework/SDL2_gpu,/Library/Frameworks/SDL2_gpu.framework/SDL2_gpu,/System/Library/Frameworks/SDL2_gpu.framework/SDL2_gpu";
        else static if(Derelict_OS_Posix)
            enum libNames = "libSDL2_gpu.so";
        else
            static assert(0,"Need to implement SDL2_gpu libNames for this operating system.");
}