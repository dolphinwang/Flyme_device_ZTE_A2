.class public Lcom/android/mipop/paintpad/drawings/Rect;
.super Lcom/android/mipop/paintpad/drawings/Drawing;
.source "Rect.java"


# instance fields
.field private rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/mipop/paintpad/drawings/Drawing;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/paintpad/drawings/Rect;->rect:Landroid/graphics/RectF;

    .line 15
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/android/mipop/paintpad/drawings/Rect;->isBlur:Z

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/drawings/Rect;->drawBlur(Landroid/graphics/Canvas;)V

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Rect;->pen:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, p1}, Lcom/android/mipop/paintpad/drawings/Rect;->drawShape(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawShape(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 38
    iget-object v1, p0, Lcom/android/mipop/paintpad/drawings/Rect;->rect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/mipop/paintpad/drawings/Rect;->startX:F

    iget v2, p0, Lcom/android/mipop/paintpad/drawings/Rect;->stopX:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/mipop/paintpad/drawings/Rect;->startX:F

    :goto_0
    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 39
    iget-object v1, p0, Lcom/android/mipop/paintpad/drawings/Rect;->rect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/mipop/paintpad/drawings/Rect;->stopX:F

    iget v2, p0, Lcom/android/mipop/paintpad/drawings/Rect;->startX:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/mipop/paintpad/drawings/Rect;->stopX:F

    :goto_1
    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 40
    iget-object v1, p0, Lcom/android/mipop/paintpad/drawings/Rect;->rect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/mipop/paintpad/drawings/Rect;->startY:F

    iget v2, p0, Lcom/android/mipop/paintpad/drawings/Rect;->stopY:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/mipop/paintpad/drawings/Rect;->startY:F

    :goto_2
    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 41
    iget-object v1, p0, Lcom/android/mipop/paintpad/drawings/Rect;->rect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/mipop/paintpad/drawings/Rect;->stopY:F

    iget v2, p0, Lcom/android/mipop/paintpad/drawings/Rect;->startY:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/mipop/paintpad/drawings/Rect;->stopY:F

    :goto_3
    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 42
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Rect;->rect:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 43
    return-void

    .line 38
    :cond_0
    iget v0, p0, Lcom/android/mipop/paintpad/drawings/Rect;->stopX:F

    goto :goto_0

    .line 39
    :cond_1
    iget v0, p0, Lcom/android/mipop/paintpad/drawings/Rect;->startX:F

    goto :goto_1

    .line 40
    :cond_2
    iget v0, p0, Lcom/android/mipop/paintpad/drawings/Rect;->stopY:F

    goto :goto_2

    .line 41
    :cond_3
    iget v0, p0, Lcom/android/mipop/paintpad/drawings/Rect;->startY:F

    goto :goto_3
.end method

.method public reDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/drawings/Rect;->draw(Landroid/graphics/Canvas;)V

    .line 33
    return-void
.end method
