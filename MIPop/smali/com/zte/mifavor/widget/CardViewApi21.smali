.class Lcom/zte/mifavor/widget/CardViewApi21;
.super Ljava/lang/Object;
.source "CardViewApi21.java"

# interfaces
.implements Lcom/zte/mifavor/widget/CardViewImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElevation(Lcom/zte/mifavor/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;

    .prologue
    .line 78
    check-cast p1, Landroid/view/View;

    .end local p1    # "cardView":Lcom/zte/mifavor/widget/CardViewDelegate;
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public getMaxElevation(Lcom/zte/mifavor/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;

    .prologue
    .line 53
    invoke-interface {p1}, Lcom/zte/mifavor/widget/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/RoundRectDrawable;

    check-cast v0, Lcom/zte/mifavor/widget/RoundRectDrawable;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/RoundRectDrawable;->getPadding()F

    move-result v0

    return v0
.end method

.method public getMinHeight(Lcom/zte/mifavor/widget/CardViewDelegate;)F
    .locals 2
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CardViewApi21;->getRadius(Lcom/zte/mifavor/widget/CardViewDelegate;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getMinWidth(Lcom/zte/mifavor/widget/CardViewDelegate;)F
    .locals 2
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CardViewApi21;->getRadius(Lcom/zte/mifavor/widget/CardViewDelegate;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRadius(Lcom/zte/mifavor/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;

    .prologue
    .line 68
    invoke-interface {p1}, Lcom/zte/mifavor/widget/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/RoundRectDrawable;

    check-cast v0, Lcom/zte/mifavor/widget/RoundRectDrawable;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/RoundRectDrawable;->getRadius()F

    move-result v0

    return v0
.end method

.method public initStatic()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public initialize(Lcom/zte/mifavor/widget/CardViewDelegate;Landroid/content/Context;IFFF)V
    .locals 3
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "backgroundColor"    # I
    .param p4, "radius"    # F
    .param p5, "elevation"    # F
    .param p6, "maxElevation"    # F

    .prologue
    .line 27
    new-instance v0, Lcom/zte/mifavor/widget/RoundRectDrawable;

    invoke-direct {v0, p3, p4}, Lcom/zte/mifavor/widget/RoundRectDrawable;-><init>(IF)V

    .line 28
    .local v0, "backgroundDrawable":Lcom/zte/mifavor/widget/RoundRectDrawable;
    invoke-interface {p1, v0}, Lcom/zte/mifavor/widget/CardViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v1, p1

    .line 29
    check-cast v1, Landroid/view/View;

    .line 30
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 31
    invoke-virtual {v1, p5}, Landroid/view/View;->setElevation(F)V

    .line 32
    invoke-virtual {p0, p1, p6}, Lcom/zte/mifavor/widget/CardViewApi21;->setMaxElevation(Lcom/zte/mifavor/widget/CardViewDelegate;F)V

    .line 33
    return-void
.end method

.method public onCompatPaddingChanged(Lcom/zte/mifavor/widget/CardViewDelegate;)V
    .locals 1
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CardViewApi21;->getMaxElevation(Lcom/zte/mifavor/widget/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/CardViewApi21;->setMaxElevation(Lcom/zte/mifavor/widget/CardViewDelegate;F)V

    .line 99
    return-void
.end method

.method public onPreventCornerOverlapChanged(Lcom/zte/mifavor/widget/CardViewDelegate;)V
    .locals 1
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CardViewApi21;->getMaxElevation(Lcom/zte/mifavor/widget/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/CardViewApi21;->setMaxElevation(Lcom/zte/mifavor/widget/CardViewDelegate;F)V

    .line 104
    return-void
.end method

.method public setElevation(Lcom/zte/mifavor/widget/CardViewDelegate;F)V
    .locals 0
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;
    .param p2, "elevation"    # F

    .prologue
    .line 73
    check-cast p1, Landroid/view/View;

    .end local p1    # "cardView":Lcom/zte/mifavor/widget/CardViewDelegate;
    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 74
    return-void
.end method

.method public setMaxElevation(Lcom/zte/mifavor/widget/CardViewDelegate;F)V
    .locals 3
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;
    .param p2, "maxElevation"    # F

    .prologue
    .line 46
    invoke-interface {p1}, Lcom/zte/mifavor/widget/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/RoundRectDrawable;

    check-cast v0, Lcom/zte/mifavor/widget/RoundRectDrawable;

    invoke-interface {p1}, Lcom/zte/mifavor/widget/CardViewDelegate;->getUseCompatPadding()Z

    move-result v1

    invoke-interface {p1}, Lcom/zte/mifavor/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/zte/mifavor/widget/RoundRectDrawable;->setPadding(FZZ)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CardViewApi21;->updatePadding(Lcom/zte/mifavor/widget/CardViewDelegate;)V

    .line 49
    return-void
.end method

.method public setRadius(Lcom/zte/mifavor/widget/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;
    .param p2, "radius"    # F

    .prologue
    .line 37
    invoke-interface {p1}, Lcom/zte/mifavor/widget/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/RoundRectDrawable;

    check-cast v0, Lcom/zte/mifavor/widget/RoundRectDrawable;

    invoke-virtual {v0, p2}, Lcom/zte/mifavor/widget/RoundRectDrawable;->setRadius(F)V

    .line 38
    return-void
.end method

.method public updatePadding(Lcom/zte/mifavor/widget/CardViewDelegate;)V
    .locals 6
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;

    .prologue
    const/4 v5, 0x0

    .line 83
    invoke-interface {p1}, Lcom/zte/mifavor/widget/CardViewDelegate;->getUseCompatPadding()Z

    move-result v4

    if-nez v4, :cond_0

    .line 84
    invoke-interface {p1, v5, v5, v5, v5}, Lcom/zte/mifavor/widget/CardViewDelegate;->setShadowPadding(IIII)V

    .line 94
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CardViewApi21;->getMaxElevation(Lcom/zte/mifavor/widget/CardViewDelegate;)F

    move-result v0

    .line 88
    .local v0, "elevation":F
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CardViewApi21;->getRadius(Lcom/zte/mifavor/widget/CardViewDelegate;)F

    move-result v2

    .line 89
    .local v2, "radius":F
    invoke-interface {p1}, Lcom/zte/mifavor/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v4

    invoke-static {v0, v2, v4}, Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 91
    .local v1, "hPadding":I
    invoke-interface {p1}, Lcom/zte/mifavor/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v4

    invoke-static {v0, v2, v4}, Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 93
    .local v3, "vPadding":I
    invoke-interface {p1, v1, v3, v1, v3}, Lcom/zte/mifavor/widget/CardViewDelegate;->setShadowPadding(IIII)V

    goto :goto_0
.end method
