.class public Lcom/zte/mifavor/widget/TabActivityZTE;
.super Landroid/app/TabActivity;
.source "TabActivityZTE.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field actionBarView:Landroid/view/ViewGroup;

.field initActionBarFlag:I

.field mArrowImage:Landroid/widget/ImageView;

.field mColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 93
    iput v1, p0, Lcom/zte/mifavor/widget/TabActivityZTE;->initActionBarFlag:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/widget/TabActivityZTE;->mArrowImage:Landroid/widget/ImageView;

    .line 96
    iput v1, p0, Lcom/zte/mifavor/widget/TabActivityZTE;->mColor:I

    return-void
.end method


# virtual methods
.method public fillActionbarTab(Z)V
    .locals 0
    .param p1, "fillTab"    # Z

    .prologue
    .line 228
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public setActionBarContentColor(II)V
    .locals 7
    .param p1, "color"    # I
    .param p2, "textcolor"    # I

    .prologue
    .line 127
    const/4 v3, 0x1

    iput v3, p0, Lcom/zte/mifavor/widget/TabActivityZTE;->initActionBarFlag:I

    .line 128
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-nez v3, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "action_bar"

    const-string v5, "id"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 134
    .local v0, "actionbarId":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabActivityZTE;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 135
    .local v1, "decor":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabActivityZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/zte/extres/R$drawable;->ic_ab_back_material:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 138
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 139
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/zte/mifavor/widget/TabActivityZTE;->actionBarView:Landroid/view/ViewGroup;

    .line 141
    iget-object v3, p0, Lcom/zte/mifavor/widget/TabActivityZTE;->actionBarView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/zte/mifavor/widget/TabActivityZTE;->actionBarView:Landroid/view/ViewGroup;

    const/high16 v4, 0x41100000    # 9.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 146
    iget-object v3, p0, Lcom/zte/mifavor/widget/TabActivityZTE;->actionBarView:Landroid/view/ViewGroup;

    new-instance v4, Lcom/zte/mifavor/widget/TabActivityZTE$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/zte/mifavor/widget/TabActivityZTE$1;-><init>(Lcom/zte/mifavor/widget/TabActivityZTE;II)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    goto :goto_0
.end method

.method public setAllChildViewsColor(Landroid/view/View;II)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I
    .param p3, "textColor"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 168
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    move-object v5, p1

    .line 169
    check-cast v5, Landroid/view/ViewGroup;

    .line 170
    .local v5, "vp":Landroid/view/ViewGroup;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "search_bar"

    const-string v8, "id"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 171
    .local v3, "searchId":I
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    if-ne v3, v6, :cond_1

    .line 221
    .end local v3    # "searchId":I
    .end local v5    # "vp":Landroid/view/ViewGroup;
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 175
    .restart local v3    # "searchId":I
    .restart local v5    # "vp":Landroid/view/ViewGroup;
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v6, Lcom/zte/mifavor/widget/TabActivityZTE$2;

    invoke-direct {v6, p0, p2, p3}, Lcom/zte/mifavor/widget/TabActivityZTE$2;-><init>(Lcom/zte/mifavor/widget/TabActivityZTE;II)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 192
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 193
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 194
    .local v4, "viewchild":Landroid/view/View;
    invoke-virtual {p0, v4, p2, p3}, Lcom/zte/mifavor/widget/TabActivityZTE;->setAllChildViewsColor(Landroid/view/View;II)V

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 199
    .end local v2    # "i":I
    .end local v3    # "searchId":I
    .end local v4    # "viewchild":Landroid/view/View;
    .end local v5    # "vp":Landroid/view/ViewGroup;
    :cond_2
    instance-of v6, p1, Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    move-object v6, p1

    .line 200
    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 202
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 204
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 207
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    move-object v6, p1

    .line 209
    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v6, p1

    .line 211
    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 212
    .local v0, "dras":[Landroid/graphics/drawable/Drawable;
    aget-object v6, v0, v7

    if-eqz v6, :cond_0

    .line 213
    aget-object v6, v0, v7

    invoke-virtual {v6, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 214
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    aget-object v6, v0, v7

    invoke-virtual {p1, v6, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIndicatorColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabActivityZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$color;->mfv_common_acb:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 105
    .local v0, "themeColor":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabActivityZTE;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabActivityZTE;->setInitActionBarContentColor()V

    .line 116
    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabActivityZTE;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0
.end method

.method public setIndicatorColor(ZZI)V
    .locals 0
    .param p1, "fillActionBar"    # Z
    .param p2, "fillSplitAactionBar"    # Z
    .param p3, "color"    # I

    .prologue
    .line 119
    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/TabActivityZTE;->setIndicatorColor(I)V

    .line 120
    return-void
.end method

.method public setInitActionBarContentColor()V
    .locals 3

    .prologue
    .line 122
    iget v0, p0, Lcom/zte/mifavor/widget/TabActivityZTE;->initActionBarFlag:I

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabActivityZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$color;->mfv_common_acb_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabActivityZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$color;->mfv_common_acb_txt:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zte/mifavor/widget/TabActivityZTE;->setActionBarContentColor(II)V

    .line 124
    :cond_0
    return-void
.end method
