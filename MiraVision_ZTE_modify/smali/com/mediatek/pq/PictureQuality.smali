.class public Lcom/mediatek/pq/PictureQuality;
.super Ljava/lang/Object;
.source "PictureQuality.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/pq/PictureQuality$Hist;,
        Lcom/mediatek/pq/PictureQuality$Range;
    }
.end annotation


# static fields
.field public static final CAPABILITY_MASK_COLOR:I = 0x1

.field public static final CAPABILITY_MASK_DC:I = 0x8

.field public static final CAPABILITY_MASK_GAMMA:I = 0x4

.field public static final CAPABILITY_MASK_OD:I = 0x10

.field public static final CAPABILITY_MASK_SHARPNESS:I = 0x2

.field public static final DCHIST_INFO_NUM:I = 0x14

.field private static final GAMMA_INDEX_PROPERTY_NAME:Ljava/lang/String; = "persist.sys.gamma.index"

.field public static final MODE_CAMERA:I = 0x1

.field public static final MODE_GALLERY_SOFT:I = 0x2

.field public static final MODE_GALLERY_VIVID:I = 0x3

.field public static final MODE_MASK:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field public static final PIC_MODE_STANDARD:I = 0x0

.field public static final PIC_MODE_USER_DEF:I = 0x2

.field public static final PIC_MODE_VIVID:I = 0x1

.field static sLibStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/pq/PictureQuality;->sLibStatus:Z

    .line 128
    :try_start_0
    const-string v1, "JNI_PQ"

    const-string v2, "loadLibrary"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v1, "jni_pq"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 130
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 131
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "JNI_PQ"

    const-string v2, "UnsatisfiedLinkError"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/pq/PictureQuality;->sLibStatus:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableColor(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 176
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnablePQColor(I)Z

    move-result v0

    return v0
.end method

.method public static enableOD(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 272
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableOD(I)Z

    move-result v0

    return v0
.end method

.method public static getCapability()I
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetCapability()I

    move-result v0

    return v0
.end method

.method public static getContrastIndex()I
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetContrastIndex()I

    move-result v0

    return v0
.end method

.method public static getContrastIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 198
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 199
    return-object v0
.end method

.method public static getDynamicContrastHistogram([BII)Lcom/mediatek/pq/PictureQuality$Hist;
    .locals 1
    .param p0, "srcBuffer"    # [B
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I

    .prologue
    .line 168
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Hist;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Hist;-><init>()V

    .line 169
    .local v0, "outHist":Lcom/mediatek/pq/PictureQuality$Hist;
    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetDynamicContrastHistogram([BIILcom/mediatek/pq/PictureQuality$Hist;)V

    .line 171
    return-object v0
.end method

.method public static getDynamicContrastIndex()I
    .locals 1

    .prologue
    .line 263
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetDynamicContrastIndex()I

    move-result v0

    return v0
.end method

.method public static getDynamicContrastIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 257
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 258
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetDynamicContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 259
    return-object v0
.end method

.method public static getGammaIndex()I
    .locals 2

    .prologue
    .line 306
    const-string v0, "persist.sys.gamma.index"

    .line 307
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getGammaIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v1

    iget v1, v1, Lcom/mediatek/pq/PictureQuality$Range;->defaultValue:I

    .line 306
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGammaIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 284
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 285
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetGammaIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 286
    return-object v0
.end method

.method public static getLibStatus()Z
    .locals 1

    .prologue
    .line 137
    sget-boolean v0, Lcom/mediatek/pq/PictureQuality;->sLibStatus:Z

    return v0
.end method

.method public static getPicBrightnessIndex()I
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetPicBrightnessIndex()I

    move-result v0

    return v0
.end method

.method public static getPicBrightnessIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 227
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 228
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetPicBrightnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 229
    return-object v0
.end method

.method public static getPictureMode()I
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetPictureMode()I

    move-result v0

    return v0
.end method

.method public static getSaturationIndex()I
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetSaturationIndex()I

    move-result v0

    return v0
.end method

.method public static getSaturationIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 213
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetSaturationIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 214
    return-object v0
.end method

.method public static getSharpnessIndex()I
    .locals 1

    .prologue
    .line 248
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetSharpnessIndex()I

    move-result v0

    return v0
.end method

.method public static getSharpnessIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 243
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetSharpnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 244
    return-object v0
.end method

.method private static native nativeEnableOD(I)Z
.end method

.method private static native nativeEnablePQColor(I)Z
.end method

.method private static native nativeGetCapability()I
.end method

.method private static native nativeGetContrastIndex()I
.end method

.method private static native nativeGetContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetDynamicContrastHistogram([BIILcom/mediatek/pq/PictureQuality$Hist;)V
.end method

.method private static native nativeGetDynamicContrastIndex()I
.end method

.method private static native nativeGetDynamicContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetGammaIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetPicBrightnessIndex()I
.end method

.method private static native nativeGetPicBrightnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetPictureMode()I
.end method

.method private static native nativeGetSaturationIndex()I
.end method

.method private static native nativeGetSaturationIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetSharpnessIndex()I
.end method

.method private static native nativeGetSharpnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeSetCameraPreviewMode()V
.end method

.method private static native nativeSetColorRegion(IIIII)Z
.end method

.method private static native nativeSetContrastIndex(I)V
.end method

.method private static native nativeSetDynamicContrastIndex(I)V
.end method

.method private static native nativeSetGalleryNormalMode()V
.end method

.method private static native nativeSetGammaIndex(I)V
.end method

.method private static native nativeSetPicBrightnessIndex(I)V
.end method

.method private static native nativeSetPictureMode(I)Z
.end method

.method private static native nativeSetSaturationIndex(I)V
.end method

.method private static native nativeSetSharpnessIndex(I)V
.end method

.method private static native nativeSetZTEGallerySoftMode()V
.end method

.method private static native nativeSetZTEGalleryVividMode()V
.end method

.method public static setColorRegion(IIIII)Z
    .locals 1
    .param p0, "isEnable"    # I
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I

    .prologue
    .line 192
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/pq/PictureQuality;->nativeSetColorRegion(IIIII)Z

    move-result v0

    return v0
.end method

.method public static setContrastIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 207
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetContrastIndex(I)V

    .line 208
    return-void
.end method

.method public static setDynamicContrastIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 267
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetDynamicContrastIndex(I)V

    .line 268
    return-void
.end method

.method public static setGammaIndex(I)V
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 296
    const-string v0, "persist.sys.gamma.index"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetGammaIndex(I)V

    .line 298
    return-void
.end method

.method public static setMode(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .prologue
    .line 152
    const-string v0, "wupeng"

    const-string v1, "setMode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 154
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeSetCameraPreviewMode()V

    .line 163
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 156
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeSetZTEGallerySoftMode()V

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 158
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeSetZTEGallerySoftMode()V

    goto :goto_0

    .line 160
    :cond_2
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeSetGalleryNormalMode()V

    goto :goto_0
.end method

.method public static setPicBrightnessIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 237
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetPicBrightnessIndex(I)V

    .line 238
    return-void
.end method

.method public static setPictureMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 186
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetPictureMode(I)Z

    move-result v0

    return v0
.end method

.method public static setSaturationIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 222
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetSaturationIndex(I)V

    .line 223
    return-void
.end method

.method public static setSharpnessIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 252
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetSharpnessIndex(I)V

    .line 253
    return-void
.end method
