.class public Lcom/zte/mifavor/widget/ActivityZTE;
.super Landroid/app/Activity;
.source "ActivityZTE.java"

# interfaces
.implements Lcom/zte/mifavor/widget/MenuRigister;


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

.field flag:I

.field private indicatorFlag:I

.field private mActionModeTypeStarting:I

.field private mActionbarHeight:I

.field private mActionbarTabHeight:I

.field private mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

.field mArrowImage:Landroid/widget/ImageView;

.field private mBackground:Landroid/widget/LinearLayout;

.field mColor:I

.field mFrameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mFullScreenSet:I

.field private mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mMenuHanlde:Lcom/zte/mifavor/widget/onMenuEvent;

.field mOptionMenuColor:I

.field mScreenWidth:I

.field private mSpiltflag:I

.field private mSplitActionbarHeight:I

.field private mSplitBackground:Landroid/widget/LinearLayout;

.field public mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/zte/mifavor/widget/ActivityZTE;->LEFT_BUTTON:I

    .line 68
    const/4 v0, 0x1

    sput v0, Lcom/zte/mifavor/widget/ActivityZTE;->RIGHT_BUTTON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x34

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFullScreenSet:I

    .line 53
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->indicatorFlag:I

    .line 54
    iput-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 55
    iput-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 56
    const/16 v0, 0x19

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->INDICATOR_HEIGHT:I

    .line 57
    iput v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->ACTIONBAR_HEIGHT:I

    .line 58
    iput v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->SPLIT_ACTIONBAR_HEIGHT:I

    .line 59
    iput v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->ACTIONBAR_TAB_HEIGHT:I

    .line 60
    iput v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    .line 61
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarTabHeight:I

    .line 62
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitActionbarHeight:I

    .line 63
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSpiltflag:I

    .line 64
    const v0, -0x1d1d1e

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->SPLIT_ACTIONBAR_COLOR:I

    .line 65
    iput-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    .line 66
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mScreenWidth:I

    .line 70
    iput-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mArrowImage:Landroid/widget/ImageView;

    .line 71
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mColor:I

    .line 73
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mOptionMenuColor:I

    .line 75
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->flag:I

    .line 76
    iput-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mMenuHanlde:Lcom/zte/mifavor/widget/onMenuEvent;

    .line 78
    new-instance v0, Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/actionbar/ActivityCommon;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    .line 79
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionModeTypeStarting:I

    return-void
.end method


# virtual methods
.method public SetBottomBarVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 470
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->SetBottomBarVisible(Z)V

    .line 471
    return-void
.end method

.method public SetBottomButtonEnable(IZ)V
    .locals 1
    .param p1, "poistion"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 478
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->SetBottomButtonEnable(IZ)V

    .line 479
    return-void
.end method

.method public SetBottomButtonText(ILjava/lang/String;)V
    .locals 1
    .param p1, "poistion"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->SetBottomButtonText(ILjava/lang/String;)V

    .line 483
    return-void
.end method

.method public SetBottomButtonVisible(IZ)V
    .locals 1
    .param p1, "poistion"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 474
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->SetBottomButtonVisible(IZ)V

    .line 475
    return-void
.end method

.method public addBottomBarOptionMenu(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 396
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 397
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->addBottomBarOptionMenu(I)V

    .line 400
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mMenuHanlde:Lcom/zte/mifavor/widget/onMenuEvent;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mMenuHanlde:Lcom/zte/mifavor/widget/onMenuEvent;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/widget/onMenuEvent;->dispatchMenuEvent(Landroid/view/KeyEvent;)V

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public fillActionbarTab(Z)V
    .locals 1
    .param p1, "fillTab"    # Z

    .prologue
    .line 444
    if-eqz p1, :cond_0

    .line 445
    const/16 v0, 0x34

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarTabHeight:I

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarTabHeight:I

    goto :goto_0
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ActivityCommon;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->attachWindow(Landroid/view/Window;)V

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    .line 90
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    .line 91
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getWindow()Landroid/view/Window;

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
    .line 526
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 531
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 142
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 507
    iget v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionModeTypeStarting:I

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 510
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

    .line 517
    :try_start_0
    iput p2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionModeTypeStarting:I

    .line 518
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 520
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionModeTypeStarting:I

    return-object v0

    :catchall_0
    move-exception v0

    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionModeTypeStarting:I

    throw v0
.end method

.method public registerMenuEvent(Lcom/zte/mifavor/widget/onMenuEvent;)V
    .locals 0
    .param p1, "handle"    # Lcom/zte/mifavor/widget/onMenuEvent;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mMenuHanlde:Lcom/zte/mifavor/widget/onMenuEvent;

    .line 490
    return-void
.end method

.method public setActionBarContentColor(II)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "textcolor"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setActionBarContentColor(II)V

    .line 120
    return-void
.end method

.method public setActionBarContentStaticColor(II)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "textColor"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setActionBarContentStaticColor(II)V

    .line 125
    return-void
.end method

.method public setContentView(I)V
    .locals 5
    .param p1, "layoutResID"    # I

    .prologue
    const/4 v4, 0x0

    .line 128
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 129
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ActivityZTE;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 130
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 131
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ActivityZTE;->setContentView(Landroid/view/View;)V

    .line 137
    :goto_0
    return-void

    .line 133
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ActivityZTE;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 134
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 135
    .restart local v1    # "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ActivityZTE;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, -0x2

    const/4 v6, -0x1

    .line 154
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 155
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v3}, Lcom/zte/mifavor/widget/ActivityZTE;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    :goto_0
    return-void

    .line 158
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->indicatorFlag:I

    if-nez v3, :cond_6

    .line 159
    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFullScreenSet:I

    if-nez v3, :cond_5

    .line 160
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 161
    .local v1, "mainLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 162
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 163
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 164
    .local v2, "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 166
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v3, :cond_4

    .line 167
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x4d

    invoke-static {p0, v5}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 176
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 178
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 183
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 185
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 187
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_3
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    invoke-super {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 190
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 172
    :cond_4
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 192
    .end local v1    # "mainLayout":Landroid/widget/LinearLayout;
    :cond_5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 193
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 201
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 204
    .end local v0    # "layout":Landroid/widget/FrameLayout;
    :cond_6
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v7, -0x2

    const/4 v6, -0x1

    .line 211
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 220
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v3, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    .line 271
    :goto_0
    return-void

    .line 222
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->indicatorFlag:I

    if-nez v3, :cond_6

    .line 223
    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFullScreenSet:I

    if-nez v3, :cond_5

    .line 224
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 225
    .local v1, "mainLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 226
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 227
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 228
    .local v2, "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 230
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v3, :cond_4

    .line 231
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x4d

    invoke-static {p0, v5}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 240
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 242
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 247
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 249
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 251
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_3
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 253
    invoke-super {p0, v1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 236
    :cond_4
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 256
    .end local v1    # "mainLayout":Landroid/widget/LinearLayout;
    :cond_5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 257
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    invoke-super {p0, v0, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 267
    .end local v0    # "layout":Landroid/widget/FrameLayout;
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public setFullScreenDisplay()V
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFullScreenSet:I

    .line 453
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 9
    .param p1, "color"    # I

    .prologue
    const/16 v8, 0x19

    const/4 v7, 0x0

    const v6, -0x1d1d1e

    const/4 v5, -0x1

    .line 336
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/zte/extres/R$color;->mfv_common_acb:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 338
    .local v2, "themeColor":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 339
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v3, v2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setIndicatorColor(I)V

    .line 393
    :goto_0
    return-void

    .line 342
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFullScreenSet:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 343
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-nez v3, :cond_1

    .line 344
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 347
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 350
    :cond_1
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    add-int/lit8 v4, v4, 0x19

    invoke-static {p0, v4}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 354
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 358
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 360
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitActionbarHeight:I

    invoke-static {p0, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 363
    .local v1, "splitFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 364
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 367
    .end local v1    # "splitFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-nez v3, :cond_3

    .line 368
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 371
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 374
    :cond_3
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    add-int/lit8 v4, v4, 0x19

    invoke-static {p0, v4}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 378
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 382
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 384
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitActionbarHeight:I

    invoke-static {p0, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 387
    .local v0, "mSplitLinearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method

.method public setIndicatorColor(ZZI)V
    .locals 4
    .param p1, "fillActionBar"    # Z
    .param p2, "fillSplitAactionBar"    # Z
    .param p3, "color"    # I

    .prologue
    const/16 v3, 0x34

    const/4 v2, 0x0

    .line 416
    if-eqz p1, :cond_0

    .line 417
    iput v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    .line 422
    :goto_0
    iget v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    iget v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarTabHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    .line 424
    if-eqz p2, :cond_1

    .line 425
    iput v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitActionbarHeight:I

    .line 430
    :goto_1
    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/ActivityZTE;->setIndicatorColor(I)V

    .line 431
    return-void

    .line 419
    :cond_0
    iput v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    goto :goto_0

    .line 427
    :cond_1
    iput v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitActionbarHeight:I

    goto :goto_1
.end method

.method public setIndicatorColorChange(I)V
    .locals 9
    .param p1, "color"    # I

    .prologue
    const/16 v8, 0x19

    const/4 v7, 0x0

    const v6, -0x1d1d1e

    const/4 v5, -0x1

    .line 276
    move v2, p1

    .line 278
    .local v2, "themeColor":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 279
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v3, v2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setIndicatorColor(I)V

    .line 332
    :goto_0
    return-void

    .line 281
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFullScreenSet:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 282
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-nez v3, :cond_1

    .line 283
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 286
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 289
    :cond_1
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    add-int/lit8 v4, v4, 0x19

    invoke-static {p0, v4}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 293
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 297
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 299
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitActionbarHeight:I

    invoke-static {p0, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 302
    .local v1, "splitFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 303
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 306
    .end local v1    # "splitFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-nez v3, :cond_3

    .line 307
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 310
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 313
    :cond_3
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    add-int/lit8 v4, v4, 0x19

    invoke-static {p0, v4}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 317
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 321
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 323
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitActionbarHeight:I

    invoke-static {p0, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 326
    .local v0, "mSplitLinearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method

.method public setIndicatorFlag(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 464
    if-eqz p1, :cond_0

    .line 465
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->indicatorFlag:I

    .line 467
    :cond_0
    return-void
.end method

.method public setIndicatorViewGone(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 456
    if-eqz p1, :cond_0

    .line 457
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOptionMenuColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mOptionMenuColor:I

    .line 151
    return-void
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "resid"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->attachWindow(Landroid/view/Window;)V

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 102
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 498
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setTitle(Ljava/lang/CharSequence;)V

    .line 501
    return-void
.end method
