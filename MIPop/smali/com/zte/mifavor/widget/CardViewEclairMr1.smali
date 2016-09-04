.class Lcom/zte/mifavor/widget/CardViewEclairMr1;
.super Ljava/lang/Object;
.source "CardViewEclairMr1.java"

# interfaces
.implements Lcom/zte/mifavor/widget/CardViewImpl;


# instance fields
.field final sCornerRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    return-void
.end method

.method private getShadowBackground(Lcom/zte/mifavor/widget/CardViewDelegate;)Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;
    .locals 1
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;

    .prologue
    .line 149
    invoke-interface {p1}, Lcom/zte/mifavor/widget/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;

    return-object v0
.end method


# virtual methods
.method createBackground(Landroid/content/Context;IFFF)Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundColor"    # I
    .param p3, "radius"    # F
    .param p4, "elevation"    # F
    .param p5, "maxElevation"    # F

    .prologue
    .line 81
    new-instance v0, Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;-><init>(Landroid/content/res/Resources;IFFF)V

    return-object v0
.end method

.method public getElevation(Lcom/zte/mifavor/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CardViewEclairMr1;->getShadowBackground(Lcom/zte/mifavor/widget/CardViewDelegate;)Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;->getShadowSize()F

    move-result v0

    return v0
.end method

.method public getMaxElevation(Lcom/zte/mifavor/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CardViewEclairMr1;->getShadowBackground(Lcom/zte/mifavor/widget/CardViewDelegate;)Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;->getMaxShadowSize()F

    move-result v0

    return v0
.end method

.method public getMinHeight(Lcom/zte/mifavor/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CardViewEclairMr1;->getShadowBackground(Lcom/zte/mifavor/widget/CardViewDelegate;)Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;->getMinHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth(Lcom/zte/mifavor/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CardViewEclairMr1;->getShadowBackground(Lcom/zte/mifavor/widget/CardViewDelegate;)Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;->getMinWidth()F

    move-result v0

    return v0
.end method

.method public getRadius(Lcom/zte/mifavor/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CardViewEclairMr1;->getShadowBackground(Lcom/zte/mifavor/widget/CardViewDelegate;)Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;->getCornerRadius()F

    move-result v0

    return v0
.end method

.method public initStatic()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/zte/mifavor/widget/CardViewEclairMr1$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/CardViewEclairMr1$1;-><init>(Lcom/zte/mifavor/widget/CardViewEclairMr1;)V

    sput-object v0, Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 67
    return-void
.end method

.method public initialize(Lcom/zte/mifavor/widget/CardViewDelegate;Landroid/content/Context;IFFF)V
    .locals 7
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "backgroundColor"    # I
    .param p4, "radius"    # F
    .param p5, "elevation"    # F
    .param p6, "maxElevation"    # F

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/zte/mifavor/widget/CardViewEclairMr1;->createBackground(Landroid/content/Context;IFFF)Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;

    move-result-object v6

    .line 74
    .local v6, "background":Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;
    invoke-interface {p1}, Lcom/zte/mifavor/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 75
    invoke-interface {p1, v6}, Lcom/zte/mifavor/widget/CardViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CardViewEclairMr1;->updatePadding(Lcom/zte/mifavor/widget/CardViewDelegate;)V

    .line 77
    return-void
.end method

.method public onCompatPaddingChanged(Lcom/zte/mifavor/widget/CardViewDelegate;)V
    .locals 0
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;

    .prologue
    .line 98
    return-void
.end method

.method public onPreventCornerOverlapChanged(Lcom/zte/mifavor/widget/CardViewDelegate;)V
    .locals 2
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CardViewEclairMr1;->getShadowBackground(Lcom/zte/mifavor/widget/CardViewDelegate;)Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-interface {p1}, Lcom/zte/mifavor/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CardViewEclairMr1;->updatePadding(Lcom/zte/mifavor/widget/CardViewDelegate;)V

    .line 104
    return-void
.end method

.method public setElevation(Lcom/zte/mifavor/widget/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;
    .param p2, "elevation"    # F

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CardViewEclairMr1;->getShadowBackground(Lcom/zte/mifavor/widget/CardViewDelegate;)Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;->setShadowSize(F)V

    .line 120
    return-void
.end method

.method public setMaxElevation(Lcom/zte/mifavor/widget/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;
    .param p2, "maxElevation"    # F

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CardViewEclairMr1;->getShadowBackground(Lcom/zte/mifavor/widget/CardViewDelegate;)Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;->setMaxShadowSize(F)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CardViewEclairMr1;->updatePadding(Lcom/zte/mifavor/widget/CardViewDelegate;)V

    .line 131
    return-void
.end method

.method public setRadius(Lcom/zte/mifavor/widget/CardViewDelegate;F)V
    .locals 1
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;
    .param p2, "radius"    # F

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CardViewEclairMr1;->getShadowBackground(Lcom/zte/mifavor/widget/CardViewDelegate;)Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;->setCornerRadius(F)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CardViewEclairMr1;->updatePadding(Lcom/zte/mifavor/widget/CardViewDelegate;)V

    .line 110
    return-void
.end method

.method public updatePadding(Lcom/zte/mifavor/widget/CardViewDelegate;)V
    .locals 5
    .param p1, "cardView"    # Lcom/zte/mifavor/widget/CardViewDelegate;

    .prologue
    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 88
    .local v0, "shadowPadding":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CardViewEclairMr1;->getShadowBackground(Lcom/zte/mifavor/widget/CardViewDelegate;)Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/mifavor/widget/RoundRectDrawableWithShadow;->getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V

    move-object v1, p1

    .line 89
    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CardViewEclairMr1;->getMinHeight(Lcom/zte/mifavor/widget/CardViewDelegate;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v1, p1

    .line 90
    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CardViewEclairMr1;->getMinWidth(Lcom/zte/mifavor/widget/CardViewDelegate;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 91
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/zte/mifavor/widget/CardViewDelegate;->setShadowPadding(IIII)V

    .line 93
    return-void
.end method
