.class public Lcom/android/mipop/longscreenshot/BmpToYUV;
.super Ljava/lang/Object;
.source "BmpToYUV.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeYUV420SP([B[III)V
    .locals 18
    .param p0, "yuv420sp"    # [B
    .param p1, "argb"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 24
    mul-int v9, p2, p3

    .line 28
    .local v9, "frameSize":I
    const/4 v14, 0x0

    .line 30
    .local v14, "yIndex":I
    move v12, v9

    .line 34
    .local v12, "uvIndex":I
    const/4 v8, 0x0

    .line 36
    .local v8, "argbIndex":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    move/from16 v0, p3

    if-ge v11, v0, :cond_2

    .line 37
    const/4 v10, 0x0

    .local v10, "i":I
    move v13, v12

    .end local v12    # "uvIndex":I
    .local v13, "uvIndex":I
    move v15, v14

    .end local v14    # "yIndex":I
    .local v15, "yIndex":I
    :goto_1
    move/from16 v0, p2

    if-ge v10, v0, :cond_1

    .line 39
    aget v16, p1, v8

    const/high16 v17, -0x1000000

    and-int v16, v16, v17

    shr-int/lit8 v7, v16, 0x18

    .line 40
    .local v7, "a":I
    aget v16, p1, v8

    const/high16 v17, 0xff0000

    and-int v16, v16, v17

    shr-int/lit8 v3, v16, 0x10

    .line 41
    .local v3, "R":I
    aget v16, p1, v8

    const v17, 0xff00

    and-int v16, v16, v17

    shr-int/lit8 v2, v16, 0x8

    .line 42
    .local v2, "G":I
    aget v16, p1, v8

    move/from16 v0, v16

    and-int/lit16 v1, v0, 0xff

    .line 43
    .local v1, "B":I
    add-int/lit8 v8, v8, 0x1

    .line 45
    mul-int/lit8 v16, v3, 0x42

    mul-int/lit16 v0, v2, 0x81

    move/from16 v17, v0

    add-int v16, v16, v17

    mul-int/lit8 v17, v1, 0x19

    add-int v16, v16, v17

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    shr-int/lit8 v16, v16, 0x8

    add-int/lit8 v6, v16, 0x10

    .line 46
    .local v6, "Y":I
    mul-int/lit8 v16, v3, -0x26

    mul-int/lit8 v17, v2, 0x4a

    sub-int v16, v16, v17

    mul-int/lit8 v17, v1, 0x70

    add-int v16, v16, v17

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    shr-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    add-int/lit16 v4, v0, 0x80

    .line 47
    .local v4, "U":I
    mul-int/lit8 v16, v3, 0x70

    mul-int/lit8 v17, v2, 0x5e

    sub-int v16, v16, v17

    mul-int/lit8 v17, v1, 0x12

    sub-int v16, v16, v17

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    shr-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    add-int/lit16 v5, v0, 0x80

    .line 48
    .local v5, "V":I
    const/16 v16, 0x0

    const/16 v17, 0xff

    move/from16 v0, v17

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 49
    const/16 v16, 0x0

    const/16 v17, 0xff

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 50
    const/16 v16, 0x0

    const/16 v17, 0xff

    move/from16 v0, v17

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 57
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "yIndex":I
    .restart local v14    # "yIndex":I
    int-to-byte v0, v6

    move/from16 v16, v0

    aput-byte v16, p0, v15

    .line 59
    rem-int/lit8 v16, v11, 0x2

    if-nez v16, :cond_0

    rem-int/lit8 v16, v10, 0x2

    if-nez v16, :cond_0

    .line 60
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "uvIndex":I
    .restart local v12    # "uvIndex":I
    int-to-byte v0, v5

    move/from16 v16, v0

    aput-byte v16, p0, v13

    .line 61
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "uvIndex":I
    .restart local v13    # "uvIndex":I
    int-to-byte v0, v4

    move/from16 v16, v0

    aput-byte v16, p0, v12

    :cond_0
    move v12, v13

    .line 37
    .end local v13    # "uvIndex":I
    .restart local v12    # "uvIndex":I
    add-int/lit8 v10, v10, 0x1

    move v13, v12

    .end local v12    # "uvIndex":I
    .restart local v13    # "uvIndex":I
    move v15, v14

    .end local v14    # "yIndex":I
    .restart local v15    # "yIndex":I
    goto/16 :goto_1

    .line 36
    .end local v1    # "B":I
    .end local v2    # "G":I
    .end local v3    # "R":I
    .end local v4    # "U":I
    .end local v5    # "V":I
    .end local v6    # "Y":I
    .end local v7    # "a":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    move v12, v13

    .end local v13    # "uvIndex":I
    .restart local v12    # "uvIndex":I
    move v14, v15

    .end local v15    # "yIndex":I
    .restart local v14    # "yIndex":I
    goto/16 :goto_0

    .line 65
    .end local v10    # "i":I
    :cond_2
    return-void
.end method

.method public static getYUV420sp(IILandroid/graphics/Bitmap;)[B
    .locals 9
    .param p0, "inputWidth"    # I
    .param p1, "inputHeight"    # I
    .param p2, "scaled"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 9
    mul-int v0, p0, p1

    new-array v1, v0, [I

    .local v1, "argb":[I
    move-object v0, p2

    move v3, p0

    move v4, v2

    move v5, v2

    move v6, p0

    move v7, p1

    .line 10
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 11
    mul-int v0, p0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v8, v0, [B

    .line 12
    .local v8, "yuv":[B
    invoke-static {v8, v1, p0, p1}, Lcom/android/mipop/longscreenshot/BmpToYUV;->encodeYUV420SP([B[III)V

    .line 13
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 14
    return-object v8
.end method
