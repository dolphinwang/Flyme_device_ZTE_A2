.class Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;
.super Landroid/widget/TextView;
.source "TextViewWithCircularIndicator.java"


# static fields
.field private static final SELECTED_CIRCLE_ALPHA:I = 0x3c


# instance fields
.field private mCircleColor:I

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mDrawIndicator:Z

.field private final mItemIsSelectedText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, -0x1

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->mCirclePaint:Landroid/graphics/Paint;

    .line 59
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/zte/extres/R$styleable;->DatePicker:[I

    invoke-virtual {v3, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/zte/extres/R$styleable;->DatePicker_yearListItemTextAppearance:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 62
    .local v2, "resId":I
    if-eq v2, v5, :cond_0

    .line 63
    invoke-virtual {p0, p1, v2}, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->setTextAppearance(Landroid/content/Context;I)V

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 67
    .local v1, "res":Landroid/content/res/Resources;
    sget v3, Lcom/zte/extres/R$string;->item_is_selected:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->mItemIsSelectedText:Ljava/lang/String;

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->init()V

    .line 72
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 75
    iget-object v0, p0, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->mCirclePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 76
    iget-object v0, p0, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget-object v0, p0, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 78
    iget-object v0, p0, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 108
    .local v0, "itemText":Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->mDrawIndicator:Z

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->mItemIsSelectedText:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .end local v0    # "itemText":Ljava/lang/CharSequence;
    :cond_0
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 97
    iget-boolean v3, p0, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->mDrawIndicator:Z

    if-eqz v3, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->getWidth()I

    move-result v2

    .line 99
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->getHeight()I

    move-result v0

    .line 100
    .local v0, "height":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 101
    .local v1, "radius":I
    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    int-to-float v5, v1

    iget-object v6, p0, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 103
    .end local v0    # "height":I
    .end local v1    # "radius":I
    .end local v2    # "width":I
    :cond_0
    return-void
.end method

.method public setCircleColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 82
    iget v0, p0, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->mCircleColor:I

    if-eq p1, v0, :cond_0

    .line 83
    iput p1, p0, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->mCircleColor:I

    .line 84
    iget-object v0, p0, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 86
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->requestLayout()V

    .line 88
    :cond_0
    return-void
.end method

.method public setDrawIndicator(Z)V
    .locals 0
    .param p1, "drawIndicator"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/TextViewWithCircularIndicator;->mDrawIndicator:Z

    .line 92
    return-void
.end method
