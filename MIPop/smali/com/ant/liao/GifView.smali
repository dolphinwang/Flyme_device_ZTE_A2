.class public Lcom/ant/liao/GifView;
.super Landroid/view/View;
.source "GifView.java"

# interfaces
.implements Lcom/ant/liao/GifAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ant/liao/GifView$2;,
        Lcom/ant/liao/GifView$DrawThread;,
        Lcom/ant/liao/GifView$GifImageType;
    }
.end annotation


# static fields
.field private static drawThread:Lcom/ant/liao/GifView$DrawThread;

.field private static gifDecoder:Lcom/ant/liao/GifDecoder;

.field private static isRun:Z

.field public static final lock:Ljava/lang/Object;


# instance fields
.field private animationType:Lcom/ant/liao/GifView$GifImageType;

.field private currentImage:Landroid/graphics/Bitmap;

.field private pause:Z

.field private rect:Landroid/graphics/Rect;

.field private redrawHandler:Landroid/os/Handler;

.field private showHeight:I

.field private showWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ant/liao/GifView;->lock:Ljava/lang/Object;

    .line 31
    sput-object v1, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ant/liao/GifView;->isRun:Z

    .line 43
    sput-object v1, Lcom/ant/liao/GifView;->drawThread:Lcom/ant/liao/GifView$DrawThread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 75
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object v2, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ant/liao/GifView;->pause:Z

    .line 39
    iput v1, p0, Lcom/ant/liao/GifView;->showWidth:I

    .line 40
    iput v1, p0, Lcom/ant/liao/GifView;->showHeight:I

    .line 41
    iput-object v2, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    .line 45
    sget-object v0, Lcom/ant/liao/GifView$GifImageType;->SYNC_DECODER:Lcom/ant/liao/GifView$GifImageType;

    iput-object v0, p0, Lcom/ant/liao/GifView;->animationType:Lcom/ant/liao/GifView$GifImageType;

    .line 333
    new-instance v0, Lcom/ant/liao/GifView$1;

    invoke-direct {v0, p0}, Lcom/ant/liao/GifView$1;-><init>(Lcom/ant/liao/GifView;)V

    iput-object v0, p0, Lcom/ant/liao/GifView;->redrawHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ant/liao/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-object v2, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ant/liao/GifView;->pause:Z

    .line 39
    iput v1, p0, Lcom/ant/liao/GifView;->showWidth:I

    .line 40
    iput v1, p0, Lcom/ant/liao/GifView;->showHeight:I

    .line 41
    iput-object v2, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    .line 45
    sget-object v0, Lcom/ant/liao/GifView$GifImageType;->SYNC_DECODER:Lcom/ant/liao/GifView$GifImageType;

    iput-object v0, p0, Lcom/ant/liao/GifView;->animationType:Lcom/ant/liao/GifView$GifImageType;

    .line 333
    new-instance v0, Lcom/ant/liao/GifView$1;

    invoke-direct {v0, p0}, Lcom/ant/liao/GifView$1;-><init>(Lcom/ant/liao/GifView;)V

    iput-object v0, p0, Lcom/ant/liao/GifView;->redrawHandler:Landroid/os/Handler;

    .line 86
    return-void
.end method

.method static synthetic access$100()Lcom/ant/liao/GifDecoder;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/ant/liao/GifView;->isRun:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lcom/ant/liao/GifView;->isRun:Z

    return p0
.end method

.method static synthetic access$300(Lcom/ant/liao/GifView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ant/liao/GifView;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/ant/liao/GifView;->pause:Z

    return v0
.end method

.method static synthetic access$402(Lcom/ant/liao/GifView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/ant/liao/GifView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ant/liao/GifView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/ant/liao/GifView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ant/liao/GifView;->redrawHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private reDraw()V
    .locals 2

    .prologue
    .line 327
    iget-object v1, p0, Lcom/ant/liao/GifView;->redrawHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/ant/liao/GifView;->redrawHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 329
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/ant/liao/GifView;->redrawHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 331
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setGifDecoderImage(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v4, 0x0

    .line 112
    sget-object v1, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    if-eqz v1, :cond_1

    .line 114
    sget-object v1, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    sget-object v2, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    const/4 v2, -0x1

    iput v2, v1, Lcom/ant/liao/GifDecoder;->status:I

    .line 115
    const/4 v1, 0x0

    sput-boolean v1, Lcom/ant/liao/GifView;->isRun:Z

    .line 117
    :try_start_0
    sget-object v1, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v1}, Lcom/ant/liao/GifDecoder;->join()V

    .line 118
    sget-object v1, Lcom/ant/liao/GifView;->drawThread:Lcom/ant/liao/GifView$DrawThread;

    if-eqz v1, :cond_0

    .line 119
    sget-object v1, Lcom/ant/liao/GifView;->drawThread:Lcom/ant/liao/GifView$DrawThread;

    invoke-virtual {v1}, Lcom/ant/liao/GifView$DrawThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    sget-object v2, Lcom/ant/liao/GifView;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    :try_start_1
    const-string v1, "GifView"

    const-string v3, "free all!!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-object v1, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v1}, Lcom/ant/liao/GifDecoder;->free()V

    .line 128
    const-string v1, "GifView"

    const-string v3, "free complete!!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    const/4 v1, 0x1

    sput-boolean v1, Lcom/ant/liao/GifView;->isRun:Z

    .line 131
    sput-object v4, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    .line 132
    sput-object v4, Lcom/ant/liao/GifView;->drawThread:Lcom/ant/liao/GifView$DrawThread;

    .line 134
    :cond_1
    new-instance v1, Lcom/ant/liao/GifDecoder;

    invoke-direct {v1, p1, p0}, Lcom/ant/liao/GifDecoder;-><init>(Ljava/io/InputStream;Lcom/ant/liao/GifAction;)V

    sput-object v1, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    .line 135
    sget-object v1, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    const-string v2, "Decoder"

    invoke-virtual {v1, v2}, Lcom/ant/liao/GifDecoder;->setName(Ljava/lang/String;)V

    .line 136
    sget-object v1, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v1}, Lcom/ant/liao/GifDecoder;->start()V

    .line 137
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setGifDecoderImage([B)V
    .locals 2
    .param p1, "gif"    # [B

    .prologue
    .line 94
    sget-object v0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    if-eqz v0, :cond_0

    .line 95
    sget-object v1, Lcom/ant/liao/GifView;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/ant/liao/GifView;->isRun:Z

    .line 97
    sget-object v0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v0}, Lcom/ant/liao/GifDecoder;->free()V

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/ant/liao/GifView;->drawThread:Lcom/ant/liao/GifView$DrawThread;

    .line 100
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    new-instance v0, Lcom/ant/liao/GifDecoder;

    invoke-direct {v0, p1, p0}, Lcom/ant/liao/GifDecoder;-><init>([BLcom/ant/liao/GifAction;)V

    sput-object v0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    .line 103
    sget-object v0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v0}, Lcom/ant/liao/GifDecoder;->start()V

    .line 104
    return-void

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 169
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 170
    sget-object v1, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    if-nez v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 173
    sget-object v1, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v1}, Lcom/ant/liao/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 175
    :cond_2
    iget-object v1, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 179
    .local v0, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 180
    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 181
    iget v1, p0, Lcom/ant/liao/GifView;->showWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ant/liao/GifView;->setShowDimension(II)V

    .line 185
    :cond_3
    iget-object v1, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 187
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getPaddingLeft()I

    move-result v3

    .line 192
    .local v3, "pleft":I
    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getPaddingRight()I

    move-result v4

    .line 193
    .local v4, "pright":I
    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getPaddingTop()I

    move-result v5

    .line 194
    .local v5, "ptop":I
    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getPaddingBottom()I

    move-result v2

    .line 202
    .local v2, "pbottom":I
    sget-object v8, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    if-nez v8, :cond_0

    .line 203
    const/4 v6, 0x1

    .line 204
    .local v6, "w":I
    const/4 v0, 0x1

    .line 210
    .local v0, "h":I
    :goto_0
    add-int v8, v3, v4

    add-int/2addr v6, v8

    .line 211
    add-int v8, v5, v2

    add-int/2addr v0, v8

    .line 213
    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 214
    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 216
    invoke-static {v6, p1}, Lcom/ant/liao/GifView;->resolveSize(II)I

    move-result v7

    .line 217
    .local v7, "widthSize":I
    invoke-static {v0, p2}, Lcom/ant/liao/GifView;->resolveSize(II)I

    move-result v1

    .line 219
    .local v1, "heightSize":I
    invoke-virtual {p0, v7, v1}, Lcom/ant/liao/GifView;->setMeasuredDimension(II)V

    .line 220
    return-void

    .line 206
    .end local v0    # "h":I
    .end local v1    # "heightSize":I
    .end local v6    # "w":I
    .end local v7    # "widthSize":I
    :cond_0
    sget-object v8, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    iget v6, v8, Lcom/ant/liao/GifDecoder;->width:I

    .line 207
    .restart local v6    # "w":I
    sget-object v8, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    iget v0, v8, Lcom/ant/liao/GifDecoder;->height:I

    .restart local v0    # "h":I
    goto :goto_0
.end method

.method public parseOk(ZI)V
    .locals 6
    .param p1, "parseStatus"    # Z
    .param p2, "frameIndex"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 275
    if-eqz p1, :cond_0

    .line 276
    sget-object v1, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    if-eqz v1, :cond_6

    .line 277
    sget-object v1, Lcom/ant/liao/GifView$2;->$SwitchMap$com$ant$liao$GifView$GifImageType:[I

    iget-object v2, p0, Lcom/ant/liao/GifView;->animationType:Lcom/ant/liao/GifView$GifImageType;

    invoke-virtual {v2}, Lcom/ant/liao/GifView$GifImageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 279
    :pswitch_0
    if-ne p2, v4, :cond_0

    .line 280
    sget-object v1, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v1}, Lcom/ant/liao/GifDecoder;->getFrameCount()I

    move-result v1

    if-le v1, v3, :cond_1

    sget-object v1, Lcom/ant/liao/GifView;->drawThread:Lcom/ant/liao/GifView$DrawThread;

    if-nez v1, :cond_1

    .line 282
    new-instance v0, Lcom/ant/liao/GifView$DrawThread;

    invoke-direct {v0, p0, v5}, Lcom/ant/liao/GifView$DrawThread;-><init>(Lcom/ant/liao/GifView;Lcom/ant/liao/GifView$1;)V

    .line 283
    .local v0, "dt":Lcom/ant/liao/GifView$DrawThread;
    invoke-virtual {v0}, Lcom/ant/liao/GifView$DrawThread;->start()V

    goto :goto_0

    .line 285
    .end local v0    # "dt":Lcom/ant/liao/GifView$DrawThread;
    :cond_1
    invoke-direct {p0}, Lcom/ant/liao/GifView;->reDraw()V

    goto :goto_0

    .line 290
    :pswitch_1
    if-ne p2, v3, :cond_2

    .line 291
    sget-object v1, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v1}, Lcom/ant/liao/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 292
    invoke-direct {p0}, Lcom/ant/liao/GifView;->reDraw()V

    goto :goto_0

    .line 293
    :cond_2
    if-ne p2, v4, :cond_0

    .line 294
    sget-object v1, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v1}, Lcom/ant/liao/GifDecoder;->getFrameCount()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 295
    sget-object v1, Lcom/ant/liao/GifView;->drawThread:Lcom/ant/liao/GifView$DrawThread;

    if-nez v1, :cond_0

    .line 296
    new-instance v1, Lcom/ant/liao/GifView$DrawThread;

    invoke-direct {v1, p0, v5}, Lcom/ant/liao/GifView$DrawThread;-><init>(Lcom/ant/liao/GifView;Lcom/ant/liao/GifView$1;)V

    sput-object v1, Lcom/ant/liao/GifView;->drawThread:Lcom/ant/liao/GifView$DrawThread;

    .line 297
    sget-object v1, Lcom/ant/liao/GifView;->drawThread:Lcom/ant/liao/GifView$DrawThread;

    invoke-virtual {v1}, Lcom/ant/liao/GifView$DrawThread;->start()V

    goto :goto_0

    .line 300
    :cond_3
    invoke-direct {p0}, Lcom/ant/liao/GifView;->reDraw()V

    goto :goto_0

    .line 305
    :pswitch_2
    if-ne p2, v3, :cond_4

    .line 306
    sget-object v1, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v1}, Lcom/ant/liao/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 307
    invoke-direct {p0}, Lcom/ant/liao/GifView;->reDraw()V

    goto :goto_0

    .line 308
    :cond_4
    if-ne p2, v4, :cond_5

    .line 309
    invoke-direct {p0}, Lcom/ant/liao/GifView;->reDraw()V

    goto :goto_0

    .line 311
    :cond_5
    sget-object v1, Lcom/ant/liao/GifView;->drawThread:Lcom/ant/liao/GifView$DrawThread;

    if-nez v1, :cond_0

    .line 312
    new-instance v1, Lcom/ant/liao/GifView$DrawThread;

    invoke-direct {v1, p0, v5}, Lcom/ant/liao/GifView$DrawThread;-><init>(Lcom/ant/liao/GifView;Lcom/ant/liao/GifView$1;)V

    sput-object v1, Lcom/ant/liao/GifView;->drawThread:Lcom/ant/liao/GifView$DrawThread;

    .line 313
    sget-object v1, Lcom/ant/liao/GifView;->drawThread:Lcom/ant/liao/GifView$DrawThread;

    invoke-virtual {v1}, Lcom/ant/liao/GifView$DrawThread;->start()V

    goto :goto_0

    .line 320
    :cond_6
    const-string v1, "gif"

    const-string v2, "parse error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setGifImage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 164
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 165
    .local v0, "is":Ljava/io/InputStream;
    invoke-direct {p0, v0}, Lcom/ant/liao/GifView;->setGifDecoderImage(Ljava/io/InputStream;)V

    .line 166
    return-void
.end method

.method public setGifImage(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/ant/liao/GifView;->setGifDecoderImage(Ljava/io/InputStream;)V

    .line 155
    return-void
.end method

.method public setGifImage([B)V
    .locals 0
    .param p1, "gif"    # [B

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/ant/liao/GifView;->setGifDecoderImage([B)V

    .line 146
    return-void
.end method

.method public setGifImageType(Lcom/ant/liao/GifView$GifImageType;)V
    .locals 1
    .param p1, "type"    # Lcom/ant/liao/GifView$GifImageType;

    .prologue
    .line 251
    sget-object v0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    if-nez v0, :cond_0

    .line 252
    iput-object p1, p0, Lcom/ant/liao/GifView;->animationType:Lcom/ant/liao/GifView$GifImageType;

    .line 253
    :cond_0
    return-void
.end method

.method public setShowDimension(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 263
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 264
    iput p1, p0, Lcom/ant/liao/GifView;->showWidth:I

    .line 265
    iput p2, p0, Lcom/ant/liao/GifView;->showHeight:I

    .line 266
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    .line 267
    iget-object v0, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 268
    iget-object v0, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 269
    iget-object v0, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 270
    iget-object v0, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 272
    :cond_0
    return-void
.end method

.method public showAnimation()V
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/ant/liao/GifView;->pause:Z

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ant/liao/GifView;->pause:Z

    .line 242
    :cond_0
    return-void
.end method

.method public showCover()V
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ant/liao/GifView;->pause:Z

    .line 230
    sget-object v0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v0}, Lcom/ant/liao/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 231
    invoke-virtual {p0}, Lcom/ant/liao/GifView;->invalidate()V

    goto :goto_0
.end method
