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

.field private tabTextColorFc:I

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
    .line 57
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
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/PagerSecond;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/PagerSecond;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v8, 0xc

    const/high16 v7, -0x1000000

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v2, Lcom/zte/mifavor/widget/PagerSecond$PageListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zte/mifavor/widget/PagerSecond$PageListener;-><init>(Lcom/zte/mifavor/widget/PagerSecond;Lcom/zte/mifavor/widget/PagerSecond$1;)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->pageListener:Lcom/zte/mifavor/widget/PagerSecond$PageListener;

    .line 74
    iput v5, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    .line 75
    const/4 v2, 0x0

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    .line 80
    const v2, -0xcd7422

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorColor:I

    .line 81
    const v2, -0xb0b0c

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineColor:I

    .line 82
    const/high16 v2, 0x1a000000

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    .line 84
    iput-boolean v5, p0, Lcom/zte/mifavor/widget/PagerSecond;->shouldExpand:Z

    .line 85
    iput-boolean v5, p0, Lcom/zte/mifavor/widget/PagerSecond;->textAllCaps:Z

    .line 87
    const/16 v2, 0x34

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    .line 88
    const/4 v2, 0x2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    .line 89
    const/4 v2, 0x4

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    .line 90
    iput v8, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    .line 91
    const/16 v2, 0x18

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    .line 92
    iput v4, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerWidth:I

    .line 94
    iput v8, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextSize:I

    .line 95
    iput v7, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextColorFc:I

    .line 96
    iput v7, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextColor:I

    .line 97
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTypeface:Landroid/graphics/Typeface;

    .line 98
    iput v5, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTypefaceStyle:I

    .line 100
    iput v5, p0, Lcom/zte/mifavor/widget/PagerSecond;->lastScrollX:I

    .line 116
    invoke-virtual {p0, v4}, Lcom/zte/mifavor/widget/PagerSecond;->setFillViewport(Z)V

    .line 117
    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/PagerSecond;->setWillNotDraw(Z)V

    .line 119
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    .line 120
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/PagerSecond;->addView(Landroid/view/View;)V

    .line 124
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 126
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    .line 127
    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    .line 128
    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    .line 129
    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    .line 130
    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    .line 131
    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerWidth:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerWidth:I

    .line 146
    sget-object v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 147
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$color;->mfv_common_actb_ab:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorColor:I

    .line 148
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsIndicatorColor:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorColor:I

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$color;->mfv_common_actb:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineColor:I

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$color;->mfv_common_actb_txt_fc:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextColorFc:I

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$color;->mfv_common_actb_txt:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextColor:I

    .line 152
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsUnderlineColor:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineColor:I

    .line 153
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsDividerColor:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    .line 154
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsIndicatorHeight:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    .line 155
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsUnderlineHeight:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    .line 156
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsDividerPadding:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    .line 157
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsTabPaddingLeftRight:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    .line 158
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 159
    sget v2, Lcom/zte/extres/R$drawable;->item_background_borderless_material:I

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    .line 160
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsTabBackground:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    .line 165
    :goto_0
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsShouldExpand:I

    iget-boolean v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->shouldExpand:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->shouldExpand:Z

    .line 166
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsScrollOffset:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    .line 167
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsTextAllCaps:I

    iget-boolean v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->textAllCaps:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->textAllCaps:Z

    .line 169
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    .line 172
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 173
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPaint:Landroid/graphics/Paint;

    .line 176
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 177
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 180
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 182
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->locale:Ljava/util/Locale;

    if-nez v2, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->locale:Ljava/util/Locale;

    .line 186
    :cond_0
    return-void

    .line 162
    :cond_1
    sget v2, Lcom/zte/extres/R$drawable;->item_background_transparent:I

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    .line 163
    sget v2, Lcom/zte/extres/R$styleable;->PagerSlidingTabStrip_pstsTabBackground:I

    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/PagerSecond;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/PagerSecond;

    .prologue
    .line 50
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/zte/mifavor/widget/PagerSecond;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/PagerSecond;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/PagerSecond;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/PagerSecond;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/PagerSecond;II)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/PagerSecond;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/PagerSecond;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$402(Lcom/zte/mifavor/widget/PagerSecond;F)F
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/PagerSecond;
    .param p1, "x1"    # F

    .prologue
    .line 50
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/PagerSecond;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/PagerSecond;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/mifavor/widget/PagerSecond;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/PagerSecond;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    return-void
.end method

.method private addIconTab(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "resId"    # I

    .prologue
    .line 261
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 262
    .local v0, "tab":Landroid/widget/ImageButton;
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 264
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/PagerSecond;->addTab(ILandroid/view/View;)V

    .line 266
    return-void
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "tab"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 269
    invoke-virtual {p2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 270
    new-instance v0, Lcom/zte/mifavor/widget/PagerSecond$2;

    invoke-direct {v0, p0, p1}, Lcom/zte/mifavor/widget/PagerSecond$2;-><init>(Lcom/zte/mifavor/widget/PagerSecond;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 277
    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/PagerSecond;->setShouldExpand(Z)V

    .line 278
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 279
    if-nez p1, :cond_1

    move-object v0, p2

    .line 280
    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, -0x1f000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v0, p2

    .line 282
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 290
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->shouldExpand:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :goto_1
    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 291
    return-void

    :cond_1
    move-object v0, p2

    .line 284
    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, -0x4e000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v0, p2

    .line 286
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_1
.end method

.method private addTextTab(ILjava/lang/String;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 251
    .local v0, "tab":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 253
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 254
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 256
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/PagerSecond;->addTab(ILandroid/view/View;)V

    .line 257
    return-void
.end method

.method private scrollToChild(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 331
    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    if-nez v1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int v0, v1, p2

    .line 337
    .local v0, "newScrollX":I
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 338
    :cond_2
    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    sub-int/2addr v0, v1

    .line 341
    :cond_3
    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->lastScrollX:I

    if-eq v0, v1, :cond_0

    .line 342
    iput v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->lastScrollX:I

    .line 343
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/mifavor/widget/PagerSecond;->scrollTo(II)V

    goto :goto_0
.end method

.method private updateTabStyles()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    if-ge v0, v3, :cond_2

    .line 297
    iget-object v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 299
    .local v2, "v":Landroid/view/View;
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 301
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 302
    check-cast v1, Landroid/widget/TextView;

    .line 303
    .local v1, "tab":Landroid/widget/TextView;
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    if-ne v3, v0, :cond_1

    .line 304
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 305
    const/4 v3, 0x1

    invoke-virtual {v1, v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 306
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextColorFc:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    .end local v1    # "tab":Landroid/widget/TextView;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    .restart local v1    # "tab":Landroid/widget/TextView;
    :cond_1
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 310
    const/4 v3, 0x0

    invoke-virtual {v1, v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 311
    iget v3, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 327
    .end local v1    # "tab":Landroid/widget/TextView;
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method public getDividerColor()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorColor:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->shouldExpand:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 648
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->textAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 212
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 214
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    if-ge v0, v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/zte/mifavor/widget/PagerSecond$IconTabProvider;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/widget/PagerSecond$IconTabProvider;

    invoke-interface {v1, v0}, Lcom/zte/mifavor/widget/PagerSecond$IconTabProvider;->getPageIconResId(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/PagerSecond;->addIconTab(II)V

    .line 216
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
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

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    .line 228
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/zte/mifavor/widget/PagerSecond$1;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/widget/PagerSecond$1;-><init>(Lcom/zte/mifavor/widget/PagerSecond;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 246
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 350
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 351
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    if-nez v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getHeight()I

    move-result v7

    .line 358
    .local v7, "height":I
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 362
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 365
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 366
    .local v6, "currentTab":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v8, v0

    .line 367
    .local v8, "lineLeft":F
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    .line 369
    .local v3, "lineRight":F
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 371
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 372
    .local v9, "nextTab":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v10, v0

    .line 373
    .local v10, "nextTabLeft":F
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v11, v0

    .line 375
    .local v11, "nextTabRight":F
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    mul-float/2addr v0, v10

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    sub-float v2, v12, v2

    mul-float/2addr v2, v8

    add-float v1, v0, v2

    .line 376
    .end local v8    # "lineLeft":F
    .local v1, "lineLeft":F
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    mul-float/2addr v0, v11

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    sub-float v2, v12, v2

    mul-float/2addr v2, v3

    add-float v3, v0, v2

    .line 379
    .end local v9    # "nextTab":Landroid/view/View;
    .end local v10    # "nextTabLeft":F
    .end local v11    # "nextTabRight":F
    :goto_1
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/zte/mifavor/widget/PagerSecond;->rectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 381
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .end local v1    # "lineLeft":F
    .restart local v8    # "lineLeft":F
    :cond_2
    move v1, v8

    .end local v8    # "lineLeft":F
    .restart local v1    # "lineLeft":F
    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    .line 406
    if-nez p1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/PagerSecond;->scrollToChild(II)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 412
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 390
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    .line 391
    iput p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F

    .line 393
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/PagerSecond;->scrollToChild(II)V

    .line 395
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 397
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    .line 401
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 416
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 423
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    .line 427
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 653
    move-object v0, p1

    check-cast v0, Lcom/zte/mifavor/widget/PagerSecond$SavedState;

    .line 654
    .local v0, "savedState":Lcom/zte/mifavor/widget/PagerSecond$SavedState;
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/PagerSecond$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 655
    iget v1, v0, Lcom/zte/mifavor/widget/PagerSecond$SavedState;->currentPosition:I

    iput v1, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    .line 656
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->requestLayout()V

    .line 657
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 661
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 662
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/zte/mifavor/widget/PagerSecond$SavedState;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/PagerSecond$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 663
    .local v0, "savedState":Lcom/zte/mifavor/widget/PagerSecond$SavedState;
    iget v2, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    iput v2, v0, Lcom/zte/mifavor/widget/PagerSecond$SavedState;->currentPosition:I

    .line 664
    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 0
    .param p1, "textAllCaps"    # Z

    .prologue
    .line 596
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->textAllCaps:Z

    .line 597
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineColor:I

    .line 189
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 190
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    .line 208
    iget v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/PagerSecond;->scrollToChild(II)V

    .line 209
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "dividerColor"    # I

    .prologue
    .line 542
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    .line 543
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 544
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerColor:I

    .line 548
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 549
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "dividerPaddingPx"    # I

    .prologue
    .line 565
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->dividerPadding:I

    .line 566
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 567
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "indicatorColor"    # I

    .prologue
    .line 505
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorColor:I

    .line 506
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 507
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorColor:I

    .line 511
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 512
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .param p1, "indicatorLineHeightPx"    # I

    .prologue
    .line 519
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->indicatorHeight:I

    .line 520
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 521
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 205
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .param p1, "scrollOffsetPx"    # I

    .prologue
    .line 574
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->scrollOffset:I

    .line 575
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 576
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0
    .param p1, "shouldExpand"    # Z

    .prologue
    .line 583
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->shouldExpand:Z

    .line 584
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->requestLayout()V

    .line 585
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 635
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabBackgroundResId:I

    .line 636
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0
    .param p1, "paddingPx"    # I

    .prologue
    .line 643
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabPadding:I

    .line 644
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    .line 645
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 609
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextColor:I

    .line 610
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    .line 611
    return-void
.end method

.method public setTextColor(II)V
    .locals 0
    .param p1, "textColor1"    # I
    .param p2, "textColor2"    # I

    .prologue
    .line 614
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextColor:I

    .line 615
    iput p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextColorFc:I

    .line 616
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    .line 617
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextColor:I

    .line 621
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    .line 622
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSizeSp"    # I

    .prologue
    .line 600
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTextSize:I

    .line 601
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    .line 602
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    .line 629
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTypeface:Landroid/graphics/Typeface;

    .line 630
    iput p2, p0, Lcom/zte/mifavor/widget/PagerSecond;->tabTypefaceStyle:I

    .line 631
    invoke-direct {p0}, Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V

    .line 632
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .param p1, "underlineColor"    # I

    .prologue
    .line 528
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineColor:I

    .line 529
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 530
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineColor:I

    .line 534
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 535
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0
    .param p1, "underlineHeightPx"    # I

    .prologue
    .line 556
    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->underlineHeight:I

    .line 557
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 558
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroid/support/v4/view/ViewPager;

    .line 194
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond;->pageListener:Lcom/zte/mifavor/widget/PagerSecond$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 200
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond;->notifyDataSetChanged()V

    .line 201
    return-void
.end method
