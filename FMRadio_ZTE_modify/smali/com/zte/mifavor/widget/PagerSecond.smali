.class public Lcom/zte/mifavor/widget/PagerSecond;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSecond.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/PagerSecond$SavedState;,
        Lcom/zte/mifavor/widget/PagerSecond$PageListener;,
        Lcom/zte/mifavor/widget/PagerSecond$IconTabProvider;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private currentPosition:I

.field private currentPositionOffset:F

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field public delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private dividerColor:I

.field private dividerPadding:I

.field private dividerPaint:Landroid/graphics/Paint;

.field private dividerWidth:I

.field private expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private indicatorColor:I

.field private indicatorHeight:I

.field private lastScrollX:I

.field private locale:Ljava/util/Locale;

.field private final pageListener:Lcom/zte/mifavor/widget/PagerSecond$PageListener;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollOffset:I

.field private shouldExpand:Z

.field private tabBackgroundResId:I

.field private tabCount:I

.field private tabPadding:I

.field private tabTextColor:I

.field private tabTextSize:I

.field private tabTypeface:Landroid/graphics/Typeface;

.field private tabTypefaceStyle:I

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private textAllCaps:Z

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/mifavor/widget/PagerSecond;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/PagerSecond;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/PagerSecond;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v2, Lcom/zte/mifavor/widget/PagerSecond$PageListener;

    invoke-direct {v2, p0, v3}, Lcom/zte/mifavor/widget/PagerSecond$PageListener;-><init>(Lcom/zte/mifavor/widget/PagerSecond;Lcom/zte/mifavor/widget/PagerSecond$1;)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->pageListener:Lcom/zte/mifavor/widget/PagerSecond$PageListener;

    .line 73
    iput v5, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    .line 74
    const/4 v2, 0x0

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    .line 79
    const v2, -0xcd7422

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorColor:I

    .line 80
    const v2, -0x161617

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineColor:I

    .line 81
    const v2, -0x373738

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    .line 83
    iput-boolean v5, p0, Lcom/zte/mifavor/widget/PagerSecond;->shouldExpand:Z

    .line 84
    iput-boolean v5, p0, Lcom/zte/mifavor/widget/PagerSecond;->textAllCaps:Z

    .line 86
    const/16 v2, 0x34

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    .line 87
    iput v7, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    .line 88
    iput v7, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    .line 89
    const/4 v2, 0x5

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    .line 90
    const/16 v2, 0x18

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    .line 91
    iput v4, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerWidth:I

    .line 93
    const/16 v2, 0xc

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextSize:I

    .line 94
    const v2, -0x99999a

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextColor:I

    .line 95
    iput-object v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTypeface:Landroid/graphics/Typeface;

    .line 96
    iput v5, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTypefaceStyle:I

    .line 98
    iput v5, p0, Lcom/zte/mifavor/widget/PagerSecond;->lastScrollX:I

    .line 101
    sget v2, Lcom/zte/extres/R$drawable;->item_background_borderless_material:I

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    .line 115
    invoke-virtual {p0, v4}, Lcom/zte/mifavor/widget/PagerSecond;->setFillViewport(Z)V

    .line 116
    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/PagerSecond;->setWillNotDraw(Z)V

    .line 118
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    .line 119
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 120
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/PagerSecond;->addView(Landroid/view/View;)V

    .line 123
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 125
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    .line 126
    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    .line 127
    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    .line 128
    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    .line 129
    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    .line 130
    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerWidth:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerWidth:I

    .line 131
    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextSize:I

    int-to-float v2, v2

    invoke-static {v7, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextSize:I

    .line 135
    sget-object v2, Lcom/zte/mifavor/widget/PagerSecond;->ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 137
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextSize:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextSize:I

    .line 138
    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextColor:I

    .line 140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    sget-object v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 146
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsIndicatorColor:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorColor:I

    .line 147
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsUnderlineColor:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineColor:I

    .line 148
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsDividerColor:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    .line 149
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsIndicatorHeight:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    .line 150
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsUnderlineHeight:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    .line 151
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsDividerPadding:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    .line 152
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsTabPaddingLeftRight:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    .line 153
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsTabBackground:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    .line 154
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsShouldExpand:I

    iget-boolean v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->shouldExpand:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->shouldExpand:Z

    .line 155
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsScrollOffset:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    .line 156
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsTextAllCaps:I

    iget-boolean v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->textAllCaps:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->textAllCaps:Z

    .line 158
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    .line 161
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 162
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPaint:Landroid/graphics/Paint;

    .line 165
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 166
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 169
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 171
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->locale:Ljava/util/Locale;

    if-nez v2, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->locale:Ljava/util/Locale;

    .line 174
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/PagerSecond;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/PagerSecond;

    .prologue
    .line 49
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/zte/mifavor/widget/PagerSecond;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/PagerSecond;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/PagerSecond;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/PagerSecond;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/PagerSecond;II)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/PagerSecond;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/PagerSecond;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$402(Lcom/zte/mifavor/widget/PagerSecond;F)F
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/PagerSecond;
    .param p1, "x1"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/PagerSecond;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/PagerSecond;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addIconTab(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "resId"    # I

    .prologue
    .line 248
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 249
    .local v0, "tab":Landroid/widget/ImageButton;
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 251
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/PagerSecond;->addTab(ILandroid/view/View;)V

    .line 253
    return-void
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "tab"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 256
    invoke-virtual {p2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 257
    new-instance v0, Lcom/zte/mifavor/widget/PagerSecond$2;

    invoke-direct {v0, p0, p1}, Lcom/zte/mifavor/widget/PagerSecond$2;-><init>(Lcom/zte/mifavor/widget/PagerSecond;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 265
    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/PagerSecond;->setShouldExpand(Z)V

    .line 266
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 272
    check-cast v0, Landroid/widget/TextView;

    const v1, -0x99999a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->shouldExpand:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 275
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0
.end method

.method private addTextTab(ILjava/lang/String;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 238
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 239
    .local v0, "tab":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 241
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 243
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/PagerSecond;->addTab(ILandroid/view/View;)V

    .line 244
    return-void
.end method

.method private scrollToChild(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 308
    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    if-nez v1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int v0, v1, p2

    .line 314
    .local v0, "newScrollX":I
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 315
    :cond_2
    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    sub-int/2addr v0, v1

    .line 318
    :cond_3
    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->lastScrollX:I

    if-eq v0, v1, :cond_0

    .line 319
    iput v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->lastScrollX:I

    .line 320
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/mifavor/widget/PagerSecond;->scrollTo(II)V

    goto :goto_0
.end method

.method private updateTabStyles()V
    .locals 5

    .prologue
    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    if-ge v0, v3, :cond_2

    .line 281
    iget-object v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 283
    .local v2, "v":Landroid/view/View;
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 285
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 287
    check-cast v1, Landroid/widget/TextView;

    .line 288
    .local v1, "tab":Landroid/widget/TextView;
    const/4 v3, 0x0

    iget v4, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextSize:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 289
    iget-object v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTypeface:Landroid/graphics/Typeface;

    iget v4, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTypefaceStyle:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 290
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->textAllCaps:Z

    if-eqz v3, :cond_0

    .line 295
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    .line 296
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 279
    .end local v1    # "tab":Landroid/widget/TextView;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    .restart local v1    # "tab":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/mifavor/widget/PagerSecond;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 304
    .end local v1    # "tab":Landroid/widget/TextView;
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method public getDividerColor()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorColor:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->shouldExpand:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->textAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 202
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    if-ge v0, v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/zte/mifavor/widget/PagerSecond$IconTabProvider;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/widget/PagerSecond$IconTabProvider;

    invoke-interface {v1, v0}, Lcom/zte/mifavor/widget/PagerSecond$IconTabProvider;->getPageIconResId(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/PagerSecond;->addIconTab(II)V

    .line 204
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/PagerSecond;->addTextTab(ILjava/lang/String;)V

    goto :goto_1

    .line 214
    :cond_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    .line 216
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/zte/mifavor/widget/PagerSecond$1;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/widget/PagerSecond$1;-><init>(Lcom/zte/mifavor/widget/PagerSecond;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 234
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 327
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 328
    const-string v1, "chh"

    const-string v3, "onDraw"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/PagerSecond;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    if-nez v1, :cond_1

    .line 402
    :cond_0
    return-void

    .line 334
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/PagerSecond;->getHeight()I

    move-result v12

    .line 335
    .local v12, "height":I
    const-string v1, "chh"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "height"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/mifavor/widget/PagerSecond;->underlineColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 339
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 350
    .local v11, "currentTab":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v2, v1

    .line 351
    .local v2, "lineLeft":F
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v4, v1

    .line 364
    .local v4, "lineRight":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 367
    .local v14, "nextTab":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v15, v1

    .line 368
    .local v15, "nextTabLeft":F
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v0, v1

    move/from16 v16, v0

    .line 370
    .local v16, "nextTabRight":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    mul-float/2addr v1, v15

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    sub-float/2addr v3, v5

    mul-float/2addr v3, v2

    add-float v2, v1, v3

    .line 371
    move-object/from16 v0, p0

    iget v1, v0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    mul-float v1, v1, v16

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    sub-float/2addr v3, v5

    mul-float/2addr v3, v4

    add-float v4, v1, v3

    .line 379
    .end local v14    # "nextTab":Landroid/view/View;
    .end local v15    # "nextTabLeft":F
    .end local v16    # "nextTabRight":F
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    sub-int v1, v12, v1

    int-to-float v3, v1

    int-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 394
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v13, v1, :cond_0

    .line 395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 396
    .local v17, "tab":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    int-to-float v7, v1

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v8, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    sub-int v1, v12, v1

    int-to-float v9, v1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 394
    add-int/lit8 v13, v13, 0x1

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 620
    move-object v0, p1

    check-cast v0, Lcom/zte/mifavor/widget/PagerSecond$SavedState;

    .line 621
    .local v0, "savedState":Lcom/zte/mifavor/widget/PagerSecond$SavedState;
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/PagerSecond$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 622
    iget v1, v0, Lcom/zte/mifavor/widget/PagerSecond$SavedState;->currentPosition:I

    iput v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    .line 623
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->requestLayout()V

    .line 624
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 628
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 629
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/zte/mifavor/widget/PagerSecond$SavedState;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/PagerSecond$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 630
    .local v0, "savedState":Lcom/zte/mifavor/widget/PagerSecond$SavedState;
    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    iput v2, v0, Lcom/zte/mifavor/widget/PagerSecond$SavedState;->currentPosition:I

    .line 631
    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 0
    .param p1, "textAllCaps"    # Z

    .prologue
    .line 569
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->textAllCaps:Z

    .line 570
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineColor:I

    .line 177
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 178
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 195
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    .line 196
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/PagerSecond;->scrollToChild(II)V

    .line 197
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "dividerColor"    # I

    .prologue
    .line 515
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    .line 516
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 517
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    .line 521
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 522
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "dividerPaddingPx"    # I

    .prologue
    .line 538
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    .line 539
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 540
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "indicatorColor"    # I

    .prologue
    .line 478
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorColor:I

    .line 479
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 480
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorColor:I

    .line 484
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 485
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .param p1, "indicatorLineHeightPx"    # I

    .prologue
    .line 492
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    .line 493
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 494
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 193
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .param p1, "scrollOffsetPx"    # I

    .prologue
    .line 547
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    .line 548
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 549
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0
    .param p1, "shouldExpand"    # Z

    .prologue
    .line 556
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->shouldExpand:Z

    .line 557
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->requestLayout()V

    .line 558
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 602
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    .line 603
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0
    .param p1, "paddingPx"    # I

    .prologue
    .line 610
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    .line 611
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    .line 612
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 582
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextColor:I

    .line 583
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    .line 584
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextColor:I

    .line 588
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    .line 589
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSizePx"    # I

    .prologue
    .line 573
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextSize:I

    .line 574
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    .line 575
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    .line 596
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTypeface:Landroid/graphics/Typeface;

    .line 597
    iput p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTypefaceStyle:I

    .line 598
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    .line 599
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .param p1, "underlineColor"    # I

    .prologue
    .line 501
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineColor:I

    .line 502
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 503
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineColor:I

    .line 507
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 508
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0
    .param p1, "underlineHeightPx"    # I

    .prologue
    .line 529
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    .line 530
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 531
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroid/support/v4/view/ViewPager;

    .line 182
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->pageListener:Lcom/zte/mifavor/widget/PagerSecond$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 188
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->notifyDataSetChanged()V

    .line 189
    return-void
.end method
