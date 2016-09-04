.class public Lcom/android/mipop/paintpad/drawings/Line;
.super Lcom/android/mipop/paintpad/drawings/Drawing;
.source "Line.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/android/mipop/paintpad/drawings/Drawing;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/android/mipop/paintpad/drawings/Line;->isBlur:Z

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/drawings/Line;->drawBlur(Landroid/graphics/Canvas;)V

    .line 19
    :goto_0
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Line;->pen:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, p1}, Lcom/android/mipop/paintpad/drawings/Line;->drawShape(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawShape(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 30
    iget v1, p0, Lcom/android/mipop/paintpad/drawings/Line;->startX:F

    iget v2, p0, Lcom/android/mipop/paintpad/drawings/Line;->startY:F

    iget v3, p0, Lcom/android/mipop/paintpad/drawings/Line;->stopX:F

    iget v4, p0, Lcom/android/mipop/paintpad/drawings/Line;->stopY:F

    move-object v0, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 31
    return-void
.end method

.method public reDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/drawings/Line;->draw(Landroid/graphics/Canvas;)V

    .line 25
    return-void
.end method
