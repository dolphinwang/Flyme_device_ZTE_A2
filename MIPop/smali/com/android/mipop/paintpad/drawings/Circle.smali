.class public Lcom/android/mipop/paintpad/drawings/Circle;
.super Lcom/android/mipop/paintpad/drawings/Drawing;
.source "Circle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/mipop/paintpad/drawings/Drawing;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/android/mipop/paintpad/drawings/Circle;->isBlur:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/drawings/Circle;->drawBlur(Landroid/graphics/Canvas;)V

    .line 22
    :goto_0
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Circle;->pen:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, p1}, Lcom/android/mipop/paintpad/drawings/Circle;->drawShape(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawShape(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 33
    iget v1, p0, Lcom/android/mipop/paintpad/drawings/Circle;->stopX:F

    iget v2, p0, Lcom/android/mipop/paintpad/drawings/Circle;->startX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/mipop/paintpad/drawings/Circle;->stopX:F

    iget v3, p0, Lcom/android/mipop/paintpad/drawings/Circle;->startX:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/mipop/paintpad/drawings/Circle;->stopY:F

    iget v3, p0, Lcom/android/mipop/paintpad/drawings/Circle;->startY:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/mipop/paintpad/drawings/Circle;->stopY:F

    iget v4, p0, Lcom/android/mipop/paintpad/drawings/Circle;->startY:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    div-float v0, v1, v5

    .line 35
    .local v0, "radius":F
    iget v1, p0, Lcom/android/mipop/paintpad/drawings/Circle;->startX:F

    iget v2, p0, Lcom/android/mipop/paintpad/drawings/Circle;->stopX:F

    iget v3, p0, Lcom/android/mipop/paintpad/drawings/Circle;->startX:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/mipop/paintpad/drawings/Circle;->startY:F

    iget v3, p0, Lcom/android/mipop/paintpad/drawings/Circle;->stopY:F

    iget v4, p0, Lcom/android/mipop/paintpad/drawings/Circle;->startY:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {p2, v1, v2, v0, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 37
    return-void
.end method

.method public reDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/drawings/Circle;->draw(Landroid/graphics/Canvas;)V

    .line 28
    return-void
.end method
