.class public abstract Lcom/android/mipop/paintpad/drawings/Drawing;
.super Ljava/lang/Object;
.source "Drawing.java"


# static fields
.field protected static final TOUCH_TOLERANCE:F = 4.0f


# instance fields
.field protected drawed:Z

.field protected isBlur:Z

.field protected pen:Landroid/graphics/Paint;

.field protected penBlurCenter:Landroid/graphics/Paint;

.field public startX:F

.field public startY:F

.field public stopX:F

.field public stopY:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->drawed:Z

    .line 25
    iput-boolean v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->isBlur:Z

    .line 28
    new-instance v1, Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/mipop/paintpad/tools/Brush;->getBrush()Lcom/android/mipop/paintpad/tools/Brush;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    .line 30
    iget-object v1, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/BlurMaskFilter;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->isBlur:Z

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->penBlurCenter:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->penBlurCenter:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 34
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->penBlurCenter:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->penBlurCenter:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->penBlurCenter:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method protected drawBlur(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v7, 0x1e

    .line 110
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v2

    .line 111
    .local v2, "m":Landroid/graphics/MaskFilter;
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 112
    .local v0, "alpha":I
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v3

    .line 113
    .local v3, "style":Landroid/graphics/Paint$Style;
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    .line 115
    .local v4, "width":F
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 116
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 117
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    float-to-int v5, v4

    add-int/lit8 v1, v5, 0xe

    .local v1, "i":I
    :goto_0
    int-to-float v5, v1

    const/high16 v6, 0x40400000    # 3.0f

    div-float v6, v4, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 121
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    int-to-float v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {p0, v5, p1}, Lcom/android/mipop/paintpad/drawings/Drawing;->drawShape(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 119
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    .line 125
    :cond_0
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v3, v5, :cond_1

    .line 127
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 129
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 130
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 131
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {p0, v5, p1}, Lcom/android/mipop/paintpad/drawings/Drawing;->drawShape(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 144
    :goto_1
    return-void

    .line 134
    :cond_1
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->penBlurCenter:Landroid/graphics/Paint;

    invoke-virtual {p0, v5, p1}, Lcom/android/mipop/paintpad/drawings/Drawing;->drawShape(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 135
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 136
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v4, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {p0, v5, p1}, Lcom/android/mipop/paintpad/drawings/Drawing;->drawShape(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 138
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 140
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    iget-object v5, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_1
.end method

.method protected abstract drawShape(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
.end method

.method public fingerDown(FFLandroid/graphics/Canvas;)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/drawings/Drawing;->reset()V

    .line 77
    iput p1, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->startX:F

    .line 78
    iput p2, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->startY:F

    .line 79
    iput p1, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->stopX:F

    .line 80
    iput p2, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->stopY:F

    .line 81
    return-void
.end method

.method public fingerMove(FFLandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    .line 85
    iget v2, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->stopX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 86
    .local v0, "dx":F
    iget v2, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->stopY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 87
    .local v1, "dy":F
    cmpl-float v2, v0, v3

    if-gez v2, :cond_0

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_1

    .line 89
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->drawed:Z

    .line 91
    :cond_1
    iput p1, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->stopX:F

    .line 92
    iput p2, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->stopY:F

    .line 93
    return-void
.end method

.method public fingerUp(FFLandroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 97
    iput p1, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->stopX:F

    .line 98
    iput p2, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->stopY:F

    .line 100
    invoke-virtual {p0, p3}, Lcom/android/mipop/paintpad/drawings/Drawing;->draw(Landroid/graphics/Canvas;)V

    .line 101
    iget-boolean v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->drawed:Z

    return v0
.end method

.method public abstract reDraw(Landroid/graphics/Canvas;)V
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->startX:F

    .line 59
    iput v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->startY:F

    .line 60
    iput v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->stopX:F

    .line 61
    iput v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->stopY:F

    .line 62
    return-void
.end method

.method public setPen(Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "mpen"    # Landroid/graphics/Paint;

    .prologue
    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/BlurMaskFilter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->isBlur:Z

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->penBlurCenter:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->penBlurCenter:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 51
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->penBlurCenter:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->penBlurCenter:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->penBlurCenter:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setscale(F)V
    .locals 2
    .param p1, "s"    # F

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/mipop/paintpad/drawings/Drawing;->pen:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    return-void
.end method
