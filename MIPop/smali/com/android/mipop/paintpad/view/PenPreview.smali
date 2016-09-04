.class public Lcom/android/mipop/paintpad/view/PenPreview;
.super Landroid/view/View;
.source "PenPreview.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private h:I

.field private isMesuared:Z

.field private paint:Landroid/graphics/Paint;

.field private paper:Landroid/graphics/Canvas;

.field private path:Landroid/graphics/Path;

.field private pathLine:Lcom/android/mipop/paintpad/drawings/PathLine;

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->isMesuared:Z

    .line 35
    invoke-direct {p0, p1}, Lcom/android/mipop/paintpad/view/PenPreview;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->paint:Landroid/graphics/Paint;

    .line 42
    invoke-static {}, Lcom/android/mipop/paintpad/tools/Brush;->getBrush()Lcom/android/mipop/paintpad/tools/Brush;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mipop/paintpad/tools/Brush;->reset(Landroid/content/Context;)V

    .line 43
    new-instance v0, Lcom/android/mipop/paintpad/drawings/PathLine;

    invoke-direct {v0}, Lcom/android/mipop/paintpad/drawings/PathLine;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->pathLine:Lcom/android/mipop/paintpad/drawings/PathLine;

    .line 44
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    iget-boolean v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->isMesuared:Z

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PenPreview;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->w:I

    .line 71
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PenPreview;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->h:I

    .line 72
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->path:Landroid/graphics/Path;

    .line 73
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 74
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->path:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->w:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/android/mipop/paintpad/view/PenPreview;->h:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 75
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->path:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->w:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/mipop/paintpad/view/PenPreview;->w:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/android/mipop/paintpad/view/PenPreview;->h:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 76
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->path:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->w:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    const/high16 v2, 0x40e00000    # 7.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/mipop/paintpad/view/PenPreview;->h:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/mipop/paintpad/view/PenPreview;->w:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    const/high16 v4, 0x41100000    # 9.0f

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/mipop/paintpad/view/PenPreview;->h:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 77
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->pathLine:Lcom/android/mipop/paintpad/drawings/PathLine;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/drawings/PathLine;->setPath(Landroid/graphics/Path;)V

    .line 78
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->pathLine:Lcom/android/mipop/paintpad/drawings/PathLine;

    invoke-static {}, Lcom/android/mipop/paintpad/tools/Brush;->getBrush()Lcom/android/mipop/paintpad/tools/Brush;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/drawings/PathLine;->setPen(Landroid/graphics/Paint;)V

    .line 79
    iget v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->w:I

    iget v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->h:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->bitmap:Landroid/graphics/Bitmap;

    .line 80
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->paper:Landroid/graphics/Canvas;

    .line 81
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->pathLine:Lcom/android/mipop/paintpad/drawings/PathLine;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->paper:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/drawings/PathLine;->draw(Landroid/graphics/Canvas;)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->isMesuared:Z

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PenPreview;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 85
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    iget v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->w:I

    iget v2, p0, Lcom/android/mipop/paintpad/view/PenPreview;->h:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->bitmap:Landroid/graphics/Bitmap;

    .line 52
    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->paper:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PenPreview;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 53
    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->pathLine:Lcom/android/mipop/paintpad/drawings/PathLine;

    invoke-static {}, Lcom/android/mipop/paintpad/tools/Brush;->getBrush()Lcom/android/mipop/paintpad/tools/Brush;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mipop/paintpad/drawings/PathLine;->setPen(Landroid/graphics/Paint;)V

    .line 54
    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PenPreview;->pathLine:Lcom/android/mipop/paintpad/drawings/PathLine;

    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PenPreview;->paper:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Lcom/android/mipop/paintpad/drawings/PathLine;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PenPreview;->invalidate()V

    .line 60
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mipop/paintpad/tools/AppLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
