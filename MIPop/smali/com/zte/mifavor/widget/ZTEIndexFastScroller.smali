.class public Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
.super Ljava/lang/Object;
.source "ZTEIndexFastScroller.java"


# static fields
.field private static final STATE_HIDDEN:I = 0x0

.field private static final STATE_HIDING:I = 0x3

.field private static final STATE_SHOWING:I = 0x1

.field private static final STATE_SHOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ZTEIndexFastScroller"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private drawable:Landroid/graphics/drawable/BitmapDrawable;

.field private indexPaint:Landroid/graphics/Paint;

.field private indexbarPaint:Landroid/graphics/Paint;

.field private isStopedScroll:Z

.field private lastListIndexInCenter:I

.field private mAdapter:Landroid/widget/Adapter;

.field private mAlphaRate:F

.field private mContext:Landroid/content/Context;

.field private mCurrentListIndex:I

.field private mCurrentSection:I

.field private mDensity:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHideScrollBar:Z

.field public mIndexBarTopMargin:F

.field private mIndexbarMargin:F

.field private mIndexbarRect:Landroid/graphics/RectF;

.field private mIndexbarWidth:F

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mIsIndexing:Z

.field private mIsScrolling:Z

.field private mIsShowPreview:Z

.field private mListContents:[Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mListViewHeight:I

.field private mListViewWidth:I

.field private mPreviewPadding:F

.field private mPreviewSize:F

.field private mScaledDensity:F

.field private mScrollerBarTextColor:I

.field private mSections:[Ljava/lang/String;

.field public mShowPreviewNotOnScrollBar:Z

.field public mShowScrollerBar:Z

.field public mState:I

.field private mToastTextDisPlay:Z

.field private mTouchScroller:Z

.field private previewPaint:Landroid/graphics/Paint;

.field private previewTextPaint:Landroid/graphics/Paint;

.field scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private strThumbText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    .line 43
    iput v6, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    .line 44
    iput v6, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentListIndex:I

    .line 45
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    .line 46
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsScrolling:Z

    .line 47
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    .line 48
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    .line 49
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListContents:[Ljava/lang/String;

    .line 52
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    .line 58
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->isStopedScroll:Z

    .line 59
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    .line 60
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHideScrollBar:Z

    .line 61
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mToastTextDisPlay:Z

    .line 63
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowScrollerBar:Z

    .line 64
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowPreviewNotOnScrollBar:Z

    .line 65
    iput v5, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexBarTopMargin:F

    .line 66
    const v0, -0x666667

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mScrollerBarTextColor:I

    .line 67
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    .line 68
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mGestureDetector:Landroid/view/GestureDetector;

    .line 69
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->strThumbText:Ljava/lang/String;

    .line 70
    iput v6, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->lastListIndexInCenter:I

    .line 71
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 72
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->bitmap:Landroid/graphics/Bitmap;

    .line 73
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexbarPaint:Landroid/graphics/Paint;

    .line 74
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    .line 75
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewPaint:Landroid/graphics/Paint;

    .line 76
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    .line 117
    new-instance v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;-><init>(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 477
    new-instance v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;-><init>(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHandler:Landroid/os/Handler;

    .line 79
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mScaledDensity:F

    .line 82
    iput-object p2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    .line 83
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setAdapter(Landroid/widget/Adapter;)V

    .line 85
    const/high16 v0, 0x41800000    # 16.0f

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarWidth:F

    .line 86
    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    .line 87
    const/high16 v0, 0x41400000    # 12.0f

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mPreviewPadding:F

    .line 88
    const/high16 v0, 0x42a20000    # 81.0f

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mPreviewSize:F

    .line 89
    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexBarTopMargin:F

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexBarTopMargin:F

    .line 90
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 92
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    .line 95
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$drawable;->fastscroll_label_zte_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 96
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->bitmap:Landroid/graphics/Bitmap;

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexbarPaint:Landroid/graphics/Paint;

    .line 99
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexbarPaint:Landroid/graphics/Paint;

    const v1, 0x999999

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexbarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexbarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    .line 104
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    iget v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mScaledDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewPaint:Landroid/graphics/Paint;

    .line 108
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    .line 111
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42340000    # 45.0f

    iget v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsScrolling:Z

    return v0
.end method

.method static synthetic access$002(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->isStopedScroll:Z

    return v0
.end method

.method static synthetic access$102(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->isStopedScroll:Z

    return p1
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    return p1
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByListPos(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    return p1
.end method

.method static synthetic access$702(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;F)F
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # F

    .prologue
    .line 31
    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAlphaRate:F

    return p1
.end method

.method static synthetic access$800(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    return v0
.end method

.method static synthetic access$900(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;J)V
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # J

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->fade(J)V

    return-void
.end method

.method private contains(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 428
    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    :cond_0
    move v0, v1

    .line 436
    :goto_0
    return v0

    .line 431
    :cond_1
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowScrollerBar:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    .line 432
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    goto :goto_0

    .line 434
    :cond_2
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    goto :goto_0
.end method

.method private fade(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/4 v1, 0x0

    .line 466
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 467
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 468
    return-void
.end method

.method private getItemTextThumbs(I)Ljava/lang/String;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 157
    iget-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    if-eqz v4, :cond_0

    .line 158
    iget-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    instance-of v0, v4, Lcom/zte/mifavor/widget/ZTECompositeCursorAdapter;

    .line 159
    .local v0, "isZteAdapter":Z
    if-eqz v0, :cond_1

    .line 160
    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    check-cast v2, Lcom/zte/mifavor/widget/ZTECompositeCursorAdapter;

    .line 161
    .local v2, "zteAdapter":Lcom/zte/mifavor/widget/ZTECompositeCursorAdapter;
    invoke-virtual {v2, p1}, Lcom/zte/mifavor/widget/ZTECompositeCursorAdapter;->getItemTitle(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "thumbsText":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 167
    .end local v0    # "isZteAdapter":Z
    .end local v1    # "thumbsText":Ljava/lang/String;
    .end local v2    # "zteAdapter":Lcom/zte/mifavor/widget/ZTECompositeCursorAdapter;
    :cond_0
    :goto_0
    return-object v3

    .line 164
    .restart local v0    # "isZteAdapter":Z
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getListIndexInCenter()I
    .locals 3

    .prologue
    .line 455
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 456
    .local v0, "pos":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 457
    :cond_0
    return v0
.end method

.method private getSectionByListPos(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 462
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getSectionByPoint(F)I
    .locals 4
    .param p1, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 440
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 446
    :cond_0
    :goto_0
    return v0

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 444
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private setState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    .line 397
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    .line 401
    const-string v0, "ZTEIndexFastScroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 405
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 410
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAlphaRate:F

    .line 411
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->fade(J)V

    goto :goto_0

    .line 415
    :pswitch_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 419
    :pswitch_3
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAlphaRate:F

    .line 420
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentListIndex:I

    .line 421
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->fade(J)V

    goto :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public checkSectionExistContacts(I)Z
    .locals 7
    .param p1, "section"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 274
    iget-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v4, :cond_0

    .line 290
    :goto_0
    return v2

    .line 278
    :cond_0
    iget-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v4, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    .line 279
    .local v0, "currentSectionPos":I
    iget-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v5, p1, 0x1

    invoke-interface {v4, v5}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v1

    .line 281
    .local v1, "nextSectionPos":I
    if-eq v0, v1, :cond_1

    if-eq v1, v6, :cond_1

    .line 282
    const-string v2, "ZTEIndexFastScroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSectionExistContacts true, section = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currentSectionPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nextSectionPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 283
    goto :goto_0

    .line 285
    :cond_1
    if-ne v1, v6, :cond_2

    iget-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v4, v5}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v4

    if-ne p1, v4, :cond_2

    .line 286
    const-string v2, "ZTEIndexFastScroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSectionExistContacts true, nextSectionPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIndexer.getSectionForPosition(currentSectionPos+1) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v6, v0, 0x1

    invoke-interface {v5, v6}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", section = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 287
    goto/16 :goto_0

    .line 289
    :cond_2
    const-string v3, "ZTEIndexFastScroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSectionExistContacts false, section = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 171
    iget-object v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    array-length v8, v8

    if-lez v8, :cond_2

    iget-boolean v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowScrollerBar:Z

    if-eqz v8, :cond_2

    .line 177
    iget-object v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    const/high16 v9, 0x40a00000    # 5.0f

    iget v10, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr v9, v10

    const/high16 v10, 0x40a00000    # 5.0f

    iget v11, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr v10, v11

    iget-object v11, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexbarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 182
    iget-object v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    iget v10, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    array-length v9, v9

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 183
    .local v6, "sectionHeight":F
    iget-object v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v8

    iget-object v9, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    sub-float v8, v6, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v2, v8, v9

    .line 184
    .local v2, "paddingTop":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    array-length v8, v8

    if-ge v0, v8, :cond_1

    .line 185
    iget v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    if-ne v0, v8, :cond_0

    .line 186
    iget-object v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/zte/extres/R$color;->contacts_list_sd:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    :goto_1
    iget v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarWidth:F

    iget-object v9, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float v1, v8, v9

    .line 191
    .local v1, "paddingLeft":F
    iget-object v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    aget-object v8, v8, v0

    iget-object v9, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v1

    iget-object v10, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    iget v11, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    add-float/2addr v10, v11

    int-to-float v11, v0

    mul-float/2addr v11, v6

    add-float/2addr v10, v11

    add-float/2addr v10, v2

    iget-object v11, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->ascent()F

    move-result v11

    sub-float/2addr v10, v11

    iget-object v11, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "paddingLeft":F
    :cond_0
    iget-object v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->indexPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mScrollerBarTextColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 203
    :cond_1
    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mPreviewPadding:F

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    move-result v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    sub-float v4, v8, v9

    .line 204
    .local v4, "previewSize":F
    new-instance v3, Landroid/graphics/RectF;

    iget v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewWidth:I

    int-to-float v8, v8

    sub-float/2addr v8, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v9, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewHeight:I

    int-to-float v9, v9

    sub-float/2addr v9, v4

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v10, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewWidth:I

    int-to-float v10, v10

    sub-float/2addr v10, v4

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v10, v4

    iget v11, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewHeight:I

    int-to-float v11, v11

    sub-float/2addr v11, v4

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v11, v4

    invoke-direct {v3, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 221
    .local v3, "previewRect":Landroid/graphics/RectF;
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getListIndexInCenter()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getItemTextThumbs(I)Ljava/lang/String;

    move-result-object v7

    .line 222
    .local v7, "thumbText":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mToastTextDisPlay:Z

    if-eqz v8, :cond_2

    .line 223
    iget-boolean v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    if-eqz v8, :cond_3

    .line 224
    iget v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    if-ltz v8, :cond_2

    iget-boolean v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    if-eqz v8, :cond_2

    .line 225
    iget-object v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    iget v10, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 228
    .local v5, "previewTextWidth":F
    iget-object v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->bitmap:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v3, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 229
    iget-object v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    iget v9, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    aget-object v8, v8, v9

    iget v9, v3, Landroid/graphics/RectF;->left:F

    sub-float v10, v4, v5

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    iget v10, v3, Landroid/graphics/RectF;->top:F

    iget v11, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mPreviewPadding:F

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->ascent()F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 254
    .end local v0    # "i":I
    .end local v2    # "paddingTop":F
    .end local v3    # "previewRect":Landroid/graphics/RectF;
    .end local v4    # "previewSize":F
    .end local v5    # "previewTextWidth":F
    .end local v6    # "sectionHeight":F
    .end local v7    # "thumbText":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 237
    .restart local v0    # "i":I
    .restart local v2    # "paddingTop":F
    .restart local v3    # "previewRect":Landroid/graphics/RectF;
    .restart local v4    # "previewSize":F
    .restart local v6    # "sectionHeight":F
    .restart local v7    # "thumbText":Ljava/lang/String;
    :cond_3
    iget-boolean v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsScrolling:Z

    if-eqz v8, :cond_2

    :cond_4
    if-eqz v7, :cond_2

    iget-boolean v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowPreviewNotOnScrollBar:Z

    if-eqz v8, :cond_2

    .line 241
    iget-object v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 244
    .restart local v5    # "previewTextWidth":F
    iget-object v8, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->bitmap:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v3, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 245
    iget v8, v3, Landroid/graphics/RectF;->left:F

    sub-float v9, v4, v5

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    iget v9, v3, Landroid/graphics/RectF;->top:F

    iget v10, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mPreviewPadding:F

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->previewTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public getCurrentSection(FF)I
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 470
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    const/4 v0, -0x1

    .line 473
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHideScrollBar:Z

    .line 386
    return-void
.end method

.method public invalidTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    if-eqz v3, :cond_1

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 260
    const-string v3, "ZTEIndexFastScroller"

    const-string v4, "onInvalidTouchEvent MotionEvent.ACTION_UP"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    .line 262
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    .line 263
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V

    .line 265
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByPoint(F)I

    move-result v0

    .line 266
    .local v0, "Section":I
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->checkSectionExistContacts(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 271
    .end local v0    # "Section":I
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 370
    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewWidth:I

    .line 371
    iput p2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewHeight:I

    .line 372
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarWidth:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    iget v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexBarTopMargin:F

    add-float/2addr v2, v3

    int-to-float v3, p1

    iget v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    sub-float/2addr v3, v4

    int-to-float v4, p2

    iget v5, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    .line 376
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 365
    :goto_0
    const-string v0, "ZTEIndexFastScroller"

    const-string v2, "gengbin,onTouchEvent():nocase"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 366
    :cond_0
    :goto_1
    return v0

    .line 299
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 302
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    .line 305
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    if-eqz v2, :cond_2

    .line 306
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByPoint(F)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    .line 308
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    iget v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    invoke-interface {v2, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 311
    :cond_1
    const-string v1, "ZTEIndexFastScroller"

    const-string v2, "gengbin,onTouchEvent():MotionEvent.ACTION_DOWN mTouchScroller=true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 314
    :cond_2
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    .line 315
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByListPos(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    .line 316
    const-string v0, "ZTEIndexFastScroller"

    const-string v2, "gengbin,onTouchEvent():MotionEvent.ACTION_DOWN mTouchScroller=false1"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_3
    const-string v0, "ZTEIndexFastScroller"

    const-string v2, "gengbin,onTouchEvent():MotionEvent.ACTION_DOWN mTouchScroller=false2"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 323
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    if-eqz v2, :cond_5

    .line 324
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByPoint(F)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    .line 326
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_4

    .line 327
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    iget v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    invoke-interface {v2, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 347
    :cond_4
    :goto_2
    const-string v0, "ZTEIndexFastScroller"

    const-string v2, "gengbin,onTouchEvent():MotionEvent.ACTION_MOVE"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 348
    goto/16 :goto_1

    .line 330
    :cond_5
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;

    invoke-direct {v3, p0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;-><init>(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)V

    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mGestureDetector:Landroid/view/GestureDetector;

    .line 344
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    .line 350
    :pswitch_2
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    .line 351
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    .line 352
    invoke-direct {p0, v3}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V

    .line 353
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    if-nez v2, :cond_0

    .line 356
    const-string v0, "ZTEIndexFastScroller"

    const-string v2, "gengbin,onTouchEvent():MotionEvent.ACTION_UP"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 359
    :pswitch_3
    const-string v0, "ZTEIndexFastScroller"

    const-string v2, "gengbin,onTouchEvent():MotionEvent.ACTION_CANCEL"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    .line 361
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    .line 362
    invoke-direct {p0, v3}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V

    goto/16 :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 389
    instance-of v0, p1, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 390
    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    .line 391
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    .line 392
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    .line 394
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 379
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHideScrollBar:Z

    .line 380
    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    if-nez v0, :cond_0

    .line 381
    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V

    .line 382
    :cond_0
    return-void
.end method
