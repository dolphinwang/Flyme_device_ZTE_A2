.class public Lcom/zte/mifavor/widget/FragmentActivityZTE;
.super Landroid/support/v4/app/FragmentActivity;
.source "FragmentActivityZTE.java"

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

.field private mMenuHanlde:Lcom/zte/mifavor/widget/onMenuEvent;

.field mScreenWidth:I

.field private mSpiltflag:I

.field private mSplitActionbarHeight:I

.field private mSplitBackground:Landroid/widget/LinearLayout;

.field public mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    sput v0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->LEFT_BUTTON:I

    .line 128
    const/4 v0, 0x1

    sput v0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->RIGHT_BUTTON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x34

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 112
    iput v1, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mFullScreenSet:I

    .line 113
    iput v1, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->indicatorFlag:I

    .line 114
    iput-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 115
    iput-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 116
    const/16 v0, 0x19

    iput v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->INDICATOR_HEIGHT:I

    .line 117
    iput v2, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->ACTIONBAR_HEIGHT:I

    .line 118
    iput v2, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->SPLIT_ACTIONBAR_HEIGHT:I

    .line 119
    iput v2, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->ACTIONBAR_TAB_HEIGHT:I

    .line 120
    iput v2, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActionbarHeight:I

    .line 121
    iput v1, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActionbarTabHeight:I

    .line 122
    iput v1, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitActionbarHeight:I

    .line 123
    iput v1, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSpiltflag:I

    .line 124
    const v0, -0x1d1d1e

    iput v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->SPLIT_ACTIONBAR_COLOR:I

    .line 125
    iput-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    .line 126
    iput v1, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mScreenWidth:I

    .line 130
    iput v1, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->initActionBarFlag:I

    .line 131
    iput-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mMenuHanlde:Lcom/zte/mifavor/widget/onMenuEvent;

    .line 132
    new-instance v0, Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/actionbar/ActivityCommon;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    .line 133
    iput v1, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActionModeTypeStarting:I

    return-void
.end method


# virtual methods
.method public SetBottomBarVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 447
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->SetBottomBarVisible(Z)V

    .line 448
    return-void
.end method

.method public SetBottomButtonEnable(IZ)V
    .locals 1
    .param p1, "poistion"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 455
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->SetBottomButtonEnable(IZ)V

    .line 456
    return-void
.end method

.method public SetBottomButtonText(ILjava/lang/String;)V
    .locals 1
    .param p1, "poistion"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->SetBottomButtonText(ILjava/lang/String;)V

    .line 460
    return-void
.end method

.method public SetBottomButtonVisible(IZ)V
    .locals 1
    .param p1, "poistion"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 451
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->SetBottomButtonVisible(IZ)V

    .line 452
    return-void
.end method

.method public addBottomBarOptionMenu(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 441
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 442
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->addBottomBarOptionMenu(I)V

    .line 445
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 425
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mMenuHanlde:Lcom/zte/mifavor/widget/onMenuEvent;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mMenuHanlde:Lcom/zte/mifavor/widget/onMenuEvent;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/widget/onMenuEvent;->dispatchMenuEvent(Landroid/view/KeyEvent;)V

    .line 428
    const/4 v0, 0x1

    .line 430
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public fillActionbarTab(Z)V
    .locals 1
    .param p1, "fillTab"    # Z

    .prologue
    .line 380
    if-eqz p1, :cond_0

    .line 381
    const/16 v0, 0x34

    iput v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActionbarTabHeight:I

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActionbarTabHeight:I

    goto :goto_0
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ActivityCommon;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->attachWindow(Landroid/view/Window;)V

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    .line 143
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    .line 144
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getWindow()Landroid/view/Window;

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
    .line 521
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 525
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
    .line 475
    iget v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActionModeTypeStarting:I

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 478
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

    .line 485
    :try_start_0
    iput p2, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActionModeTypeStarting:I

    .line 486
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 488
    iput v1, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActionModeTypeStarting:I

    return-object v0

    :catchall_0
    move-exception v0

    iput v1, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActionModeTypeStarting:I

    throw v0
.end method

.method public registerMenuEvent(Lcom/zte/mifavor/widget/onMenuEvent;)V
    .locals 0
    .param p1, "handle"    # Lcom/zte/mifavor/widget/onMenuEvent;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mMenuHanlde:Lcom/zte/mifavor/widget/onMenuEvent;

    .line 439
    return-void
.end method

.method public setActionBarContentColor(II)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "textcolor"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setActionBarContentColor(II)V

    .line 163
    return-void
.end method

.method public setActionBarContentStaticColor(II)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "textColor"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setActionBarContentStaticColor(II)V

    .line 158
    return-void
.end method

.method public setContentView(I)V
    .locals 5
    .param p1, "layoutResID"    # I

    .prologue
    const/4 v4, 0x0

    .line 167
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 168
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 169
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 170
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->setContentView(Landroid/view/View;)V

    .line 176
    :goto_0
    return-void

    .line 172
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 173
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 174
    .restart local v1    # "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, -0x2

    const/4 v6, -0x1

    .line 179
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 180
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v3}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    :goto_0
    return-void

    .line 183
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->indicatorFlag:I

    if-nez v3, :cond_6

    .line 184
    iget v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mFullScreenSet:I

    if-nez v3, :cond_5

    .line 185
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 186
    .local v1, "mainLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 187
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 189
    .local v2, "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 191
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v3, :cond_4

    .line 192
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x4d

    invoke-static {p0, v5}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 201
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 203
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 209
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 210
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 212
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_3
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    invoke-super {p0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    .line 216
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 197
    :cond_4
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 218
    .end local v1    # "mainLayout":Landroid/widget/LinearLayout;
    :cond_5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 219
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    invoke-super {p0, v0}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    .line 227
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 230
    .end local v0    # "layout":Landroid/widget/FrameLayout;
    :cond_6
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v7, -0x2

    const/4 v6, -0x1

    .line 237
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 246
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v3, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    .line 296
    :goto_0
    return-void

    .line 248
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->indicatorFlag:I

    if-nez v3, :cond_6

    .line 249
    iget v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mFullScreenSet:I

    if-nez v3, :cond_5

    .line 250
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 251
    .local v1, "mainLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 252
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 253
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 254
    .local v2, "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 256
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v3, :cond_4

    .line 257
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x4d

    invoke-static {p0, v5}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 266
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 268
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 273
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 274
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 276
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_3
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    invoke-super {p0, v1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 262
    :cond_4
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 281
    .end local v1    # "mainLayout":Landroid/widget/LinearLayout;
    :cond_5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 282
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    invoke-super {p0, v0, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 292
    .end local v0    # "layout":Landroid/widget/FrameLayout;
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public setFullScreenDisplay()V
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mFullScreenSet:I

    .line 389
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

    .line 299
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/zte/extres/R$color;->mfv_common_acb:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 300
    .local v2, "themeColor":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 301
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v3, v2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setIndicatorColor(I)V

    .line 345
    :goto_0
    return-void

    .line 303
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mFullScreenSet:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-nez v3, :cond_1

    .line 306
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 308
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 311
    :cond_1
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActionbarHeight:I

    add-int/lit8 v4, v4, 0x19

    invoke-static {p0, v4}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 313
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 316
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 318
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitActionbarHeight:I

    invoke-static {p0, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 320
    .local v1, "splitFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 321
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 324
    .end local v1    # "splitFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-nez v3, :cond_3

    .line 326
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 327
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 330
    :cond_3
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActionbarHeight:I

    add-int/lit8 v4, v4, 0x19

    invoke-static {p0, v4}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 331
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 334
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 336
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitActionbarHeight:I

    invoke-static {p0, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 338
    .local v0, "mSplitLinearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

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

    .line 354
    if-eqz p1, :cond_0

    .line 355
    iput v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActionbarHeight:I

    .line 360
    :goto_0
    iget v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActionbarHeight:I

    iget v1, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActionbarTabHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActionbarHeight:I

    .line 362
    if-eqz p2, :cond_1

    .line 363
    iput v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitActionbarHeight:I

    .line 368
    :goto_1
    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->setIndicatorColor(I)V

    .line 369
    return-void

    .line 357
    :cond_0
    iput v2, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActionbarHeight:I

    goto :goto_0

    .line 365
    :cond_1
    iput v2, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitActionbarHeight:I

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

    .line 530
    move v2, p1

    .line 532
    .local v2, "themeColor":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 533
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v3, v2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setIndicatorColor(I)V

    .line 586
    :goto_0
    return-void

    .line 535
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mFullScreenSet:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 536
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-nez v3, :cond_1

    .line 537
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 540
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 543
    :cond_1
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActionbarHeight:I

    add-int/lit8 v4, v4, 0x19

    invoke-static {p0, v4}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 547
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 551
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 553
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitActionbarHeight:I

    invoke-static {p0, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 556
    .local v1, "splitFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 557
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 560
    .end local v1    # "splitFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-nez v3, :cond_3

    .line 561
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 564
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 567
    :cond_3
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActionbarHeight:I

    add-int/lit8 v4, v4, 0x19

    invoke-static {p0, v4}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 571
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 574
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 575
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 577
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitActionbarHeight:I

    invoke-static {p0, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 580
    .local v0, "mSplitLinearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    iget-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method

.method public setIndicatorColorVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 406
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 412
    if-nez p1, :cond_2

    .line 413
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIndicatorFlag(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 400
    if-eqz p1, :cond_0

    .line 401
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->indicatorFlag:I

    .line 403
    :cond_0
    return-void
.end method

.method public setIndicatorViewGone(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 392
    if-eqz p1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "resid"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->attachWindow(Landroid/view/Window;)V

    .line 152
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    .line 154
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 467
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActivityCommon:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setTitle(Ljava/lang/CharSequence;)V

    .line 470
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 493
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 517
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
