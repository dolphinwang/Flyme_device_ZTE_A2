.class public Lcom/zte/mifavor/widget/PagerMainTab;
.super Landroid/widget/HorizontalScrollView;
.source "PagerMainTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/PagerMainTab$SavedState;,
        Lcom/zte/mifavor/widget/PagerMainTab$PageListener;,
        Lcom/zte/mifavor/widget/PagerMainTab$IconTabProvider;
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

.field private final pageListener:Lcom/zte/mifavor/widget/PagerMainTab$PageListener;

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

    sput-object v0, Lcom/zte/mifavor/widget/PagerMainTab;->ATTRS:[I

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
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/PagerMainTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/PagerMainTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v8, -0x50506

    const v7, -0xcd7422

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v2, Lcom/zte/mifavor/widget/PagerMainTab$PageListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zte/mifavor/widget/PagerMainTab$PageListener;-><init>(Lcom/zte/mifavor/widget/PagerMainTab;Lcom/zte/mifavor/widget/PagerMainTab$1;)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->pageListener:Lcom/zte/mifavor/widget/PagerMainTab$PageListener;

    .line 73
    iput v5, p0, Lcom/zte/mifavor/widget/PagerMainTab;->currentPosition:I

    .line 74
    const/4 v2, 0x0

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->currentPositionOffset:F

    .line 79
    iput v7, p0, Lcom/zte/mifavor/widget/PagerMainTab;->indicatorColor:I

    .line 80
    iput v7, p0, Lcom/zte/mifavor/widget/PagerMainTab;->underlineColor:I

    .line 81
    iput v8, p0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerColor:I

    .line 83
    iput-boolean v5, p0, Lcom/zte/mifavor/widget/PagerMainTab;->shouldExpand:Z

    .line 84
    iput-boolean v5, p0, Lcom/zte/mifavor/widget/PagerMainTab;->textAllCaps:Z

    .line 86
    const/16 v2, 0x34

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->scrollOffset:I

    .line 87
    const/16 v2, 0x8

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->indicatorHeight:I

    .line 88
    const/4 v2, 0x2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->underlineHeight:I

    .line 89
    const/16 v2, 0x1a

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerPadding:I

    .line 90
    const/16 v2, 0x18

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabPadding:I

    .line 91
    iput v4, p0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerWidth:I

    .line 93
    const/16 v2, 0x10

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTextSize:I

    .line 94
    iput v8, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTextColor:I

    .line 95
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTypeface:Landroid/graphics/Typeface;

    .line 96
    iput v5, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTypefaceStyle:I

    .line 98
    iput v5, p0, Lcom/zte/mifavor/widget/PagerMainTab;->lastScrollX:I

    .line 114
    invoke-virtual {p0, v4}, Lcom/zte/mifavor/widget/PagerMainTab;->setFillViewport(Z)V

    .line 115
    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/PagerMainTab;->setWillNotDraw(Z)V

    .line 117
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabsContainer:Landroid/widget/LinearLayout;

    .line 118
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/PagerMainTab;->addView(Landroid/view/View;)V

    .line 122
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 124
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->scrollOffset:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->scrollOffset:I

    .line 125
    iget v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->indicatorHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->indicatorHeight:I

    .line 126
    iget v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->underlineHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->underlineHeight:I

    .line 127
    iget v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerPadding:I

    .line 128
    iget v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabPadding:I

    .line 129
    iget v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerWidth:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerWidth:I

    .line 130
    const/4 v2, 0x2

    iget v3, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTextSize:I

    int-to-float v3, v3

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTextSize:I

    .line 134
    sget-object v2, Lcom/zte/mifavor/widget/PagerMainTab;->ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 136
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTextSize:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTextSize:I

    .line 137
    iget v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTextColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTextColor:I

    .line 139
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    sget-object v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 145
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsIndicatorColor:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerMainTab;->indicatorColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->indicatorColor:I

    .line 146
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsUnderlineColor:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerMainTab;->underlineColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->underlineColor:I

    .line 147
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsDividerColor:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerColor:I

    .line 148
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsIndicatorHeight:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerMainTab;->indicatorHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->indicatorHeight:I

    .line 149
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsUnderlineHeight:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerMainTab;->underlineHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->underlineHeight:I

    .line 150
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsDividerPadding:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerPadding:I

    .line 151
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsTabPaddingLeftRight:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabPadding:I

    .line 152
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 153
    sget v2, Lcom/zte/extres/R$drawable;->item_background_borderless_material:I

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabBackgroundResId:I

    .line 154
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsTabBackground:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabBackgroundResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabBackgroundResId:I

    .line 159
    :goto_0
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsShouldExpand:I

    iget-boolean v3, p0, Lcom/zte/mifavor/widget/PagerMainTab;->shouldExpand:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->shouldExpand:Z

    .line 160
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsScrollOffset:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerMainTab;->scrollOffset:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->scrollOffset:I

    .line 161
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsTextAllCaps:I

    iget-boolean v3, p0, Lcom/zte/mifavor/widget/PagerMainTab;->textAllCaps:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->textAllCaps:Z

    .line 163
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->rectPaint:Landroid/graphics/Paint;

    .line 166
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->rectPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerPaint:Landroid/graphics/Paint;

    .line 170
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 171
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 174
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 176
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->locale:Ljava/util/Locale;

    if-nez v2, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->locale:Ljava/util/Locale;

    .line 179
    :cond_0
    return-void

    .line 156
    :cond_1
    sget v2, Lcom/zte/extres/R$drawable;->item_background_transparent:I

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabBackgroundResId:I

    .line 157
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsTabBackground:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabBackgroundResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabBackgroundResId:I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/PagerMainTab;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/PagerMainTab;

    .prologue
    .line 49
    iget v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->currentPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/zte/mifavor/widget/PagerMainTab;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/PagerMainTab;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->currentPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/PagerMainTab;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/PagerMainTab;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/PagerMainTab;II)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/PagerMainTab;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/PagerMainTab;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$402(Lcom/zte/mifavor/widget/PagerMainTab;F)F
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/PagerMainTab;
    .param p1, "x1"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/PagerMainTab;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/PagerMainTab;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addIconTab(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "resId"    # I

    .prologue
    .line 250
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 251
    .local v0, "tab":Landroid/widget/ImageButton;
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 253
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/PagerMainTab;->addTab(ILandroid/view/View;)V

    .line 255
    return-void
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "tab"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    invoke-virtual {p2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 259
    new-instance v0, Lcom/zte/mifavor/widget/PagerMainTab$2;

    invoke-direct {v0, p0, p1}, Lcom/zte/mifavor/widget/PagerMainTab$2;-><init>(Lcom/zte/mifavor/widget/PagerMainTab;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabPadding:I

    iget v1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabPadding:I

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 267
    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/PagerMainTab;->setShouldExpand(Z)V

    .line 268
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 274
    check-cast v0, Landroid/widget/TextView;

    const v1, -0x99999a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabsContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->shouldExpand:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 277
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0
.end method

.method private addTextTab(ILjava/lang/String;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 240
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 241
    .local v0, "tab":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 243
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 245
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/PagerMainTab;->addTab(ILandroid/view/View;)V

    .line 246
    return-void
.end method

.method private scrollToChild(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 315
    iget v1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabCount:I

    if-nez v1, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int v0, v1, p2

    .line 321
    .local v0, "newScrollX":I
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 322
    :cond_2
    iget v1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->scrollOffset:I

    sub-int/2addr v0, v1

    .line 325
    :cond_3
    iget v1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->lastScrollX:I

    if-eq v0, v1, :cond_0

    .line 326
    iput v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->lastScrollX:I

    .line 327
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/mifavor/widget/PagerMainTab;->scrollTo(II)V

    goto :goto_0
.end method

.method private updateTabStyles()V
    .locals 5

    .prologue
    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabCount:I

    if-ge v0, v3, :cond_2

    .line 288
    iget-object v3, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 290
    .local v2, "v":Landroid/view/View;
    iget v3, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabBackgroundResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 292
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 294
    check-cast v1, Landroid/widget/TextView;

    .line 295
    .local v1, "tab":Landroid/widget/TextView;
    const/4 v3, 0x0

    iget v4, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTextSize:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 296
    iget-object v3, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTypeface:Landroid/graphics/Typeface;

    iget v4, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTypefaceStyle:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 297
    iget v3, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTextColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/PagerMainTab;->textAllCaps:Z

    if-eqz v3, :cond_0

    .line 302
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    .line 303
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 286
    .end local v1    # "tab":Landroid/widget/TextView;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    .restart local v1    # "tab":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/mifavor/widget/PagerMainTab;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 311
    .end local v1    # "tab":Landroid/widget/TextView;
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method public getDividerColor()I
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerPadding:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->indicatorColor:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->indicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->scrollOffset:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->shouldExpand:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabBackgroundResId:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabPadding:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->underlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->underlineHeight:I

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->textAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 202
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 204
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabCount:I

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabCount:I

    if-ge v0, v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/zte/mifavor/widget/PagerMainTab$IconTabProvider;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/widget/PagerMainTab$IconTabProvider;

    invoke-interface {v1, v0}, Lcom/zte/mifavor/widget/PagerMainTab$IconTabProvider;->getPageIconResId(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/PagerMainTab;->addIconTab(II)V

    .line 206
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/PagerMainTab;->addTextTab(ILjava/lang/String;)V

    goto :goto_1

    .line 216
    :cond_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->updateTabStyles()V

    .line 218
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/zte/mifavor/widget/PagerMainTab$1;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/widget/PagerMainTab$1;-><init>(Lcom/zte/mifavor/widget/PagerMainTab;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 236
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 334
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 335
    const-string v1, "chh"

    const-string v2, "onDraw"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/PagerMainTab;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/zte/mifavor/widget/PagerMainTab;->tabCount:I

    if-nez v1, :cond_1

    .line 410
    :cond_0
    return-void

    .line 341
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/PagerMainTab;->getHeight()I

    move-result v13

    .line 342
    .local v13, "height":I
    const-string v1, "chh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "height"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/mifavor/widget/PagerMainTab;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/zte/mifavor/widget/PagerMainTab;->underlineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 346
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/mifavor/widget/PagerMainTab;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/mifavor/widget/PagerMainTab;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/mifavor/widget/PagerMainTab;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/zte/mifavor/widget/PagerMainTab;->indicatorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/mifavor/widget/PagerMainTab;->tabsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/zte/mifavor/widget/PagerMainTab;->currentPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 357
    .local v10, "currentTab":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v15, v1

    .line 358
    .local v15, "lineLeft":F
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v0, v1

    move/from16 v16, v0

    .line 360
    .local v16, "lineRight":F
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/PagerMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$drawable;->tab_selected_zte:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 362
    .local v7, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 363
    .local v9, "bmpw":I
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 364
    .local v8, "bmph":I
    const-string v1, "chh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bmpw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v1, "chh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bmph"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    add-float v1, v16, v15

    int-to-float v2, v9

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v1, v2

    .line 368
    .local v11, "dLeft":F
    add-float v1, v16, v15

    int-to-float v2, v9

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v12, v1, v2

    .line 371
    .local v12, "dRight":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/zte/mifavor/widget/PagerMainTab;->currentPositionOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/zte/mifavor/widget/PagerMainTab;->currentPosition:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/zte/mifavor/widget/PagerMainTab;->tabCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/mifavor/widget/PagerMainTab;->tabsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/zte/mifavor/widget/PagerMainTab;->currentPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 374
    .local v17, "nextTab":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v0, v1

    move/from16 v18, v0

    .line 375
    .local v18, "nextTabLeft":F
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v0, v1

    move/from16 v19, v0

    .line 377
    .local v19, "nextTabRight":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/zte/mifavor/widget/PagerMainTab;->currentPositionOffset:F

    mul-float v1, v1, v18

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/mifavor/widget/PagerMainTab;->currentPositionOffset:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v15

    add-float v15, v1, v2

    .line 378
    move-object/from16 v0, p0

    iget v1, v0, Lcom/zte/mifavor/widget/PagerMainTab;->currentPositionOffset:F

    mul-float v1, v1, v19

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/mifavor/widget/PagerMainTab;->currentPositionOffset:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v16

    add-float v16, v1, v2

    .line 380
    sub-float v1, v16, v15

    int-to-float v2, v9

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v11, v1, v15

    .line 381
    sub-float v1, v16, v15

    int-to-float v2, v9

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v12, v1, v15

    .line 390
    .end local v17    # "nextTab":Landroid/view/View;
    .end local v18    # "nextTabLeft":F
    .end local v19    # "nextTabRight":F
    :cond_2
    sub-int v1, v13, v8

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v11, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 401
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/zte/mifavor/widget/PagerMainTab;->tabCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v14, v1, :cond_0

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/mifavor/widget/PagerMainTab;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 405
    .local v20, "tab":Landroid/view/View;
    const-string v1, "chh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tab.getRight()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v1, "chh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",dividerPadding"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerPadding:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerPadding:I

    add-int/lit8 v1, v1, -0x4

    int-to-float v3, v1

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerPadding:I

    add-int/lit8 v1, v1, 0x4

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 401
    add-int/lit8 v14, v14, 0x1

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 433
    if-nez p1, :cond_0

    .line 434
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/PagerMainTab;->scrollToChild(II)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 439
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 419
    iput p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->currentPosition:I

    .line 420
    iput p2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->currentPositionOffset:F

    .line 422
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/PagerMainTab;->scrollToChild(II)V

    .line 424
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->invalidate()V

    .line 426
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 429
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 443
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 450
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 453
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 671
    move-object v0, p1

    check-cast v0, Lcom/zte/mifavor/widget/PagerMainTab$SavedState;

    .line 672
    .local v0, "savedState":Lcom/zte/mifavor/widget/PagerMainTab$SavedState;
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/PagerMainTab$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 673
    iget v1, v0, Lcom/zte/mifavor/widget/PagerMainTab$SavedState;->currentPosition:I

    iput v1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->currentPosition:I

    .line 674
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->requestLayout()V

    .line 675
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 679
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 680
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/zte/mifavor/widget/PagerMainTab$SavedState;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/PagerMainTab$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 681
    .local v0, "savedState":Lcom/zte/mifavor/widget/PagerMainTab$SavedState;
    iget v2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->currentPosition:I

    iput v2, v0, Lcom/zte/mifavor/widget/PagerMainTab$SavedState;->currentPosition:I

    .line 682
    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 0
    .param p1, "textAllCaps"    # Z

    .prologue
    .line 620
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->textAllCaps:Z

    .line 621
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 181
    iput p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->underlineColor:I

    .line 182
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->invalidate()V

    .line 183
    return-void
.end method

.method public setClickableForAllTab(Z)V
    .locals 2
    .param p1, "isTrue"    # Z

    .prologue
    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_0
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 413
    iput p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->currentPosition:I

    .line 414
    iget v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->currentPosition:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/PagerMainTab;->scrollToChild(II)V

    .line 415
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "dividerColor"    # I

    .prologue
    .line 566
    iput p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerColor:I

    .line 567
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->invalidate()V

    .line 568
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerColor:I

    .line 572
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->invalidate()V

    .line 573
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "dividerPaddingPx"    # I

    .prologue
    .line 589
    iput p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->dividerPadding:I

    .line 590
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->invalidate()V

    .line 591
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "indicatorColor"    # I

    .prologue
    .line 529
    iput p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->indicatorColor:I

    .line 530
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->invalidate()V

    .line 531
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->indicatorColor:I

    .line 535
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->invalidate()V

    .line 536
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .param p1, "indicatorLineHeightPx"    # I

    .prologue
    .line 543
    iput p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->indicatorHeight:I

    .line 544
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->invalidate()V

    .line 545
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 198
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .param p1, "scrollOffsetPx"    # I

    .prologue
    .line 598
    iput p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->scrollOffset:I

    .line 599
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->invalidate()V

    .line 600
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0
    .param p1, "shouldExpand"    # Z

    .prologue
    .line 607
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->shouldExpand:Z

    .line 608
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->requestLayout()V

    .line 609
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 653
    iput p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabBackgroundResId:I

    .line 654
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0
    .param p1, "paddingPx"    # I

    .prologue
    .line 661
    iput p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabPadding:I

    .line 662
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->updateTabStyles()V

    .line 663
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 633
    iput p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTextColor:I

    .line 634
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->updateTabStyles()V

    .line 635
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTextColor:I

    .line 639
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->updateTabStyles()V

    .line 640
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSizePx"    # I

    .prologue
    .line 624
    iput p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTextSize:I

    .line 625
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->updateTabStyles()V

    .line 626
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    .line 647
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTypeface:Landroid/graphics/Typeface;

    .line 648
    iput p2, p0, Lcom/zte/mifavor/widget/PagerMainTab;->tabTypefaceStyle:I

    .line 649
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->updateTabStyles()V

    .line 650
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .param p1, "underlineColor"    # I

    .prologue
    .line 552
    iput p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->underlineColor:I

    .line 553
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->invalidate()V

    .line 554
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->underlineColor:I

    .line 558
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->invalidate()V

    .line 559
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0
    .param p1, "underlineHeightPx"    # I

    .prologue
    .line 580
    iput p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->underlineHeight:I

    .line 581
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->invalidate()V

    .line 582
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerMainTab;->pager:Landroid/support/v4/view/ViewPager;

    .line 187
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab;->pageListener:Lcom/zte/mifavor/widget/PagerMainTab$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 193
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerMainTab;->notifyDataSetChanged()V

    .line 194
    return-void
.end method
