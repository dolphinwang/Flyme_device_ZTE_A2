.class public abstract Lcom/android/mipop/cropimage/CropBase;
.super Ljava/lang/Object;
.source "CropBase.java"

# interfaces
.implements Lcom/android/mipop/cropimage/ICrop;


# instance fields
.field protected Icon:Landroid/graphics/Bitmap;

.field protected IconWidth:I

.field protected boraderPaint:Landroid/graphics/Paint;

.field protected clipPaint:Landroid/graphics/Paint;

.field protected clipRect:Landroid/graphics/Rect;

.field protected cover:Landroid/graphics/Bitmap;

.field protected coverPaint:Landroid/graphics/Paint;

.field protected covers:[Landroid/graphics/Rect;

.field protected eventType:I

.field protected iconPositions:[Landroid/graphics/Point;

.field protected mContext:Landroid/content/Context;

.field protected pen:Landroid/graphics/Paint;

.field protected rectFull:Landroid/graphics/Rect;

.field protected scale:F

.field protected srcrRect:Landroid/graphics/Rect;

.field protected translateX:I

.field protected translateY:I

.field protected vHeight:I

.field protected vWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/mipop/cropimage/CropBase;->mContext:Landroid/content/Context;

    .line 56
    new-array v1, v3, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->covers:[Landroid/graphics/Rect;

    .line 57
    new-array v1, v3, [Landroid/graphics/Point;

    iput-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->iconPositions:[Landroid/graphics/Point;

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eq v0, v3, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->covers:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 60
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->iconPositions:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v1, v0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v5, v5, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->srcrRect:Landroid/graphics/Rect;

    .line 63
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->rectFull:Landroid/graphics/Rect;

    .line 65
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0206d4

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->Icon:Landroid/graphics/Bitmap;

    .line 67
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->Icon:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropBase;->Icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropBase;->Icon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->Icon:Landroid/graphics/Bitmap;

    .line 68
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->Icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mipop/cropimage/CropBase;->IconWidth:I

    .line 70
    new-array v1, v4, [I

    const/high16 v2, -0x20000000

    aput v2, v1, v5

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v4, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->cover:Landroid/graphics/Bitmap;

    .line 74
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->coverPaint:Landroid/graphics/Paint;

    .line 75
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->coverPaint:Landroid/graphics/Paint;

    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->coverPaint:Landroid/graphics/Paint;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 77
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->boraderPaint:Landroid/graphics/Paint;

    .line 78
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->boraderPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->boraderPaint:Landroid/graphics/Paint;

    const v2, -0x59595a

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->boraderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->clipPaint:Landroid/graphics/Paint;

    .line 83
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->clipPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 84
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->clipPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->pen:Landroid/graphics/Paint;

    .line 86
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropBase;->clipRect:Landroid/graphics/Rect;

    .line 153
    return-void
.end method

.method protected computCoverAndIconP()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropBase;->clipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropBase;->iconPositions:[Landroid/graphics/Point;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->clipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropBase;->IconWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropBase;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, p0, Lcom/android/mipop/cropimage/CropBase;->IconWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 133
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropBase;->iconPositions:[Landroid/graphics/Point;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, p0, Lcom/android/mipop/cropimage/CropBase;->IconWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropBase;->clipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropBase;->IconWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 136
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropBase;->iconPositions:[Landroid/graphics/Point;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->clipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropBase;->IconWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropBase;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, p0, Lcom/android/mipop/cropimage/CropBase;->IconWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 138
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropBase;->iconPositions:[Landroid/graphics/Point;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, p0, Lcom/android/mipop/cropimage/CropBase;->IconWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropBase;->clipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropBase;->IconWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 141
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropBase;->covers:[Landroid/graphics/Rect;

    aget-object v0, v0, v4

    iget v1, p0, Lcom/android/mipop/cropimage/CropBase;->translateX:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropBase;->translateY:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropBase;->vWidth:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropBase;->translateX:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/mipop/cropimage/CropBase;->clipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 142
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropBase;->covers:[Landroid/graphics/Rect;

    aget-object v0, v0, v5

    iget v1, p0, Lcom/android/mipop/cropimage/CropBase;->translateX:I

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropBase;->clipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropBase;->clipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropBase;->vHeight:I

    iget v5, p0, Lcom/android/mipop/cropimage/CropBase;->translateY:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 143
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropBase;->covers:[Landroid/graphics/Rect;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->clipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropBase;->clipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropBase;->clipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropBase;->vHeight:I

    iget v5, p0, Lcom/android/mipop/cropimage/CropBase;->translateY:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 144
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropBase;->covers:[Landroid/graphics/Rect;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->clipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropBase;->clipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropBase;->vWidth:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropBase;->translateX:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/mipop/cropimage/CropBase;->vHeight:I

    iget v5, p0, Lcom/android/mipop/cropimage/CropBase;->translateY:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0
.end method

.method public abstract crop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropBase;->clipRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropBase;->cover:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->srcrRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropBase;->covers:[Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropBase;->coverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 116
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropBase;->cover:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->srcrRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropBase;->covers:[Landroid/graphics/Rect;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropBase;->coverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 117
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropBase;->cover:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->srcrRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropBase;->covers:[Landroid/graphics/Rect;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropBase;->coverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 118
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropBase;->cover:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->srcrRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropBase;->covers:[Landroid/graphics/Rect;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropBase;->coverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropBase;->cover:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropBase;->srcrRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropBase;->rectFull:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropBase;->coverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public abstract setPoints([Landroid/graphics/Point;)V
.end method

.method public setScaleAndTranslate(FII)V
    .locals 0
    .param p1, "mScale"    # F
    .param p2, "mTranslatX"    # I
    .param p3, "mTranslateY"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/android/mipop/cropimage/CropBase;->scale:F

    .line 94
    iput p2, p0, Lcom/android/mipop/cropimage/CropBase;->translateX:I

    .line 95
    iput p3, p0, Lcom/android/mipop/cropimage/CropBase;->translateY:I

    .line 96
    return-void
.end method

.method public setViewHightandWidth(II)V
    .locals 5
    .param p1, "h"    # I
    .param p2, "w"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/android/mipop/cropimage/CropBase;->vHeight:I

    .line 103
    iput p2, p0, Lcom/android/mipop/cropimage/CropBase;->vWidth:I

    .line 104
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropBase;->rectFull:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/mipop/cropimage/CropBase;->translateX:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropBase;->translateY:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropBase;->translateX:I

    add-int/2addr v3, p2

    iget v4, p0, Lcom/android/mipop/cropimage/CropBase;->translateY:I

    add-int/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 105
    return-void
.end method

.method public abstract touchDown(II)V
.end method

.method public abstract touchMove(II)V
.end method

.method public abstract touchUp(II)V
.end method
