.class public Lcom/android/mipop/paintpad/view/PaintPad;
.super Landroid/widget/ImageView;
.source "PaintPad.java"


# instance fields
.field bh:I

.field bw:I

.field private final clearCanvas:Lcom/android/mipop/paintpad/drawings/Drawing;

.field private clearPaint:Landroid/graphics/Paint;

.field private context:Landroid/content/Context;

.field private drawBitmap:Landroid/graphics/Bitmap;

.field private drawable:Z

.field private drawing:Lcom/android/mipop/paintpad/drawings/Drawing;

.field private drawingID:I

.field private icon:Landroid/graphics/Bitmap;

.field private isBlur:Z

.field private isMesured:Z

.field private isMoving:Z

.field private paint:Landroid/graphics/Paint;

.field private paper:Landroid/graphics/Canvas;

.field private redoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mipop/paintpad/drawings/Drawing;",
            ">;"
        }
    .end annotation
.end field

.field private tempX:F

.field private tempY:F

.field private undoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mipop/paintpad/drawings/Drawing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->isBlur:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawable:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->clearCanvas:Lcom/android/mipop/paintpad/drawings/Drawing;

    .line 49
    iput-boolean v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->isMesured:Z

    .line 113
    iput v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->bw:I

    .line 114
    iput v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->bh:I

    .line 53
    invoke-direct {p0, p1}, Lcom/android/mipop/paintpad/view/PaintPad;->init(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-boolean v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->isBlur:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawable:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->clearCanvas:Lcom/android/mipop/paintpad/drawings/Drawing;

    .line 49
    iput-boolean v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->isMesured:Z

    .line 113
    iput v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->bw:I

    .line 114
    iput v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->bh:I

    .line 64
    invoke-direct {p0, p1}, Lcom/android/mipop/paintpad/view/PaintPad;->init(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-boolean v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->isBlur:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawable:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->clearCanvas:Lcom/android/mipop/paintpad/drawings/Drawing;

    .line 49
    iput-boolean v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->isMesured:Z

    .line 113
    iput v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->bw:I

    .line 114
    iput v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->bh:I

    .line 58
    invoke-direct {p0, p1}, Lcom/android/mipop/paintpad/view/PaintPad;->init(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method private clearBitmap()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 274
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->paper:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 276
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->clearPaint:Landroid/graphics/Paint;

    .line 86
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->clearPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 87
    iput-object p1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->context:Landroid/content/Context;

    .line 88
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->paper:Landroid/graphics/Canvas;

    .line 89
    iput-boolean v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->isMoving:Z

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020753

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->icon:Landroid/graphics/Bitmap;

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->paint:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->undoList:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->redoList:Ljava/util/ArrayList;

    .line 95
    iput v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawingID:I

    .line 96
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/view/PaintPad;->setBackgroundColor(I)V

    .line 98
    return-void
.end method

.method private initDrawBitmap()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawBitmap:Landroid/graphics/Bitmap;

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawBitmap:Landroid/graphics/Bitmap;

    .line 146
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->paper:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->isMesured:Z

    .line 148
    return-void
.end method


# virtual methods
.method public clearCanvas()V
    .locals 2

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->clearBitmap()V

    .line 267
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->undoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->clearCanvas:Lcom/android/mipop/paintpad/drawings/Drawing;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->redoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 269
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->invalidate()V

    .line 270
    return-void
.end method

.method public getDrawing()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawingID:I

    return v0
.end method

.method public isBlur()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->isBlur:Z

    return v0
.end method

.method public isDrawable()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawable:Z

    return v0
.end method

.method public isRedoListEmpty()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->redoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isUndoListEmpty()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->undoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 154
    iget-boolean v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->isMesured:Z

    if-nez v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->initDrawBitmap()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 160
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawing:Lcom/android/mipop/paintpad/drawings/Drawing;

    instance-of v0, v0, Lcom/android/mipop/paintpad/drawings/Eraser;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawing:Lcom/android/mipop/paintpad/drawings/Drawing;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->isMoving:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawing:Lcom/android/mipop/paintpad/drawings/Drawing;

    invoke-virtual {v0, p1}, Lcom/android/mipop/paintpad/drawings/Drawing;->draw(Landroid/graphics/Canvas;)V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawing:Lcom/android/mipop/paintpad/drawings/Drawing;

    instance-of v0, v0, Lcom/android/mipop/paintpad/drawings/Eraser;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->isMoving:Z

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->icon:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->tempX:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->tempY:F

    iget-object v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 169
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 175
    iget-boolean v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawable:Z

    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 178
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 180
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 208
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    :goto_0
    return v5

    .line 182
    .restart local v0    # "x":F
    .restart local v1    # "y":F
    :pswitch_0
    iget v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawingID:I

    invoke-static {v2}, Lcom/android/mipop/paintpad/drawings/DrawingFactory;->createDrawing(I)Lcom/android/mipop/paintpad/drawings/Drawing;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawing:Lcom/android/mipop/paintpad/drawings/Drawing;

    .line 183
    invoke-static {}, Lcom/android/mipop/paintpad/tools/Brush;->getPen()Lcom/android/mipop/paintpad/tools/Brush;

    .line 184
    iput-boolean v4, p0, Lcom/android/mipop/paintpad/view/PaintPad;->isMoving:Z

    .line 185
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawing:Lcom/android/mipop/paintpad/drawings/Drawing;

    iget-object v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->paper:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/mipop/paintpad/drawings/Drawing;->fingerDown(FFLandroid/graphics/Canvas;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->invalidate()V

    goto :goto_0

    .line 189
    :pswitch_1
    iput v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->tempX:F

    .line 190
    iput v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->tempY:F

    .line 191
    iput-boolean v5, p0, Lcom/android/mipop/paintpad/view/PaintPad;->isMoving:Z

    .line 192
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawing:Lcom/android/mipop/paintpad/drawings/Drawing;

    iget-object v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->paper:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/mipop/paintpad/drawings/Drawing;->fingerMove(FFLandroid/graphics/Canvas;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->invalidate()V

    goto :goto_0

    .line 196
    :pswitch_2
    iput v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->tempX:F

    .line 197
    iput v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->tempY:F

    .line 198
    iput-boolean v4, p0, Lcom/android/mipop/paintpad/view/PaintPad;->isMoving:Z

    .line 199
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawing:Lcom/android/mipop/paintpad/drawings/Drawing;

    iget-object v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->paper:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/mipop/paintpad/drawings/Drawing;->fingerUp(FFLandroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->undoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawing:Lcom/android/mipop/paintpad/drawings/Drawing;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->redoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->invalidate()V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public redo()I
    .locals 3

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->redoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->redoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->redoList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->redoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/drawings/Drawing;

    .line 252
    .local v0, "d":Lcom/android/mipop/paintpad/drawings/Drawing;
    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->undoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    if-eqz v0, :cond_1

    .line 254
    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->paper:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/drawings/Drawing;->reDraw(Landroid/graphics/Canvas;)V

    .line 258
    :goto_0
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->invalidate()V

    .line 260
    .end local v0    # "d":Lcom/android/mipop/paintpad/drawings/Drawing;
    :cond_0
    iget-object v1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->redoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1

    .line 256
    .restart local v0    # "d":Lcom/android/mipop/paintpad/drawings/Drawing;
    :cond_1
    invoke-direct {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->clearBitmap()V

    goto :goto_0
.end method

.method public saveBitmap()V
    .locals 3

    .prologue
    .line 280
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/mipop/paintpad/view/PaintPad;->setDrawingCacheEnabled(Z)V

    .line 281
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 283
    .local v0, "saveBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/android/mipop/cropimage/TakePhoto;

    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/mipop/cropimage/TakePhoto;-><init>(Landroid/content/Context;)V

    .line 284
    .local v1, "tp":Lcom/android/mipop/cropimage/TakePhoto;
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/mipop/cropimage/TakePhoto;->Save(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 288
    return-void
.end method

.method public setBackGround(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->bw:I

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->bh:I

    .line 119
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawBitmap:Landroid/graphics/Bitmap;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->undoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->undoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->redoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->redoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->isMesured:Z

    .line 135
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->invalidate()V

    .line 136
    return-void
.end method

.method public setBlur(Z)V
    .locals 0
    .param p1, "isBlur"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->isBlur:Z

    .line 74
    return-void
.end method

.method public setDrawable(Z)V
    .locals 0
    .param p1, "drawable"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawable:Z

    .line 82
    return-void
.end method

.method public setDrawing(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawingID:I

    .line 107
    invoke-static {p1}, Lcom/android/mipop/paintpad/drawings/DrawingFactory;->createDrawing(I)Lcom/android/mipop/paintpad/drawings/Drawing;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/paintpad/view/PaintPad;->drawing:Lcom/android/mipop/paintpad/drawings/Drawing;

    .line 108
    return-void
.end method

.method public share()V
    .locals 3

    .prologue
    .line 292
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/mipop/paintpad/view/PaintPad;->setDrawingCacheEnabled(Z)V

    .line 293
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 295
    .local v0, "saveBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/android/mipop/cropimage/TakePhoto;

    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/mipop/cropimage/TakePhoto;-><init>(Landroid/content/Context;)V

    .line 296
    .local v1, "tp":Lcom/android/mipop/cropimage/TakePhoto;
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/PaintPad;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/mipop/cropimage/TakePhoto;->Share(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 300
    return-void
.end method

.method public undo()I
    .locals 6

    .prologue
    .line 223
    iget-object v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->undoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->undoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 229
    invoke-direct {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->clearBitmap()V

    .line 230
    iget-object v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->redoList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/mipop/paintpad/view/PaintPad;->undoList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/PaintPad;->undoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->undoList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/mipop/paintpad/view/PaintPad;->clearCanvas:Lcom/android/mipop/paintpad/drawings/Drawing;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 v2, 0x0

    .line 233
    .local v2, "start":I
    :goto_0
    iget-object v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->undoList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/mipop/paintpad/view/PaintPad;->undoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/drawings/Drawing;

    .line 235
    .local v0, "d":Lcom/android/mipop/paintpad/drawings/Drawing;
    if-eqz v0, :cond_1

    .line 236
    iget-object v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->paper:Landroid/graphics/Canvas;

    invoke-virtual {v0, v3}, Lcom/android/mipop/paintpad/drawings/Drawing;->reDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 231
    .end local v0    # "d":Lcom/android/mipop/paintpad/drawings/Drawing;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "start":I
    :cond_0
    iget-object v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->undoList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/mipop/paintpad/view/PaintPad;->clearCanvas:Lcom/android/mipop/paintpad/drawings/Drawing;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    .line 238
    .restart local v0    # "d":Lcom/android/mipop/paintpad/drawings/Drawing;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "start":I
    :cond_1
    invoke-direct {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->clearBitmap()V

    goto :goto_1

    .line 242
    .end local v0    # "d":Lcom/android/mipop/paintpad/drawings/Drawing;
    :cond_2
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/PaintPad;->invalidate()V

    .line 244
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "start":I
    :cond_3
    iget-object v3, p0, Lcom/android/mipop/paintpad/view/PaintPad;->undoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    return v3
.end method
