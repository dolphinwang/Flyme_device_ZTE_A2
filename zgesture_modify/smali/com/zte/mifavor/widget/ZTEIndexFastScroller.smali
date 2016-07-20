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
.field private isStopedScroll:Z

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

.field private mTouchScroller:Z

.field scrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    .line 44
    iput v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    .line 45
    iput v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentListIndex:I

    .line 46
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    .line 47
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsScrolling:Z

    .line 48
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    .line 49
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    .line 50
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListContents:[Ljava/lang/String;

    .line 53
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    .line 59
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->isStopedScroll:Z

    .line 60
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    .line 61
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHideScrollBar:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowScrollerBar:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowPreviewNotOnScrollBar:Z

    .line 65
    iput v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexBarTopMargin:F

    .line 66
    const v0, -0x666667

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mScrollerBarTextColor:I

    .line 67
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    .line 68
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mGestureDetector:Landroid/view/GestureDetector;

    .line 88
    new-instance v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;-><init>(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 360
    new-instance v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;-><init>(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHandler:Landroid/os/Handler;

    .line 71
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mScaledDensity:F

    .line 74
    iput-object p2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    .line 75
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setAdapter(Landroid/widget/Adapter;)V

    .line 77
    const/high16 v0, 0x41f00000    # 30.0f

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarWidth:F

    .line 78
    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    .line 79
    const/high16 v0, 0x41400000    # 12.0f

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mPreviewPadding:F

    .line 80
    const/high16 v0, 0x42a20000    # 81.0f

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mPreviewSize:F

    .line 81
    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexBarTopMargin:F

    iget v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexBarTopMargin:F

    .line 82
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 84
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    .line 85
    return-void
.end method

.method static synthetic access$002(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->isStopedScroll:Z

    return v0
.end method

.method static synthetic access$102(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->isStopedScroll:Z

    return p1
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    return p1
.end method

.method static synthetic access$400(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByListPos(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    return p1
.end method

.method static synthetic access$702(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;F)F
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAlphaRate:F

    return p1
.end method

.method static synthetic access$800(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;J)V
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
    .param p1, "x1"    # J

    .prologue
    .line 32
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

    .line 323
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

    .line 331
    :goto_0
    return v0

    .line 326
    :cond_1
    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    .line 327
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    goto :goto_0

    .line 329
    :cond_2
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    goto :goto_0
.end method

.method private fade(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/4 v1, 0x0

    .line 356
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 357
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 358
    return-void
.end method

.method private getItemTextThumbs(I)Ljava/lang/String;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 112
    iget-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    if-eqz v4, :cond_0

    .line 113
    iget-object v4, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    instance-of v0, v4, Lcom/zte/mifavor/widget/ZTECompositeCursorAdapter;

    .line 114
    .local v0, "isZteAdapter":Z
    if-eqz v0, :cond_1

    .line 115
    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    check-cast v2, Lcom/zte/mifavor/widget/ZTECompositeCursorAdapter;

    .line 116
    .local v2, "zteAdapter":Lcom/zte/mifavor/widget/ZTECompositeCursorAdapter;
    invoke-virtual {v2, p1}, Lcom/zte/mifavor/widget/ZTECompositeCursorAdapter;->getItemTitle(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "thumbsText":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 123
    .end local v0    # "isZteAdapter":Z
    .end local v1    # "thumbsText":Ljava/lang/String;
    .end local v2    # "zteAdapter":Lcom/zte/mifavor/widget/ZTECompositeCursorAdapter;
    :cond_0
    :goto_0
    return-object v3

    .line 120
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
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 348
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    goto :goto_0
.end method

.method private getSectionByListPos(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 352
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

    .line 335
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v0

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 339
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

    .line 340
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 341
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
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 293
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    .line 297
    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 300
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 305
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAlphaRate:F

    .line 306
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->fade(J)V

    goto :goto_0

    .line 310
    :pswitch_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 314
    :pswitch_3
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAlphaRate:F

    .line 315
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentListIndex:I

    .line 316
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->fade(J)V

    goto :goto_0

    .line 297
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
.method public draw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_3

    .line 128
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowScrollerBar:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 129
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 130
    .local v9, "indexbarPaint":Landroid/graphics/Paint;
    const v19, 0x999999

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    const/high16 v20, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    const/high16 v21, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 134
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 135
    .local v8, "indexPaint":Landroid/graphics/Paint;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    const/high16 v19, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mScaledDensity:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    sub-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v17, v19, v20

    .line 139
    .local v17, "sectionHeight":F
    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v19

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v20

    sub-float v19, v19, v20

    sub-float v19, v17, v19

    const/high16 v20, 0x40000000    # 2.0f

    div-float v11, v19, v20

    .line 140
    .local v11, "paddingTop":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_2

    .line 141
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v7, v0, :cond_0

    .line 142
    const v19, -0xf97827

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarWidth:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v7

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    sub-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v10, v19, v20

    .line 149
    .local v10, "paddingLeft":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 150
    .local v5, "config":Landroid/content/res/Configuration;
    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    move/from16 v21, v0

    add-float v20, v20, v21

    int-to-float v0, v7

    move/from16 v21, v0

    mul-float v21, v21, v17

    add-float v20, v20, v21

    add-float v20, v20, v11

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v21

    sub-float v20, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v10, v2, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 140
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 144
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v10    # "paddingLeft":F
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mScrollerBarTextColor:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 154
    .restart local v5    # "config":Landroid/content/res/Configuration;
    .restart local v10    # "paddingLeft":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    add-float v20, v20, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexbarMargin:F

    move/from16 v22, v0

    add-float v21, v21, v22

    int-to-float v0, v7

    move/from16 v22, v0

    mul-float v22, v22, v17

    add-float v21, v21, v22

    add-float v21, v21, v11

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v22

    sub-float v21, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 161
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v7    # "i":I
    .end local v8    # "indexPaint":Landroid/graphics/Paint;
    .end local v9    # "indexbarPaint":Landroid/graphics/Paint;
    .end local v10    # "paddingLeft":F
    .end local v11    # "paddingTop":F
    .end local v17    # "sectionHeight":F
    :cond_2
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 162
    .local v12, "previewPaint":Landroid/graphics/Paint;
    const/high16 v19, -0x1000000

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 165
    .local v15, "previewTextPaint":Landroid/graphics/Paint;
    sget v19, Lcom/zte/extres/R$color;->white:I

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    const/high16 v19, 0x42340000    # 45.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mDensity:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 169
    const/high16 v19, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mPreviewPadding:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    invoke-virtual {v15}, Landroid/graphics/Paint;->descent()F

    move-result v20

    add-float v19, v19, v20

    invoke-virtual {v15}, Landroid/graphics/Paint;->ascent()F

    move-result v20

    sub-float v14, v19, v20

    .line 170
    .local v14, "previewSize":F
    new-instance v13, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v14

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v20, v14

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v21, v14

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    add-float v21, v21, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v22, v14

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v22, v22, v14

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 175
    .local v13, "previewRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/zte/extres/R$drawable;->fastscroll_label_zte_light:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 176
    .local v6, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 177
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct/range {p0 .. p0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getListIndexInCenter()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getItemTextThumbs(I)Ljava/lang/String;

    move-result-object v18

    .line 178
    .local v18, "thumbText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 179
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    move/from16 v19, v0

    if-ltz v19, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    .line 182
    .local v16, "previewTextWidth":F
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1, v13, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    sub-float v21, v14, v16

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    add-float v20, v20, v21

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v20, v20, v21

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mPreviewPadding:F

    move/from16 v22, v0

    add-float v21, v21, v22

    invoke-virtual {v15}, Landroid/graphics/Paint;->ascent()F

    move-result v22

    sub-float v21, v21, v22

    const/high16 v22, 0x3f800000    # 1.0f

    add-float v21, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 201
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v12    # "previewPaint":Landroid/graphics/Paint;
    .end local v13    # "previewRect":Landroid/graphics/RectF;
    .end local v14    # "previewSize":F
    .end local v15    # "previewTextPaint":Landroid/graphics/Paint;
    .end local v16    # "previewTextWidth":F
    .end local v18    # "thumbText":Ljava/lang/String;
    :cond_3
    :goto_3
    return-void

    .line 188
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v12    # "previewPaint":Landroid/graphics/Paint;
    .restart local v13    # "previewRect":Landroid/graphics/RectF;
    .restart local v14    # "previewSize":F
    .restart local v15    # "previewTextPaint":Landroid/graphics/Paint;
    .restart local v18    # "thumbText":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsScrolling:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    :cond_5
    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mShowPreviewNotOnScrollBar:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 191
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    .line 193
    .restart local v16    # "previewTextWidth":F
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1, v13, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 194
    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    sub-float v20, v14, v16

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    add-float v19, v19, v20

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v19, v19, v20

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mPreviewPadding:F

    move/from16 v21, v0

    add-float v20, v20, v21

    invoke-virtual {v15}, Landroid/graphics/Paint;->ascent()F

    move-result v21

    sub-float v20, v20, v21

    const/high16 v21, 0x3f800000    # 1.0f

    add-float v20, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHideScrollBar:Z

    .line 282
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 266
    iput p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewWidth:I

    .line 267
    iput p2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListViewHeight:I

    .line 268
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

    .line 272
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 261
    :goto_0
    const-string v0, "ZTEIndexFastScroller"

    const-string v2, "gengbin,onTouchEvent():nocase"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 262
    :cond_0
    :goto_1
    return v0

    .line 207
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    .line 211
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    if-eqz v2, :cond_1

    .line 212
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByPoint(F)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    .line 214
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    iget v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    invoke-interface {v2, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 215
    const-string v1, "ZTEIndexFastScroller"

    const-string v2, "gengbin,onTouchEvent():MotionEvent.ACTION_DOWN mTouchScroller=true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 218
    :cond_1
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    .line 219
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByListPos(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    .line 220
    const-string v0, "ZTEIndexFastScroller"

    const-string v2, "gengbin,onTouchEvent():MotionEvent.ACTION_DOWN mTouchScroller=false1"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_2
    const-string v0, "ZTEIndexFastScroller"

    const-string v2, "gengbin,onTouchEvent():MotionEvent.ACTION_DOWN mTouchScroller=false2"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    if-eqz v2, :cond_4

    .line 228
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByPoint(F)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    .line 230
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    iget v3, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I

    invoke-interface {v2, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 249
    :cond_3
    :goto_2
    const-string v0, "ZTEIndexFastScroller"

    const-string v2, "gengbin,onTouchEvent():MotionEvent.ACTION_MOVE"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 250
    goto/16 :goto_1

    .line 232
    :cond_4
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;

    invoke-direct {v3, p0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;-><init>(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)V

    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mGestureDetector:Landroid/view/GestureDetector;

    .line 246
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    .line 252
    :pswitch_2
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsShowPreview:Z

    .line 253
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsIndexing:Z

    .line 254
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V

    .line 255
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z

    if-nez v2, :cond_0

    .line 258
    const-string v0, "ZTEIndexFastScroller"

    const-string v2, "gengbin,onTouchEvent():MotionEvent.ACTION_UP"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 285
    instance-of v0, p1, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 286
    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    .line 287
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mSections:[Ljava/lang/String;

    .line 288
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAdapter:Landroid/widget/Adapter;

    .line 290
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 275
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mHideScrollBar:Z

    .line 276
    iget v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    if-nez v0, :cond_0

    .line 277
    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V

    .line 278
    :cond_0
    return-void
.end method
