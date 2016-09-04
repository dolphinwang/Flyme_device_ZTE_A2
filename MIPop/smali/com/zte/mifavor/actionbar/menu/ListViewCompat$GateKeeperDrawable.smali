.class Lcom/zte/mifavor/actionbar/menu/ListViewCompat$GateKeeperDrawable;
.super Lcom/zte/mifavor/actionbar/menu/DrawableWrapper;
.source "ListViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/menu/ListViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GateKeeperDrawable"
.end annotation


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/zte/mifavor/actionbar/menu/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    .line 365
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 382
    invoke-super {p0, p1}, Lcom/zte/mifavor/actionbar/menu/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 384
    :cond_0
    return-void
.end method

.method setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 368
    iput-boolean p1, p0, Lcom/zte/mifavor/actionbar/menu/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    .line 369
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 389
    invoke-super {p0, p1, p2}, Lcom/zte/mifavor/actionbar/menu/DrawableWrapper;->setHotspot(FF)V

    .line 391
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 396
    invoke-super {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/actionbar/menu/DrawableWrapper;->setHotspotBounds(IIII)V

    .line 398
    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 374
    invoke-super {p0, p1}, Lcom/zte/mifavor/actionbar/menu/DrawableWrapper;->setState([I)Z

    move-result v0

    .line 376
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 403
    invoke-super {p0, p1, p2}, Lcom/zte/mifavor/actionbar/menu/DrawableWrapper;->setVisible(ZZ)Z

    move-result v0

    .line 405
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
