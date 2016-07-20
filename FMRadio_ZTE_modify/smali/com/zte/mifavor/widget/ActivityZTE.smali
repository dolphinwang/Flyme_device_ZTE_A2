.class public Lcom/zte/mifavor/widget/ActivityZTE;
.super Landroid/app/Activity;
.source "ActivityZTE.java"


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

.field mFrameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mFullScreenSet:I

.field private mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field mScreenWidth:I

.field private mSpiltflag:I

.field private mSplitActionbarHeight:I

.field private mSplitBackground:Landroid/widget/LinearLayout;

.field public mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/zte/mifavor/widget/ActivityZTE;->LEFT_BUTTON:I

    .line 54
    const/4 v0, 0x1

    sput v0, Lcom/zte/mifavor/widget/ActivityZTE;->RIGHT_BUTTON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x34

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFullScreenSet:I

    .line 39
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->indicatorFlag:I

    .line 40
    iput-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 41
    iput-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    const/16 v0, 0x19

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->INDICATOR_HEIGHT:I

    .line 43
    iput v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->ACTIONBAR_HEIGHT:I

    .line 44
    iput v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->SPLIT_ACTIONBAR_HEIGHT:I

    .line 45
    iput v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->ACTIONBAR_TAB_HEIGHT:I

    .line 46
    iput v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    .line 47
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarTabHeight:I

    .line 48
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitActionbarHeight:I

    .line 49
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSpiltflag:I

    .line 50
    const v0, -0x1d1d1e

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->SPLIT_ACTIONBAR_COLOR:I

    .line 51
    iput-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    .line 52
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mScreenWidth:I

    return-void
.end method


# virtual methods
.method public SetBottomBarVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x0

    .line 349
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 350
    if-eqz p1, :cond_1

    .line 352
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x34

    invoke-static {p0, v1}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public SetBottomButtonEnable(IZ)V
    .locals 4
    .param p1, "poistion"    # I
    .param p2, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 386
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 387
    sget v0, Lcom/zte/mifavor/widget/ActivityZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_2

    .line 388
    if-eqz p2, :cond_1

    .line 390
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 396
    :cond_2
    if-eqz p2, :cond_3

    .line 398
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 401
    :cond_3
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public SetBottomButtonText(ILjava/lang/String;)V
    .locals 2
    .param p1, "poistion"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 407
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 408
    sget v0, Lcom/zte/mifavor/widget/ActivityZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public SetBottomButtonVisible(IZ)V
    .locals 4
    .param p1, "poistion"    # I
    .param p2, "visible"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 363
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 364
    sget v0, Lcom/zte/mifavor/widget/ActivityZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_2

    .line 365
    if-eqz p2, :cond_1

    .line 367
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 374
    :cond_2
    if-eqz p2, :cond_3

    .line 376
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 379
    :cond_3
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public addBottomBarOptionMenu(I)V
    .locals 9
    .param p1, "resId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 251
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_2

    .line 252
    new-instance v2, Lcom/zte/mifavor/widget/MenuClicker;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/widget/MenuClicker;-><init>(Landroid/app/Activity;)V

    .line 253
    .local v2, "mc":Lcom/zte/mifavor/widget/MenuClicker;
    iget-object v5, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v5, p1}, Lcom/zte/mifavor/widget/ToolBarZTE;->inflateMenu(I)V

    .line 254
    iget-object v5, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v5, v8}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    .line 255
    iget-object v5, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v5, v2}, Lcom/zte/mifavor/widget/ToolBarZTE;->setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 256
    const v5, 0x1020002

    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/ActivityZTE;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 257
    .local v4, "view":Landroid/view/ViewGroup;
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 260
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 263
    iget-object v5, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x34

    invoke-static {p0, v6}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 268
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/16 v6, 0x50

    invoke-direct {v1, v7, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 272
    .local v1, "mToobarParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 274
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 275
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 276
    .local v3, "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 278
    .end local v3    # "vgroup":Landroid/view/ViewGroup;
    :cond_0
    iget-object v5, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v5, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/ToolBarZTE;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 280
    iget-object v5, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/ToolBarZTE;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 281
    .restart local v3    # "vgroup":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 283
    .end local v3    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v5, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v0, v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    const/4 v5, 0x1

    iput v5, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSpiltflag:I

    .line 287
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ActivityZTE;->setContentView(Landroid/view/View;)V

    .line 290
    .end local v0    # "layout":Landroid/widget/FrameLayout;
    .end local v1    # "mToobarParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "mc":Lcom/zte/mifavor/widget/MenuClicker;
    .end local v4    # "view":Landroid/view/ViewGroup;
    :cond_2
    return-void
.end method

.method public fillActionbarTab(Z)V
    .locals 1
    .param p1, "fillTab"    # Z

    .prologue
    .line 324
    if-eqz p1, :cond_0

    .line 325
    const/16 v0, 0x34

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarTabHeight:I

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarTabHeight:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 61
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 62
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 63
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mScreenWidth:I

    .line 64
    new-instance v2, Lcom/zte/mifavor/widget/ToolBarZTE;

    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mScreenWidth:I

    invoke-direct {v2, p0, v3}, Lcom/zte/mifavor/widget/ToolBarZTE;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    .line 65
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const v3, -0x1d1d1e

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/ToolBarZTE;->setBackgroundColor(I)V

    .line 74
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    .line 69
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    .line 70
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 4
    .param p1, "layoutResID"    # I

    .prologue
    .line 77
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ActivityZTE;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 81
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ActivityZTE;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, -0x2

    const/4 v6, -0x1

    .line 87
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 141
    :goto_0
    return-void

    .line 90
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->indicatorFlag:I

    if-nez v3, :cond_6

    .line 91
    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFullScreenSet:I

    if-nez v3, :cond_5

    .line 92
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 93
    .local v1, "mainLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 94
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 95
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 96
    .local v2, "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 98
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v3, :cond_4

    .line 99
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x4d

    invoke-static {p0, v5}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 108
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 110
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 116
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 117
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 119
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_3
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    invoke-super {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 123
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 104
    :cond_4
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 125
    .end local v1    # "mainLayout":Landroid/widget/LinearLayout;
    :cond_5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 134
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 137
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

    .line 144
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 145
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    :goto_0
    return-void

    .line 147
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->indicatorFlag:I

    if-nez v3, :cond_6

    .line 148
    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFullScreenSet:I

    if-nez v3, :cond_5

    .line 149
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 150
    .local v1, "mainLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 151
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 152
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 153
    .local v2, "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 155
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v3, :cond_4

    .line 156
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x4d

    invoke-static {p0, v5}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 165
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 167
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 172
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 173
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 175
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_3
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    invoke-super {p0, v1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 161
    :cond_4
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 180
    .end local v1    # "mainLayout":Landroid/widget/LinearLayout;
    :cond_5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 181
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    invoke-super {p0, v0, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 191
    .end local v0    # "layout":Landroid/widget/FrameLayout;
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public setFullScreenDisplay()V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFullScreenSet:I

    .line 333
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 8
    .param p1, "color"    # I

    .prologue
    const/16 v7, 0x19

    const v6, -0x1d1d1e

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 197
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-nez v2, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 249
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 204
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 208
    :cond_1
    iget v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFullScreenSet:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 210
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-nez v2, :cond_2

    .line 211
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v7}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 213
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 216
    :cond_2
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    add-int/lit8 v3, v3, 0x19

    invoke-static {p0, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 218
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 221
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 223
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitActionbarHeight:I

    invoke-static {p0, v2}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 225
    .local v1, "splitFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 226
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 229
    .end local v1    # "splitFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-nez v2, :cond_4

    .line 231
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v7}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 232
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 235
    :cond_4
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    add-int/lit8 v3, v3, 0x19

    invoke-static {p0, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 236
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 239
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 241
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitActionbarHeight:I

    invoke-static {p0, v2}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 243
    .local v0, "mSplitLinearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

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

    .line 298
    if-eqz p1, :cond_0

    .line 299
    iput v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    .line 304
    :goto_0
    iget v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    iget v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarTabHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    .line 306
    if-eqz p2, :cond_1

    .line 307
    iput v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitActionbarHeight:I

    .line 312
    :goto_1
    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/ActivityZTE;->setIndicatorColor(I)V

    .line 313
    return-void

    .line 301
    :cond_0
    iput v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    goto :goto_0

    .line 309
    :cond_1
    iput v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitActionbarHeight:I

    goto :goto_1
.end method

.method public setIndicatorFlag(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 344
    if-eqz p1, :cond_0

    .line 345
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->indicatorFlag:I

    .line 347
    :cond_0
    return-void
.end method

.method public setIndicatorViewGone(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 336
    if-eqz p1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
