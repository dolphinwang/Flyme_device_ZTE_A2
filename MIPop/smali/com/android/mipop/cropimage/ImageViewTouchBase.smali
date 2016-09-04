.class abstract Lcom/android/mipop/cropimage/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mipop/cropimage/ImageViewTouchBase$Recycler;
    }
.end annotation


# static fields
.field static final SCALE_RATE:F = 1.25f

.field private static final TAG:Ljava/lang/String; = "ImageViewTouchBase"


# instance fields
.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field protected final mBitmapDisplayed:Lcom/android/mipop/cropimage/RotateBitmap;

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field protected mHandler:Landroid/os/Handler;

.field private final mMatrixValues:[F

.field mMaxZoom:F

.field private mOnLayoutRunnable:Ljava/lang/Runnable;

.field private mRecycler:Lcom/android/mipop/cropimage/ImageViewTouchBase$Recycler;

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field mThisHeight:I

.field mThisWidth:I

.field private mcontext:Landroid/content/Context;

.field private mdensity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 230
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 50
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mMatrixValues:[F

    .line 53
    new-instance v0, Lcom/android/mipop/cropimage/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/android/mipop/cropimage/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/mipop/cropimage/RotateBitmap;

    .line 55
    iput v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mThisHeight:I

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 143
    iput-object v2, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 231
    iput-object p1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mcontext:Landroid/content/Context;

    .line 232
    invoke-direct {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->init()V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 236
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 50
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mMatrixValues:[F

    .line 53
    new-instance v0, Lcom/android/mipop/cropimage/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/android/mipop/cropimage/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/mipop/cropimage/RotateBitmap;

    .line 55
    iput v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mThisHeight:I

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 143
    iput-object v2, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 237
    iput-object p1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mcontext:Landroid/content/Context;

    .line 238
    invoke-direct {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->init()V

    .line 239
    return-void
.end method

.method private getProperBaseMatrix(Lcom/android/mipop/cropimage/RotateBitmap;Landroid/graphics/Matrix;)V
    .locals 13
    .param p1, "bitmap"    # Lcom/android/mipop/cropimage/RotateBitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v11, 0x40400000    # 3.0f

    .line 265
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getWidth()I

    move-result v9

    int-to-float v6, v9

    .line 266
    .local v6, "viewWidth":F
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getHeight()I

    move-result v9

    int-to-float v5, v9

    .line 268
    .local v5, "viewHeight":F
    invoke-virtual {p1}, Lcom/android/mipop/cropimage/RotateBitmap;->getWidth()I

    move-result v9

    int-to-float v7, v9

    .line 269
    .local v7, "w":F
    invoke-virtual {p1}, Lcom/android/mipop/cropimage/RotateBitmap;->getHeight()I

    move-result v9

    int-to-float v2, v9

    .line 270
    .local v2, "h":F
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 274
    div-float v9, v6, v7

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 275
    .local v8, "widthScale":F
    div-float v9, v5, v2

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 276
    .local v3, "heightScale":F
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0206c3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mdensity:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    add-int v1, v9, v10

    .line 278
    .local v1, "fixWidth":I
    int-to-float v9, v1

    div-float/2addr v9, v6

    int-to-float v10, v1

    div-float/2addr v10, v5

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    int-to-float v9, v1

    div-float v0, v9, v6

    .line 280
    .local v0, "fixScale":F
    :goto_0
    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v0

    mul-float v4, v9, v10

    .line 282
    .local v4, "scale":F
    invoke-virtual {p1}, Lcom/android/mipop/cropimage/RotateBitmap;->getRotateMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 283
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 285
    mul-float v9, v7, v4

    sub-float v9, v6, v9

    div-float/2addr v9, v12

    mul-float v10, v2, v4

    sub-float v10, v5, v10

    div-float/2addr v10, v12

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 288
    return-void

    .line 278
    .end local v0    # "fixScale":F
    .end local v4    # "scale":F
    :cond_0
    int-to-float v9, v1

    div-float v0, v9, v5

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 242
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 243
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mcontext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 244
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mdensity:F

    .line 245
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 246
    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->setBackgroundColor(I)V

    .line 247
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 126
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 127
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/mipop/cropimage/RotateBitmap;

    invoke-virtual {v2}, Lcom/android/mipop/cropimage/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 131
    .local v1, "old":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/mipop/cropimage/RotateBitmap;

    invoke-virtual {v2, p1}, Lcom/android/mipop/cropimage/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    iget-object v2, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/mipop/cropimage/RotateBitmap;

    invoke-virtual {v2, p2}, Lcom/android/mipop/cropimage/RotateBitmap;->setRotation(I)V

    .line 134
    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_1

    iget-object v2, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mRecycler:Lcom/android/mipop/cropimage/ImageViewTouchBase$Recycler;

    if-eqz v2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mRecycler:Lcom/android/mipop/cropimage/ImageViewTouchBase$Recycler;

    invoke-interface {v2, v1}, Lcom/android/mipop/cropimage/ImageViewTouchBase$Recycler;->recycle(Landroid/graphics/Bitmap;)V

    .line 137
    :cond_1
    return-void
.end method


# virtual methods
.method protected center(ZZ)V
    .locals 12
    .param p1, "horizontal"    # Z
    .param p2, "vertical"    # Z

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 186
    iget-object v8, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/mipop/cropimage/RotateBitmap;

    invoke-virtual {v8}, Lcom/android/mipop/cropimage/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_0

    .line 227
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 192
    .local v3, "m":Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/mipop/cropimage/RotateBitmap;

    invoke-virtual {v8}, Lcom/android/mipop/cropimage/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/mipop/cropimage/RotateBitmap;

    invoke-virtual {v9}, Lcom/android/mipop/cropimage/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 196
    .local v4, "rect":Landroid/graphics/RectF;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 198
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 199
    .local v2, "height":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 201
    .local v7, "width":F
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 203
    .local v1, "deltaY":F
    if-eqz p2, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getHeight()I

    move-result v5

    .line 205
    .local v5, "viewHeight":I
    int-to-float v8, v5

    cmpg-float v8, v2, v8

    if-gez v8, :cond_3

    .line 206
    int-to-float v8, v5

    sub-float/2addr v8, v2

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 214
    .end local v5    # "viewHeight":I
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getWidth()I

    move-result v6

    .line 216
    .local v6, "viewWidth":I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_5

    .line 217
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 225
    .end local v6    # "viewWidth":I
    :cond_2
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->postTranslate(FF)V

    .line 226
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 207
    .restart local v5    # "viewHeight":I
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4

    .line 208
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_1

    .line 209
    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_1

    .line 218
    .end local v5    # "viewHeight":I
    .restart local v6    # "viewWidth":I
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    .line 219
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_2

    .line 220
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 221
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    goto :goto_2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 140
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 141
    return-void
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 295
    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 296
    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 251
    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method protected maxZoom()F
    .locals 5

    .prologue
    .line 306
    iget-object v3, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/mipop/cropimage/RotateBitmap;

    invoke-virtual {v3}, Lcom/android/mipop/cropimage/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 307
    const/high16 v2, 0x3f800000    # 1.0f

    .line 313
    :goto_0
    return v2

    .line 310
    :cond_0
    iget-object v3, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/mipop/cropimage/RotateBitmap;

    invoke-virtual {v3}, Lcom/android/mipop/cropimage/RotateBitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mThisWidth:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 311
    .local v1, "fw":F
    iget-object v3, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/mipop/cropimage/RotateBitmap;

    invoke-virtual {v3}, Lcom/android/mipop/cropimage/RotateBitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mThisHeight:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 312
    .local v0, "fh":F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v2, v3, v4

    .line 313
    .local v2, "max":F
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 94
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 97
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 104
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->zoomTo(F)V

    .line 110
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 78
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 79
    sub-int v1, p4, p2

    iput v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mThisWidth:I

    .line 80
    sub-int v1, p5, p3

    iput v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mThisHeight:I

    .line 81
    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 82
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 84
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/mipop/cropimage/RotateBitmap;

    invoke-virtual {v1}, Lcom/android/mipop/cropimage/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/mipop/cropimage/RotateBitmap;

    iget-object v2, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v2}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getProperBaseMatrix(Lcom/android/mipop/cropimage/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 90
    :cond_1
    return-void
.end method

.method protected panBy(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 413
    invoke-virtual {p0, p1, p2}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->postTranslate(FF)V

    .line 414
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 415
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 410
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 121
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "resetSupp"    # Z

    .prologue
    .line 149
    new-instance v0, Lcom/android/mipop/cropimage/RotateBitmap;

    invoke-direct {v0, p1}, Lcom/android/mipop/cropimage/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/android/mipop/cropimage/RotateBitmap;Z)V

    .line 150
    return-void
.end method

.method public setImageRotateBitmapResetBase(Lcom/android/mipop/cropimage/RotateBitmap;Z)V
    .locals 3
    .param p1, "bitmap"    # Lcom/android/mipop/cropimage/RotateBitmap;
    .param p2, "resetSupp"    # Z

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 156
    .local v0, "viewWidth":I
    if-gtz v0, :cond_0

    .line 157
    new-instance v1, Lcom/android/mipop/cropimage/ImageViewTouchBase$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mipop/cropimage/ImageViewTouchBase$1;-><init>(Lcom/android/mipop/cropimage/ImageViewTouchBase;Lcom/android/mipop/cropimage/RotateBitmap;Z)V

    iput-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 178
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/android/mipop/cropimage/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getProperBaseMatrix(Lcom/android/mipop/cropimage/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 167
    invoke-virtual {p1}, Lcom/android/mipop/cropimage/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mipop/cropimage/RotateBitmap;->getRotation()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 173
    :goto_1
    if-eqz p2, :cond_1

    .line 174
    iget-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->maxZoom()F

    move-result v1

    iput v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mMaxZoom:F

    goto :goto_0

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 170
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setRecycler(Lcom/android/mipop/cropimage/ImageViewTouchBase$Recycler;)V
    .locals 0
    .param p1, "r"    # Lcom/android/mipop/cropimage/ImageViewTouchBase$Recycler;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mRecycler:Lcom/android/mipop/cropimage/ImageViewTouchBase$Recycler;

    .line 70
    return-void
.end method

.method protected zoomIn()V
    .locals 1

    .prologue
    .line 365
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->zoomIn(F)V

    .line 366
    return-void
.end method

.method protected zoomIn(F)V
    .locals 5
    .param p1, "rate"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 373
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getScale()F

    move-result v2

    iget v3, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v2, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/mipop/cropimage/RotateBitmap;

    invoke-virtual {v2}, Lcom/android/mipop/cropimage/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 381
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 383
    .local v1, "cy":F
    iget-object v2, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 384
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected zoomOut()V
    .locals 1

    .prologue
    .line 369
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->zoomOut(F)V

    .line 370
    return-void
.end method

.method protected zoomOut(F)V
    .locals 7
    .param p1, "rate"    # F

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 388
    iget-object v3, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/mipop/cropimage/RotateBitmap;

    invoke-virtual {v3}, Lcom/android/mipop/cropimage/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 406
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 393
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 396
    .local v1, "cy":F
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 397
    .local v2, "tmp":Landroid/graphics/Matrix;
    div-float v3, v5, p1

    div-float v4, v5, p1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 399
    invoke-virtual {p0, v2}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 400
    iget-object v3, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5, v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 404
    :goto_1
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 405
    invoke-virtual {p0, v6, v6}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->center(ZZ)V

    goto :goto_0

    .line 402
    :cond_1
    iget-object v3, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    div-float v4, v5, p1

    div-float/2addr v5, p1

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1
.end method

.method protected zoomTo(F)V
    .locals 4
    .param p1, "scale"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 350
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 351
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 353
    .local v1, "cy":F
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->zoomTo(FFF)V

    .line 354
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    const/4 v3, 0x1

    .line 317
    iget v2, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 318
    iget p1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mMaxZoom:F

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 322
    .local v1, "oldScale":F
    div-float v0, p1, v1

    .line 324
    .local v0, "deltaScale":F
    iget-object v2, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 325
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 326
    invoke-virtual {p0, v3, v3}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->center(ZZ)V

    .line 327
    return-void
.end method

.method protected zoomTo(FFFF)V
    .locals 10
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "durationMs"    # F

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v7, v0, p4

    .line 332
    .local v7, "incrementPerMs":F
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getScale()F

    move-result v6

    .line 333
    .local v6, "oldScale":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 335
    .local v4, "startTime":J
    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mipop/cropimage/ImageViewTouchBase$2;

    move-object v2, p0

    move v3, p4

    move v8, p2

    move v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/mipop/cropimage/ImageViewTouchBase$2;-><init>(Lcom/android/mipop/cropimage/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    return-void
.end method

.method protected zoomToPoint(FFF)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "pointX"    # F
    .param p3, "pointY"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 357
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 358
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 360
    .local v1, "cy":F
    sub-float v2, v0, p2

    sub-float v3, v1, p3

    invoke-virtual {p0, v2, v3}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->panBy(FF)V

    .line 361
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->zoomTo(FFF)V

    .line 362
    return-void
.end method
