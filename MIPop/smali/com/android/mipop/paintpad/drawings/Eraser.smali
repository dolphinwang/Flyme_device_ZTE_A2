.class public Lcom/android/mipop/paintpad/drawings/Eraser;
.super Lcom/android/mipop/paintpad/drawings/Drawing;
.source "Eraser.java"


# instance fields
.field mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lcom/android/mipop/paintpad/drawings/Drawing;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->mPath:Landroid/graphics/Path;

    .line 20
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->mPath:Landroid/graphics/Path;

    .line 21
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->pen:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 23
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->pen:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/mipop/paintpad/tools/Brush;->getEraserWidtn()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 24
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->pen:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->pen:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 26
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->pen:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, p1}, Lcom/android/mipop/paintpad/drawings/Eraser;->drawShape(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 32
    return-void
.end method

.method protected drawShape(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 77
    return-void
.end method

.method public fingerDown(FFLandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 38
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 39
    iput p1, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->stopX:F

    .line 40
    iput p2, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->stopY:F

    .line 41
    return-void
.end method

.method public fingerMove(FFLandroid/graphics/Canvas;)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 46
    iget v2, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->stopX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 47
    .local v0, "dx":F
    iget v2, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->stopY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 48
    .local v1, "dy":F
    cmpl-float v2, v0, v3

    if-gez v2, :cond_0

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_1

    .line 50
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->drawed:Z

    .line 51
    iget-object v2, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->stopX:F

    iget v4, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->stopY:F

    iget v5, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->stopX:F

    add-float/2addr v5, p1

    div-float/2addr v5, v7

    iget v6, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->stopY:F

    add-float/2addr v6, p2

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 52
    iput p1, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->stopX:F

    .line 53
    iput p2, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->stopY:F

    .line 55
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/mipop/paintpad/drawings/Eraser;->draw(Landroid/graphics/Canvas;)V

    .line 56
    return-void
.end method

.method public fingerUp(FFLandroid/graphics/Canvas;)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->stopX:F

    iget v2, p0, Lcom/android/mipop/paintpad/drawings/Eraser;->stopY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 62
    invoke-virtual {p0, p3}, Lcom/android/mipop/paintpad/drawings/Eraser;->draw(Landroid/graphics/Canvas;)V

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public reDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/drawings/Eraser;->draw(Landroid/graphics/Canvas;)V

    .line 71
    return-void
.end method
