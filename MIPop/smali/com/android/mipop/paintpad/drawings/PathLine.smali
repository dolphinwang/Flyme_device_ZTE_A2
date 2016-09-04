.class public Lcom/android/mipop/paintpad/drawings/PathLine;
.super Lcom/android/mipop/paintpad/drawings/Drawing;
.source "PathLine.java"


# instance fields
.field private path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/mipop/paintpad/drawings/Drawing;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->path:Landroid/graphics/Path;

    .line 15
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->pen:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->isBlur:Z

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/drawings/PathLine;->drawBlur(Landroid/graphics/Canvas;)V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->pen:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, p1}, Lcom/android/mipop/paintpad/drawings/PathLine;->drawShape(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawShape(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->path:Landroid/graphics/Path;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 80
    return-void
.end method

.method public fingerDown(FFLandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 40
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 41
    iput p1, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->stopX:F

    .line 42
    iput p2, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->stopY:F

    .line 44
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

    .line 49
    iget v2, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->stopX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 50
    .local v0, "dx":F
    iget v2, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->stopY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 51
    .local v1, "dy":F
    cmpl-float v2, v0, v3

    if-gez v2, :cond_0

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_1

    .line 53
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->drawed:Z

    .line 54
    iget-object v2, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->path:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->stopX:F

    iget v4, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->stopY:F

    iget v5, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->stopX:F

    add-float/2addr v5, p1

    div-float/2addr v5, v7

    iget v6, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->stopY:F

    add-float/2addr v6, p2

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 55
    iput p1, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->stopX:F

    .line 56
    iput p2, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->stopY:F

    .line 59
    :cond_1
    return-void
.end method

.method public fingerUp(FFLandroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 65
    invoke-virtual {p0, p3}, Lcom/android/mipop/paintpad/drawings/PathLine;->draw(Landroid/graphics/Canvas;)V

    .line 66
    iget-boolean v0, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->drawed:Z

    return v0
.end method

.method public reDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/drawings/PathLine;->draw(Landroid/graphics/Canvas;)V

    .line 74
    return-void
.end method

.method public setPath(Landroid/graphics/Path;)V
    .locals 0
    .param p1, "mPath"    # Landroid/graphics/Path;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/mipop/paintpad/drawings/PathLine;->path:Landroid/graphics/Path;

    .line 34
    return-void
.end method
