.class public Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerToggle;,
        Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerArrowDrawableToggle;
    }
.end annotation


# instance fields
.field private final mDrawer:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

.field private mDrawerIndicatorEnabled:Z

.field private mHasCustomUpIndicator:Z

.field private mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mSlider:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerToggle;

.field private mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;Landroid/app/Activity;)V
    .locals 1
    .param p1, "drawer"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 79
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mDrawer:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    .line 82
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerArrowDrawableToggle;

    invoke-direct {v0, p2}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerArrowDrawableToggle;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mSlider:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerToggle;

    .line 83
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mDrawer:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setOnDrawerStateChangeArrowListener(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;)V

    .line 84
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->syncState()V

    .line 85
    return-void
.end method

.method private toggle()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mDrawer:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mDrawer:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->closeMenu()V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mDrawer:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->openMenu()V

    goto :goto_0
.end method


# virtual methods
.method public getToolbarNavigationClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->syncState()V

    .line 127
    return-void
.end method

.method public onDrawerSlide(FI)V
    .locals 5
    .param p1, "openRatio"    # F
    .param p2, "offsetPixels"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mSlider:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerToggle;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    int-to-float v3, p2

    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mDrawer:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    iget v4, v4, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuSize:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    .line 253
    return-void
.end method

.method public onDrawerStateChange(II)V
    .locals 2
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 231
    if-nez p2, :cond_1

    .line 232
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mSlider:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerToggle;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 236
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 238
    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mSlider:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerToggle;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    goto :goto_0
.end method

.method setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mDrawer:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setSlideDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mSlider:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerToggle;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mSlider:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerToggle;

    check-cast v0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerArrowDrawableToggle;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->setColor(I)V

    .line 91
    :cond_0
    return-void
.end method

.method public setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onToolbarNavigationClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    .line 179
    return-void
.end method

.method public syncState()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mDrawer:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getDrawerState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 104
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mSlider:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerToggle;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    .line 108
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mSlider:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerToggle;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :cond_1
    return-void

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mDrawer:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getDrawerState()I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;->mSlider:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerToggle;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    goto :goto_0
.end method
