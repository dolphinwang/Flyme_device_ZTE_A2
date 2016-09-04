.class public Lcom/zte/mifavor/widget/CharacterView;
.super Landroid/widget/QuickContactBadge;
.source "CharacterView.java"


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x232324

.field private static final DEFAULT_BORDER_COLOR:I = -0x232324

.field private static final DEFAULT_BORDER_WIDTH:I = 0x0

.field private static final DEFAULT_TITLE:Ljava/lang/String; = "A"

.field private static final DEFAULT_TITLE_COLOR:I = -0x1

.field private static final DEFAULT_TITLE_SIZE:F = 22.0f

.field private static final DEFAULT_VIEW_SIZE:I = 0x60

.field private static final LETTER_MAX_COUNT:I = 0x2

.field private static final TYPE_CIRCLE:I = 0x0

.field private static final TYPE_RECT:I = 0x1


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mFont:Landroid/graphics/Typeface;

.field private mInnerRectF:Landroid/graphics/RectF;

.field private mTitleColor:I

.field private mTitleSize:F

.field private mTitleText:Ljava/lang/String;

.field private mTitleTextPaint:Landroid/text/TextPaint;

.field private mType:I

.field private mViewSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, -0x232324

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleColor:I

    .line 28
    iput v2, p0, Lcom/zte/mifavor/widget/CharacterView;->mBackgroundColor:I

    .line 29
    const-string v0, "A"

    iput-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleText:Ljava/lang/String;

    .line 30
    const/high16 v0, 0x41b00000    # 22.0f

    iput v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleSize:F

    .line 32
    iput v2, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderColor:I

    .line 33
    iput v1, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderWidth:I

    .line 48
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mFont:Landroid/graphics/Typeface;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/CharacterView;->init(Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v2, -0x232324

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleColor:I

    .line 28
    iput v2, p0, Lcom/zte/mifavor/widget/CharacterView;->mBackgroundColor:I

    .line 29
    const-string v0, "A"

    iput-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleText:Ljava/lang/String;

    .line 30
    const/high16 v0, 0x41b00000    # 22.0f

    iput v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleSize:F

    .line 32
    iput v2, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderColor:I

    .line 33
    iput v1, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderWidth:I

    .line 48
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mFont:Landroid/graphics/Typeface;

    .line 57
    invoke-direct {p0, p2, v1}, Lcom/zte/mifavor/widget/CharacterView;->init(Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const v1, -0x232324

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleColor:I

    .line 28
    iput v1, p0, Lcom/zte/mifavor/widget/CharacterView;->mBackgroundColor:I

    .line 29
    const-string v0, "A"

    iput-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleText:Ljava/lang/String;

    .line 30
    const/high16 v0, 0x41b00000    # 22.0f

    iput v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleSize:F

    .line 32
    iput v1, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderColor:I

    .line 33
    iput v2, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderWidth:I

    .line 48
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mFont:Landroid/graphics/Typeface;

    .line 62
    invoke-direct {p0, p2, p3}, Lcom/zte/mifavor/widget/CharacterView;->init(Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    .line 67
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleTextPaint:Landroid/text/TextPaint;

    .line 68
    iget-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFlags(I)V

    .line 69
    iget-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/zte/mifavor/widget/CharacterView;->mFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 70
    iget-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 71
    iget-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 72
    iget-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 73
    iget-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 78
    iget-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 79
    iget-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zte/mifavor/widget/CharacterView;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderPaint:Landroid/graphics/Paint;

    .line 85
    iget-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mInnerRectF:Landroid/graphics/RectF;

    .line 91
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderRect:Landroid/graphics/RectF;

    .line 92
    return-void
.end method

.method private invalidatePaints()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zte/mifavor/widget/CharacterView;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    return-void
.end method

.method private invalidateTextPaints()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/zte/mifavor/widget/CharacterView;->mFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 96
    iget-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 97
    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mBackgroundColor:I

    return v0
.end method

.method public getTitleSize()F
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleSize:F

    return v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleText:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 118
    iget-object v4, p0, Lcom/zte/mifavor/widget/CharacterView;->mInnerRectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/zte/mifavor/widget/CharacterView;->mViewSize:I

    int-to-float v5, v5

    iget v6, p0, Lcom/zte/mifavor/widget/CharacterView;->mViewSize:I

    int-to-float v6, v6

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 119
    iget-object v4, p0, Lcom/zte/mifavor/widget/CharacterView;->mInnerRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CharacterView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/zte/mifavor/widget/CharacterView;->mViewSize:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CharacterView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/zte/mifavor/widget/CharacterView;->mViewSize:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 121
    const-string v4, "Debug"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mViewSize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/zte/mifavor/widget/CharacterView;->mViewSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Width "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CharacterView;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Height "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CharacterView;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v4, "Debug"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "left "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/mifavor/widget/CharacterView;->mInnerRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " top "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/mifavor/widget/CharacterView;->mInnerRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " right "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/mifavor/widget/CharacterView;->mInnerRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bottom "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/mifavor/widget/CharacterView;->mInnerRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v4, p0, Lcom/zte/mifavor/widget/CharacterView;->mInnerRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 125
    .local v0, "centerX":F
    iget-object v4, p0, Lcom/zte/mifavor/widget/CharacterView;->mInnerRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 127
    .local v1, "centerY":F
    float-to-int v2, v0

    .line 128
    .local v2, "xPos":I
    iget-object v4, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v9

    sub-float v4, v1, v4

    float-to-int v3, v4

    .line 130
    .local v3, "yPos":I
    const-string v4, "Debug"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "centerX "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " centerY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Height "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    iget-object v7, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v4, p0, Lcom/zte/mifavor/widget/CharacterView;->mInnerRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/zte/mifavor/widget/CharacterView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 134
    iget v4, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderWidth:I

    if-eqz v4, :cond_0

    .line 135
    iget-object v4, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/zte/mifavor/widget/CharacterView;->mViewSize:I

    int-to-float v5, v5

    iget v6, p0, Lcom/zte/mifavor/widget/CharacterView;->mViewSize:I

    int-to-float v6, v6

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 136
    iget-object v4, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CharacterView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/zte/mifavor/widget/CharacterView;->mViewSize:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CharacterView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/zte/mifavor/widget/CharacterView;->mViewSize:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 137
    iget-object v4, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v9

    iget-object v5, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v6, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderWidth:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderRadius:F

    .line 138
    iget v4, p0, Lcom/zte/mifavor/widget/CharacterView;->mViewSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/zte/mifavor/widget/CharacterView;->mViewSize:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderRadius:F

    iget-object v7, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 144
    :cond_0
    iget-object v4, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleText:Ljava/lang/String;

    int-to-float v5, v2

    int-to-float v6, v3

    iget-object v7, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 145
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v2, 0x60

    .line 106
    invoke-super {p0, p1, p2}, Landroid/widget/QuickContactBadge;->onMeasure(II)V

    .line 108
    invoke-static {v2, p1}, Lcom/zte/mifavor/widget/CharacterView;->resolveSize(II)I

    move-result v1

    .line 109
    .local v1, "width":I
    invoke-static {v2, p2}, Lcom/zte/mifavor/widget/CharacterView;->resolveSize(II)I

    move-result v0

    .line 110
    .local v0, "height":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/CharacterView;->mViewSize:I

    .line 112
    invoke-virtual {p0, v1, v0}, Lcom/zte/mifavor/widget/CharacterView;->setMeasuredDimension(II)V

    .line 113
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/zte/mifavor/widget/CharacterView;->mBackgroundColor:I

    .line 186
    invoke-direct {p0}, Lcom/zte/mifavor/widget/CharacterView;->invalidatePaints()V

    .line 187
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .param p1, "borderColor"    # I

    .prologue
    .line 220
    iput p1, p0, Lcom/zte/mifavor/widget/CharacterView;->mBorderColor:I

    .line 221
    invoke-direct {p0}, Lcom/zte/mifavor/widget/CharacterView;->invalidatePaints()V

    .line 222
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "font"    # Landroid/graphics/Typeface;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/zte/mifavor/widget/CharacterView;->mFont:Landroid/graphics/Typeface;

    .line 212
    invoke-direct {p0}, Lcom/zte/mifavor/widget/CharacterView;->invalidateTextPaints()V

    .line 213
    return-void
.end method

.method public setTitleSize(F)V
    .locals 0
    .param p1, "titleSize"    # F

    .prologue
    .line 202
    iput p1, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleSize:F

    .line 203
    invoke-direct {p0}, Lcom/zte/mifavor/widget/CharacterView;->invalidateTextPaints()V

    .line 204
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 160
    iput-object p1, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleText:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleText:Ljava/lang/String;

    .line 163
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/CharacterView;->setTitleSize(F)V

    .line 168
    :goto_0
    const-string v0, "Debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTitleText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CharacterView;->invalidate()V

    .line 170
    return-void

    .line 165
    :cond_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/CharacterView;->mTitleText:Ljava/lang/String;

    .line 166
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/CharacterView;->setTitleSize(F)V

    goto :goto_0
.end method
