.class public Lcom/zte/mifavor/widget/ListActivityZTE;
.super Landroid/app/ListActivity;
.source "ListActivityZTE.java"


# static fields
.field public static LEFT_BUTTON:I

.field public static RIGHT_BUTTON:I


# instance fields
.field private final ACTIONBAR_HEIGHT:I

.field private final ACTIONBAR_TAB_HEIGHT:I

.field private final INDICATOR_HEIGHT:I

.field private final SPLIT_ACTIONBAR_COLOR:I

.field private final SPLIT_ACTIONBAR_HEIGHT:I

.field actionBarView:Landroid/view/ViewGroup;

.field private indicatorFlag:I

.field initActionBarFlag:I

.field private mActionModeTypeStarting:I

.field private mActionbarHeight:I

.field private mActionbarTabHeight:I

.field private mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

.field private mBackground:Landroid/widget/LinearLayout;

.field private mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mFullScreenSet:I

.field private mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field mScreenWidth:I

.field private mSpiltflag:I

.field private mSplitActionbarHeight:I

.field private mSplitBackground:Landroid/widget/LinearLayout;

.field mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput v0, Lcom/zte/mifavor/widget/ListActivityZTE;->LEFT_BUTTON:I

    .line 70
    const/4 v0, 0x1

    sput v0, Lcom/zte/mifavor/widget/ListActivityZTE;->RIGHT_BUTTON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x34

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 54
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFullScreenSet:I

    .line 55
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->indicatorFlag:I

    .line 56
    iput-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 57
    iput-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 58
    const/16 v0, 0x19

    iput v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->INDICATOR_HEIGHT:I

    .line 59
    iput v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->ACTIONBAR_HEIGHT:I

    .line 60
    iput v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->SPLIT_ACTIONBAR_HEIGHT:I

    .line 61
    iput v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->ACTIONBAR_TAB_HEIGHT:I

    .line 62
    iput v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActionbarHeight:I

    .line 63
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActionbarTabHeight:I

    .line 64
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitActionbarHeight:I

    .line 65
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSpiltflag:I

    .line 66
    const v0, -0x1d1d1e

    iput v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->SPLIT_ACTIONBAR_COLOR:I

    .line 67
    iput-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    .line 68
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mScreenWidth:I

    .line 72
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->initActionBarFlag:I

    .line 73
    new-instance v0, Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/actionbar/ActivityCommon;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    .line 74
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActionModeTypeStarting:I

    return-void
.end method


# virtual methods
.method public SetBottomBarVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 357
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->SetBottomBarVisible(Z)V

    .line 358
    return-void
.end method

.method public SetBottomButtonEnable(IZ)V
    .locals 1
    .param p1, "poistion"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 365
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->SetBottomButtonEnable(IZ)V

    .line 366
    return-void
.end method

.method public SetBottomButtonText(ILjava/lang/String;)V
    .locals 1
    .param p1, "poistion"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->SetBottomButtonText(ILjava/lang/String;)V

    .line 370
    return-void
.end method

.method public SetBottomButtonVisible(IZ)V
    .locals 1
    .param p1, "poistion"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 361
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->SetBottomButtonVisible(IZ)V

    .line 362
    return-void
.end method

.method public addBottomBarOptionMenu(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 351
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->addBottomBarOptionMenu(I)V

    .line 355
    :cond_0
    return-void
.end method

.method public fillActionbarTab(Z)V
    .locals 0
    .param p1, "fillTab"    # Z

    .prologue
    .line 349
    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ActivityCommon;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-super {p0}, Landroid/app/ListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->attachWindow(Landroid/view/Window;)V

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    .line 84
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    .line 85
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 431
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 435
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 391
    iget v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActionModeTypeStarting:I

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 401
    :try_start_0
    iput p2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActionModeTypeStarting:I

    .line 402
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ListActivityZTE;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 404
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActionModeTypeStarting:I

    return-object v0

    :catchall_0
    move-exception v0

    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActionModeTypeStarting:I

    throw v0
.end method

.method public setActionBarContentColor(II)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "textcolor"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setActionBarContentColor(II)V

    .line 102
    return-void
.end method

.method public setActionBarContentStaticColor(II)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "textColor"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setActionBarContentStaticColor(II)V

    .line 105
    return-void
.end method

.method public setContentView(I)V
    .locals 5
    .param p1, "layoutResID"    # I

    .prologue
    const/4 v4, 0x0

    .line 108
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 109
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ListActivityZTE;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 110
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ListActivityZTE;->setContentView(Landroid/view/View;)V

    .line 117
    :goto_0
    return-void

    .line 113
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ListActivityZTE;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 114
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 115
    .restart local v1    # "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ListActivityZTE;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, -0x2

    const/4 v6, -0x1

    .line 120
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 121
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v3}, Lcom/zte/mifavor/widget/ListActivityZTE;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    :goto_0
    return-void

    .line 124
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->indicatorFlag:I

    if-nez v3, :cond_6

    .line 125
    iget v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFullScreenSet:I

    if-nez v3, :cond_5

    .line 126
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 127
    .local v1, "mainLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 128
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 129
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 130
    .local v2, "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 132
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v3, :cond_4

    .line 133
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x4d

    invoke-static {p0, v5}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 142
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 144
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 150
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 151
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 153
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_3
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    invoke-super {p0, v1}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;)V

    .line 157
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 138
    :cond_4
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 159
    .end local v1    # "mainLayout":Landroid/widget/LinearLayout;
    :cond_5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    invoke-super {p0, v0}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;)V

    .line 168
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 171
    .end local v0    # "layout":Landroid/widget/FrameLayout;
    :cond_6
    invoke-super {p0, p1}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v7, -0x2

    const/4 v6, -0x1

    .line 178
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 187
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v3, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    .line 237
    :goto_0
    return-void

    .line 189
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->indicatorFlag:I

    if-nez v3, :cond_6

    .line 190
    iget v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFullScreenSet:I

    if-nez v3, :cond_5

    .line 191
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 192
    .local v1, "mainLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 193
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 194
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 195
    .local v2, "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 197
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v3, :cond_4

    .line 198
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x4d

    invoke-static {p0, v5}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 207
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 209
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 214
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 215
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 217
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_3
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    invoke-super {p0, v1, p2}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 203
    :cond_4
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 222
    .end local v1    # "mainLayout":Landroid/widget/LinearLayout;
    :cond_5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 223
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    invoke-super {p0, v0, p2}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 233
    .end local v0    # "layout":Landroid/widget/FrameLayout;
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public setIndicatorColor(I)V
    .locals 9
    .param p1, "color"    # I

    .prologue
    const/16 v8, 0x19

    const/4 v7, 0x0

    const v6, -0x1d1d1e

    const/4 v5, -0x1

    .line 290
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/zte/extres/R$color;->mfv_common_acb:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 292
    .local v2, "themeColor":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 293
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v3, v2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setIndicatorColor(I)V

    .line 337
    :goto_0
    return-void

    .line 295
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFullScreenSet:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 297
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-nez v3, :cond_1

    .line 298
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 300
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 303
    :cond_1
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActionbarHeight:I

    add-int/lit8 v4, v4, 0x19

    invoke-static {p0, v4}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 305
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 308
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 310
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitActionbarHeight:I

    invoke-static {p0, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 312
    .local v1, "splitFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 313
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 316
    .end local v1    # "splitFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-nez v3, :cond_3

    .line 318
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 319
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 322
    :cond_3
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActionbarHeight:I

    add-int/lit8 v4, v4, 0x19

    invoke-static {p0, v4}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 323
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 326
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 328
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitActionbarHeight:I

    invoke-static {p0, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 330
    .local v0, "mSplitLinearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method

.method public setIndicatorColor(ZZI)V
    .locals 0
    .param p1, "fillActionBar"    # Z
    .param p2, "fillSplitAactionBar"    # Z
    .param p3, "color"    # I

    .prologue
    .line 340
    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/ListActivityZTE;->setIndicatorColor(I)V

    .line 341
    return-void
.end method

.method public setIndicatorColorChange(I)V
    .locals 9
    .param p1, "color"    # I

    .prologue
    const/16 v8, 0x19

    const/4 v7, 0x0

    const v6, -0x1d1d1e

    const/4 v5, -0x1

    .line 241
    move v2, p1

    .line 242
    .local v2, "themeColor":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 243
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v3, v2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setIndicatorColor(I)V

    .line 287
    :goto_0
    return-void

    .line 245
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFullScreenSet:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-nez v3, :cond_1

    .line 248
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 250
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 253
    :cond_1
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActionbarHeight:I

    add-int/lit8 v4, v4, 0x19

    invoke-static {p0, v4}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 255
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 258
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 260
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitActionbarHeight:I

    invoke-static {p0, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 262
    .local v1, "splitFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 263
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 266
    .end local v1    # "splitFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-nez v3, :cond_3

    .line 268
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 269
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 272
    :cond_3
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActionbarHeight:I

    add-int/lit8 v4, v4, 0x19

    invoke-static {p0, v4}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 273
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 276
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 278
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitActionbarHeight:I

    invoke-static {p0, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 280
    .local v0, "mSplitLinearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "resid"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-super {p0}, Landroid/app/ListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->attachWindow(Landroid/view/Window;)V

    .line 95
    invoke-super {p0, p1}, Landroid/app/ListActivity;->setTheme(I)V

    .line 97
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 377
    invoke-super {p0, p1}, Landroid/app/ListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setTitle(Ljava/lang/CharSequence;)V

    .line 380
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 409
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ListActivityZTE;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 427
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ListActivityZTE;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
