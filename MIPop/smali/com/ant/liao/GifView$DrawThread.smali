.class Lcom/ant/liao/GifView$DrawThread;
.super Ljava/lang/Thread;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ant/liao/GifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ant/liao/GifView;


# direct methods
.method private constructor <init>(Lcom/ant/liao/GifView;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/ant/liao/GifView$DrawThread;->this$0:Lcom/ant/liao/GifView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ant/liao/GifView;Lcom/ant/liao/GifView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ant/liao/GifView;
    .param p2, "x1"    # Lcom/ant/liao/GifView$1;

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/ant/liao/GifView$DrawThread;-><init>(Lcom/ant/liao/GifView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 346
    # getter for: Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;
    invoke-static {}, Lcom/ant/liao/GifView;->access$100()Lcom/ant/liao/GifDecoder;

    move-result-object v4

    if-nez v4, :cond_0

    .line 377
    :goto_0
    return-void

    .line 349
    :cond_0
    :goto_1
    # getter for: Lcom/ant/liao/GifView;->isRun:Z
    invoke-static {}, Lcom/ant/liao/GifView;->access$200()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 350
    iget-object v4, p0, Lcom/ant/liao/GifView$DrawThread;->this$0:Lcom/ant/liao/GifView;

    # getter for: Lcom/ant/liao/GifView;->pause:Z
    invoke-static {v4}, Lcom/ant/liao/GifView;->access$300(Lcom/ant/liao/GifView;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 352
    const-wide/16 v2, 0x0

    .line 353
    .local v2, "sp":J
    sget-object v5, Lcom/ant/liao/GifView;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 354
    :try_start_0
    # getter for: Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;
    invoke-static {}, Lcom/ant/liao/GifView;->access$100()Lcom/ant/liao/GifDecoder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ant/liao/GifDecoder;->next()Lcom/ant/liao/GifFrame;

    move-result-object v0

    .line 355
    .local v0, "frame":Lcom/ant/liao/GifFrame;
    if-nez v0, :cond_1

    .line 356
    monitor-exit v5

    goto :goto_1

    .line 359
    .end local v0    # "frame":Lcom/ant/liao/GifFrame;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 357
    .restart local v0    # "frame":Lcom/ant/liao/GifFrame;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/ant/liao/GifView$DrawThread;->this$0:Lcom/ant/liao/GifView;

    invoke-virtual {v0}, Lcom/ant/liao/GifFrame;->getImage()Landroid/graphics/Bitmap;

    move-result-object v6

    # setter for: Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;
    invoke-static {v4, v6}, Lcom/ant/liao/GifView;->access$402(Lcom/ant/liao/GifView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 358
    iget v4, v0, Lcom/ant/liao/GifFrame;->delay:I

    int-to-long v2, v4

    .line 359
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    iget-object v4, p0, Lcom/ant/liao/GifView$DrawThread;->this$0:Lcom/ant/liao/GifView;

    # getter for: Lcom/ant/liao/GifView;->redrawHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/ant/liao/GifView;->access$500(Lcom/ant/liao/GifView;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 361
    iget-object v4, p0, Lcom/ant/liao/GifView$DrawThread;->this$0:Lcom/ant/liao/GifView;

    # getter for: Lcom/ant/liao/GifView;->redrawHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/ant/liao/GifView;->access$500(Lcom/ant/liao/GifView;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 362
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/ant/liao/GifView$DrawThread;->this$0:Lcom/ant/liao/GifView;

    # getter for: Lcom/ant/liao/GifView;->redrawHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/ant/liao/GifView;->access$500(Lcom/ant/liao/GifView;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 363
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    .line 373
    .end local v0    # "frame":Lcom/ant/liao/GifFrame;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "sp":J
    :cond_2
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    .line 376
    :cond_3
    const/4 v4, 0x1

    # setter for: Lcom/ant/liao/GifView;->isRun:Z
    invoke-static {v4}, Lcom/ant/liao/GifView;->access$202(Z)Z

    goto :goto_0
.end method
