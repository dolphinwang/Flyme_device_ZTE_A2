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
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 340
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 341
    if-eqz p1, :cond_1

    .line 343
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    goto :goto_0
.end method

.method public SetBottomButtonEnable(IZ)V
    .locals 4
    .param p1, "poistion"    # I
    .param p2, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 375
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 376
    sget v0, Lcom/zte/mifavor/widget/ActivityZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_2

    .line 377
    if-eqz p2, :cond_1

    .line 379
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 385
    :cond_2
    if-eqz p2, :cond_3

    .line 387
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 390
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
    .line 396
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 397
    sget v0, Lcom/zte/mifavor/widget/ActivityZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 404
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

    .line 352
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 353
    sget v0, Lcom/zte/mifavor/widget/ActivityZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_2

    .line 354
    if-eqz p2, :cond_1

    .line 356
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 363
    :cond_2
    if-eqz p2, :cond_3

    .line 365
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 368
    :cond_3
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public addBottomBarOptionMenu(I)V
    .locals 12
    .param p1, "resId"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 250
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_2

    .line 251
    new-instance v3, Lcom/zte/mifavor/widget/MenuClicker;

    invoke-direct {v3, p0}, Lcom/zte/mifavor/widget/MenuClicker;-><init>(Landroid/app/Activity;)V

    .line 252
    .local v3, "mc":Lcom/zte/mifavor/widget/MenuClicker;
    iget-object v6, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v6, p1}, Lcom/zte/mifavor/widget/ToolBarZTE;->inflateMenu(I)V

    .line 253
    iget-object v6, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v6, v8}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    .line 254
    iget-object v6, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v6, v3}, Lcom/zte/mifavor/widget/ToolBarZTE;->setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 255
    const v6, 0x1020002

    invoke-virtual {p0, v6}, Lcom/zte/mifavor/widget/ActivityZTE;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 256
    .local v5, "view":Landroid/view/ViewGroup;
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 257
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 258
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v10, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 263
    .local v1, "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 266
    .local v2, "mToobarParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 268
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 269
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 270
    .local v4, "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 272
    .end local v4    # "vgroup":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object v6, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v6}, Lcom/zte/mifavor/widget/ToolBarZTE;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 274
    iget-object v6, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v6}, Lcom/zte/mifavor/widget/ToolBarZTE;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 275
    .restart local v4    # "vgroup":Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 277
    .end local v4    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v6, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v0, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    iput v11, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSpiltflag:I

    .line 279
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ActivityZTE;->setContentView(Landroid/view/View;)V

    .line 281
    .end local v0    # "layout":Landroid/widget/LinearLayout;
    .end local v1    # "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "mToobarParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "mc":Lcom/zte/mifavor/widget/MenuClicker;
    .end local v5    # "view":Landroid/view/ViewGroup;
    :cond_2
    return-void
.end method

.method public fillActionbarTab(Z)V
    .locals 1
    .param p1, "fillTab"    # Z

    .prologue
    .line 315
    if-eqz p1, :cond_0

    .line 316
    const/16 v0, 0x34

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarTabHeight:I

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarTabHeight:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 60
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 61
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 62
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mScreenWidth:I

    .line 63
    new-instance v2, Lcom/zte/mifavor/widget/ToolBarZTE;

    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mScreenWidth:I

    invoke-direct {v2, p0, v3}, Lcom/zte/mifavor/widget/ToolBarZTE;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    .line 64
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const v3, -0x1d1d1e

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/ToolBarZTE;->setBackgroundColor(I)V

    .line 73
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    .line 68
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    .line 69
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
    .line 76
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 83
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/ActivityZTE;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 80
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 81
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

    .line 86
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 140
    :goto_0
    return-void

    .line 89
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->indicatorFlag:I

    if-nez v3, :cond_6

    .line 90
    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFullScreenSet:I

    if-nez v3, :cond_5

    .line 91
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    .local v1, "mainLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 94
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 95
    .local v2, "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 97
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v3, :cond_4

    .line 98
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x4d

    invoke-static {p0, v5}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 107
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 109
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 115
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 116
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 118
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_3
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    invoke-super {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 122
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 103
    :cond_4
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 124
    .end local v1    # "mainLayout":Landroid/widget/LinearLayout;
    :cond_5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 133
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 136
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

    .line 143
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 144
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    :goto_0
    return-void

    .line 146
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->indicatorFlag:I

    if-nez v3, :cond_6

    .line 147
    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFullScreenSet:I

    if-nez v3, :cond_5

    .line 148
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 149
    .local v1, "mainLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 150
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 151
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 152
    .local v2, "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 154
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v3, :cond_4

    .line 155
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x4d

    invoke-static {p0, v5}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 164
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 166
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 171
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 172
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_3
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    invoke-super {p0, v1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 160
    :cond_4
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 179
    .end local v1    # "mainLayout":Landroid/widget/LinearLayout;
    :cond_5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    invoke-super {p0, v0, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    invoke-static {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->assistActivity(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 190
    .end local v0    # "layout":Landroid/widget/FrameLayout;
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public setFullScreenDisplay()V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFullScreenSet:I

    .line 324
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

    .line 196
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-nez v2, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 248
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 207
    :cond_1
    iget v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFullScreenSet:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-nez v2, :cond_2

    .line 210
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v7}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 212
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 215
    :cond_2
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    add-int/lit8 v3, v3, 0x19

    invoke-static {p0, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 217
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 220
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 222
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitActionbarHeight:I

    invoke-static {p0, v2}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 224
    .local v1, "splitFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 225
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 228
    .end local v1    # "splitFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-nez v2, :cond_4

    .line 230
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v7}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 231
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 234
    :cond_4
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    add-int/lit8 v3, v3, 0x19

    invoke-static {p0, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 235
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 238
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 240
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitActionbarHeight:I

    invoke-static {p0, v2}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 242
    .local v0, "mSplitLinearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
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

    .line 289
    if-eqz p1, :cond_0

    .line 290
    iput v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    .line 295
    :goto_0
    iget v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    iget v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarTabHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    .line 297
    if-eqz p2, :cond_1

    .line 298
    iput v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitActionbarHeight:I

    .line 303
    :goto_1
    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/ActivityZTE;->setIndicatorColor(I)V

    .line 304
    return-void

    .line 292
    :cond_0
    iput v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    goto :goto_0

    .line 300
    :cond_1
    iput v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitActionbarHeight:I

    goto :goto_1
.end method

.method public setIndicatorFlag(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 335
    if-eqz p1, :cond_0

    .line 336
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->indicatorFlag:I

    .line 338
    :cond_0
    return-void
.end method

.method public setIndicatorViewGone(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 327
    if-eqz p1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mBackground:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
