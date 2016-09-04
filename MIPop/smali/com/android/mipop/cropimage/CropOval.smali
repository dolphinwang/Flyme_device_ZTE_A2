.class public Lcom/android/mipop/cropimage/CropOval;
.super Lcom/android/mipop/cropimage/CropRect;
.source "CropOval.java"


# instance fields
.field private clearPaint:Landroid/graphics/Paint;

.field private initaled:Z

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCover:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/mipop/cropimage/CropRect;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mipop/cropimage/CropOval;->initaled:Z

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropOval;->clearPaint:Landroid/graphics/Paint;

    .line 25
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropOval;->clearPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 27
    return-void
.end method

.method private getCropPart()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 107
    iget-boolean v1, p0, Lcom/android/mipop/cropimage/CropOval;->initaled:Z

    if-nez v1, :cond_0

    .line 109
    iget v1, p0, Lcom/android/mipop/cropimage/CropOval;->vWidth:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropOval;->vHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mipop/cropimage/CropOval;->mCover:Landroid/graphics/Bitmap;

    .line 110
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropOval;->mCover:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/mipop/cropimage/CropOval;->mCanvas:Landroid/graphics/Canvas;

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mipop/cropimage/CropOval;->initaled:Z

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropOval;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropOval;->cover:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropOval;->srcrRect:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/android/mipop/cropimage/CropOval;->vWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/mipop/cropimage/CropOval;->vHeight:I

    int-to-float v6, v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v5, p0, Lcom/android/mipop/cropimage/CropOval;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropOval;->clipRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 115
    .local v0, "mrf":Landroid/graphics/RectF;
    iget v1, p0, Lcom/android/mipop/cropimage/CropOval;->translateX:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/mipop/cropimage/CropOval;->translateY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 116
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropOval;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropOval;->clipPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 117
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropOval;->mCover:Landroid/graphics/Bitmap;

    return-object v1
.end method


# virtual methods
.method public crop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 31
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mipop/cropimage/CropOval;->clipRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mipop/cropimage/CropOval;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mipop/cropimage/CropOval;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object/from16 v1, p1

    .line 76
    :goto_0
    return-object v1

    .line 35
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mipop/cropimage/CropOval;->clipRect:Landroid/graphics/Rect;

    iget v13, v1, Landroid/graphics/Rect;->left:I

    .line 36
    .local v13, "left":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mipop/cropimage/CropOval;->clipRect:Landroid/graphics/Rect;

    iget v14, v1, Landroid/graphics/Rect;->top:I

    .line 37
    .local v14, "top":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mipop/cropimage/CropOval;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 38
    .local v7, "width":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mipop/cropimage/CropOval;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 39
    .local v8, "height":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mipop/cropimage/CropOval;->translateX:I

    if-eqz v1, :cond_2

    .line 41
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mipop/cropimage/CropOval;->translateX:I

    sub-int/2addr v13, v1

    .line 42
    if-lez v13, :cond_6

    .line 44
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mipop/cropimage/CropOval;->translateY:I

    if-eqz v1, :cond_3

    .line 46
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mipop/cropimage/CropOval;->translateY:I

    sub-int/2addr v14, v1

    .line 47
    if-lez v14, :cond_7

    .line 49
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mipop/cropimage/CropOval;->scale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_5

    .line 51
    int-to-float v1, v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mipop/cropimage/CropOval;->scale:F

    mul-float/2addr v1, v3

    float-to-int v13, v1

    .line 52
    int-to-float v1, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mipop/cropimage/CropOval;->scale:F

    mul-float/2addr v1, v3

    float-to-int v14, v1

    .line 53
    int-to-float v1, v7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mipop/cropimage/CropOval;->scale:F

    mul-float/2addr v1, v3

    float-to-int v7, v1

    .line 54
    int-to-float v1, v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mipop/cropimage/CropOval;->scale:F

    mul-float/2addr v1, v3

    float-to-int v8, v1

    .line 55
    add-int v1, v7, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v1, v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v7, v1, v13

    .line 56
    :cond_4
    add-int v1, v8, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v1, v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int v8, v1, v14

    .line 58
    :cond_5
    mul-int v1, v7, v8

    new-array v2, v1, [I

    .line 59
    .local v2, "pixels":[I
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 61
    .local v4, "bw":I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 63
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    div-int/lit8 v1, v8, 0x2

    if-eq v11, v1, :cond_9

    .line 64
    int-to-float v1, v7

    const/high16 v3, 0x40000000    # 2.0f

    div-float v9, v1, v3

    .line 65
    .local v9, "a":F
    int-to-float v1, v8

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v1, v3

    .line 66
    .local v10, "b":F
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v3, v11

    sub-float/2addr v3, v10

    int-to-float v5, v11

    sub-float/2addr v5, v10

    mul-float/2addr v3, v5

    mul-float v5, v10, v10

    div-float/2addr v3, v5

    sub-float/2addr v1, v3

    mul-float/2addr v1, v9

    mul-float/2addr v1, v9

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    sub-float v1, v9, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 67
    .local v15, "x":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    if-eq v12, v15, :cond_8

    .line 69
    mul-int v1, v11, v7

    add-int/2addr v1, v12

    const v3, 0xffffff

    aput v3, v2, v1

    .line 70
    add-int/lit8 v1, v11, 0x1

    mul-int/2addr v1, v7

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v12

    const v3, 0xffffff

    aput v3, v2, v1

    .line 71
    sub-int v1, v8, v11

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v7

    add-int/2addr v1, v12

    const v3, 0xffffff

    aput v3, v2, v1

    .line 72
    sub-int v1, v8, v11

    mul-int/2addr v1, v7

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v12

    const v3, 0xffffff

    aput v3, v2, v1

    .line 67
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 42
    .end local v2    # "pixels":[I
    .end local v4    # "bw":I
    .end local v9    # "a":F
    .end local v10    # "b":F
    .end local v11    # "i":I
    .end local v12    # "j":I
    .end local v15    # "x":I
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 47
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 63
    .restart local v2    # "pixels":[I
    .restart local v4    # "bw":I
    .restart local v9    # "a":F
    .restart local v10    # "b":F
    .restart local v11    # "i":I
    .restart local v12    # "j":I
    .restart local v15    # "x":I
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 75
    .end local v9    # "a":F
    .end local v10    # "b":F
    .end local v12    # "j":I
    .end local v15    # "x":I
    :cond_9
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mipop/cropimage/CropOval;->clipRect:Landroid/graphics/Rect;

    .line 76
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v7, v8, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 83
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropOval;->clipRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropOval;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropOval;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropOval;->getCropPart()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/android/mipop/cropimage/CropOval;->translateX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/mipop/cropimage/CropOval;->translateY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropOval;->coverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 87
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropOval;->clipRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropOval;->boraderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 88
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropOval;->Icon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropOval;->iconPositions:[Landroid/graphics/Point;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropOval;->iconPositions:[Landroid/graphics/Point;

    aget-object v2, v2, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropOval;->boraderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 90
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropOval;->Icon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropOval;->iconPositions:[Landroid/graphics/Point;

    aget-object v1, v1, v5

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropOval;->iconPositions:[Landroid/graphics/Point;

    aget-object v2, v2, v5

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropOval;->boraderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 92
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropOval;->Icon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropOval;->iconPositions:[Landroid/graphics/Point;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropOval;->iconPositions:[Landroid/graphics/Point;

    aget-object v2, v2, v6

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropOval;->boraderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 94
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropOval;->Icon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropOval;->iconPositions:[Landroid/graphics/Point;

    aget-object v1, v1, v7

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropOval;->iconPositions:[Landroid/graphics/Point;

    aget-object v2, v2, v7

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropOval;->boraderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 103
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropOval;->cover:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropOval;->srcrRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropOval;->rectFull:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropOval;->coverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropOval;->cover:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropOval;->srcrRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropOval;->rectFull:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropOval;->coverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method
