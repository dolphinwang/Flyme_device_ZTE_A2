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

.field private indicatorFlag:I

.field private mActionbarHeight:I

.field private mActionbarTabHeight:I

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
    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/zte/mifavor/widget/ListActivityZTE;->LEFT_BUTTON:I

    .line 60
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

    .line 41
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 44
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFullScreenSet:I

    .line 45
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->indicatorFlag:I

    .line 46
    iput-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 47
    iput-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 48
    const/16 v0, 0x19

    iput v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->INDICATOR_HEIGHT:I

    .line 49
    iput v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->ACTIONBAR_HEIGHT:I

    .line 50
    iput v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->SPLIT_ACTIONBAR_HEIGHT:I

    .line 51
    iput v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->ACTIONBAR_TAB_HEIGHT:I

    .line 52
    iput v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActionbarHeight:I

    .line 53
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActionbarTabHeight:I

    .line 54
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitActionbarHeight:I

    .line 55
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSpiltflag:I

    .line 56
    const v0, -0x1d1d1e

    iput v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->SPLIT_ACTIONBAR_COLOR:I

    .line 57
    iput-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    .line 58
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mScreenWidth:I

    return-void
.end method


# virtual methods
.method public SetBottomBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 300
    if-eqz p1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    .line 308
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    goto :goto_0
.end method

.method public SetBottomButtonEnable(IZ)V
    .locals 3
    .param p1, "poistion"    # I
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 331
    sget v0, Lcom/zte/mifavor/widget/ListActivityZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_1

    .line 332
    if-eqz p2, :cond_0

    .line 334
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 348
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 340
    :cond_1
    if-eqz p2, :cond_2

    .line 342
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public SetBottomButtonText(ILjava/lang/String;)V
    .locals 1
    .param p1, "poistion"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 350
    sget v0, Lcom/zte/mifavor/widget/ListActivityZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public SetBottomButtonVisible(IZ)V
    .locals 3
    .param p1, "poistion"    # I
    .param p2, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 310
    sget v0, Lcom/zte/mifavor/widget/ListActivityZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_1

    .line 311
    if-eqz p2, :cond_0

    .line 313
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 320
    :cond_1
    if-eqz p2, :cond_2

    .line 322
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public addBottomBarOptionMenu(I)V
    .locals 11
    .param p1, "resId"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 262
    iget-object v6, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v6, p1}, Lcom/zte/mifavor/widget/ToolBarZTE;->inflateMenu(I)V

    .line 263
    new-instance v3, Lcom/zte/mifavor/widget/MenuClicker;

    invoke-direct {v3, p0}, Lcom/zte/mifavor/widget/MenuClicker;-><init>(Landroid/app/Activity;)V

    .line 264
    .local v3, "mc":Lcom/zte/mifavor/widget/MenuClicker;
    iget-object v6, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v6, v7}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    .line 265
    iget-object v6, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v6, v3}, Lcom/zte/mifavor/widget/ToolBarZTE;->setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 266
    const v6, 0x1020002

    invoke-virtual {p0, v6}, Lcom/zte/mifavor/widget/ListActivityZTE;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 267
    .local v5, "view":Landroid/view/ViewGroup;
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 268
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 269
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v9, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 274
    .local v1, "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 277
    .local v2, "mToobarParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 279
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 280
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 281
    .local v4, "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 283
    .end local v4    # "vgroup":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v6, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v6}, Lcom/zte/mifavor/widget/ToolBarZTE;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 285
    iget-object v6, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v6}, Lcom/zte/mifavor/widget/ToolBarZTE;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 286
    .restart local v4    # "vgroup":Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 288
    .end local v4    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v6, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v0, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iput v10, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSpiltflag:I

    .line 290
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ListActivityZTE;->setContentView(Landroid/view/View;)V

    .line 291
    return-void
.end method

.method public fillActionbarTab(Z)V
    .locals 0
    .param p1, "fillTab"    # Z

    .prologue
    .line 298
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 67
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 68
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 69
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mScreenWidth:I

    .line 70
    new-instance v2, Lcom/zte/mifavor/widget/ToolBarZTE;

    iget v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mScreenWidth:I

    invoke-direct {v2, p0, v3}, Lcom/zte/mifavor/widget/ToolBarZTE;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    .line 71
    iget-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const v3, -0x1d1d1e

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/ToolBarZTE;->setBackgroundColor(I)V

    .line 82
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    .line 75
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    .line 76
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 4
    .param p1, "layoutResID"    # I

    .prologue
    .line 84
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 85
    invoke-super {p0, p1}, Landroid/app/ListActivity;->setContentView(I)V

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ListActivityZTE;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 88
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 89
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ListActivityZTE;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, -0x2

    const/4 v6, -0x1

    .line 94
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 95
    invoke-super {p0, p1}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;)V

    .line 148
    :goto_0
    return-void

    .line 97
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->indicatorFlag:I

    if-nez v3, :cond_6

    .line 98
    iget v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFullScreenSet:I

    if-nez v3, :cond_5

    .line 99
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 100
    .local v1, "mainLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 102
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 103
    .local v2, "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 105
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v3, :cond_4

    .line 106
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x4d

    invoke-static {p0, v5}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 115
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 117
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 123
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 124
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 126
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_3
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    invoke-super {p0, v1}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;)V

    .line 130
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 111
    :cond_4
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 132
    .end local v1    # "mainLayout":Landroid/widget/LinearLayout;
    :cond_5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 133
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    invoke-super {p0, v0}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;)V

    .line 141
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 144
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

    .line 151
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 152
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    :goto_0
    return-void

    .line 154
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->indicatorFlag:I

    if-nez v3, :cond_6

    .line 155
    iget v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFullScreenSet:I

    if-nez v3, :cond_5

    .line 156
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 157
    .local v1, "mainLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 158
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 159
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 160
    .local v2, "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 162
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v3, :cond_4

    .line 163
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x4d

    invoke-static {p0, v5}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 172
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 179
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 180
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 182
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_3
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    invoke-super {p0, v1, p2}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 168
    :cond_4
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 187
    .end local v1    # "mainLayout":Landroid/widget/LinearLayout;
    :cond_5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    invoke-super {p0, v0, p2}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 198
    .end local v0    # "layout":Landroid/widget/FrameLayout;
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public setIndicatorColor(I)V
    .locals 8
    .param p1, "color"    # I

    .prologue
    const/16 v7, 0x19

    const v6, -0x1d1d1e

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 204
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-nez v2, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 256
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 215
    :cond_1
    iget v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFullScreenSet:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 217
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-nez v2, :cond_2

    .line 218
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v7}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 220
    iget-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 223
    :cond_2
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActionbarHeight:I

    add-int/lit8 v3, v3, 0x19

    invoke-static {p0, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 225
    iget-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 228
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 230
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitActionbarHeight:I

    invoke-static {p0, v2}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 232
    .local v1, "splitFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 233
    iget-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 236
    .end local v1    # "splitFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-nez v2, :cond_4

    .line 238
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v7}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 239
    iget-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 242
    :cond_4
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActionbarHeight:I

    add-int/lit8 v3, v3, 0x19

    invoke-static {p0, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 243
    iget-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 246
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 248
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitActionbarHeight:I

    invoke-static {p0, v2}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 250
    .local v0, "mSplitLinearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method

.method public setIndicatorColor(ZZI)V
    .locals 0
    .param p1, "fillActionBar"    # Z
    .param p2, "fillSplitAactionBar"    # Z
    .param p3, "color"    # I

    .prologue
    .line 259
    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/ListActivityZTE;->setIndicatorColor(I)V

    .line 260
    return-void
.end method
