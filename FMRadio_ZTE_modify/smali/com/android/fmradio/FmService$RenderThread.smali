.class Lcom/android/fmradio/FmService$RenderThread;
.super Ljava/lang/Thread;
.source "FmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/FmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RenderThread"
.end annotation


# instance fields
.field private mCurrentFrame:I

.field final synthetic this$0:Lcom/android/fmradio/FmService;


# direct methods
.method constructor <init>(Lcom/android/fmradio/FmService;)V
    .locals 1

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 654
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fmradio/FmService$RenderThread;->mCurrentFrame:I

    return-void
.end method

.method private isAudioFrameNeedIgnore()Z
    .locals 2

    .prologue
    .line 656
    iget v0, p0, Lcom/android/fmradio/FmService$RenderThread;->mCurrentFrame:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x3

    .line 662
    :try_start_0
    # getter for: Lcom/android/fmradio/FmService;->RECORD_BUF_SIZE:I
    invoke-static {}, Lcom/android/fmradio/FmService;->access$23()I

    move-result v4

    new-array v0, v4, [B

    .line 663
    .local v0, "buffer":[B
    const-string v4, "FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RenderThread, interrupted = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v4

    if-eqz v4, :cond_2

    .line 738
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$21(Lcom/android/fmradio/FmService;)Landroid/media/AudioRecord;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 739
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$21(Lcom/android/fmradio/FmService;)Landroid/media/AudioRecord;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 740
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$21(Lcom/android/fmradio/FmService;)Landroid/media/AudioRecord;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioRecord;->stop()V

    .line 743
    :cond_0
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$22(Lcom/android/fmradio/FmService;)Landroid/media/AudioTrack;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 744
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$22(Lcom/android/fmradio/FmService;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 745
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$22(Lcom/android/fmradio/FmService;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->stop()V

    .line 748
    .end local v0    # "buffer":[B
    :cond_1
    :goto_1
    return-void

    .line 666
    .restart local v0    # "buffer":[B
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    invoke-virtual {v4}, Lcom/android/fmradio/FmService;->isRender()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 670
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$21(Lcom/android/fmradio/FmService;)Landroid/media/AudioRecord;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 671
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$21(Lcom/android/fmradio/FmService;)Landroid/media/AudioRecord;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 673
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$21(Lcom/android/fmradio/FmService;)Landroid/media/AudioRecord;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioRecord;->startRecording()V

    .line 676
    :cond_3
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$22(Lcom/android/fmradio/FmService;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 677
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$22(Lcom/android/fmradio/FmService;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 678
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$22(Lcom/android/fmradio/FmService;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->play()V

    .line 680
    :cond_4
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$21(Lcom/android/fmradio/FmService;)Landroid/media/AudioRecord;

    move-result-object v4

    const/4 v5, 0x0

    # getter for: Lcom/android/fmradio/FmService;->RECORD_BUF_SIZE:I
    invoke-static {}, Lcom/android/fmradio/FmService;->access$23()I

    move-result v6

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    .line 683
    .local v2, "size":I
    invoke-direct {p0}, Lcom/android/fmradio/FmService$RenderThread;->isAudioFrameNeedIgnore()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 684
    iget v4, p0, Lcom/android/fmradio/FmService$RenderThread;->mCurrentFrame:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/fmradio/FmService$RenderThread;->mCurrentFrame:I

    .line 685
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mRenderingLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$24(Lcom/android/fmradio/FmService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 687
    :try_start_2
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mRenderingLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$24(Lcom/android/fmradio/FmService;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 685
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 735
    .end local v0    # "buffer":[B
    .end local v2    # "size":I
    :catch_0
    move-exception v1

    .line 736
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v4, "FmService"

    const-string v5, "RenderThread.run, thread is interrupted, need exit thread"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 738
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$21(Lcom/android/fmradio/FmService;)Landroid/media/AudioRecord;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 739
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$21(Lcom/android/fmradio/FmService;)Landroid/media/AudioRecord;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 740
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$21(Lcom/android/fmradio/FmService;)Landroid/media/AudioRecord;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioRecord;->stop()V

    .line 743
    :cond_5
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$22(Lcom/android/fmradio/FmService;)Landroid/media/AudioTrack;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 744
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$22(Lcom/android/fmradio/FmService;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 745
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$22(Lcom/android/fmradio/FmService;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->stop()V

    goto/16 :goto_1

    .line 691
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "buffer":[B
    .restart local v2    # "size":I
    :cond_6
    if-gtz v2, :cond_9

    .line 692
    :try_start_5
    const-string v4, "FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RenderThread read data from AudioRecord error size: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 693
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 692
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mRenderingLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$24(Lcom/android/fmradio/FmService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 696
    :try_start_6
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mRenderingLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$24(Lcom/android/fmradio/FmService;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 694
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 737
    .end local v0    # "buffer":[B
    .end local v2    # "size":I
    :catchall_2
    move-exception v4

    .line 738
    iget-object v5, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v5}, Lcom/android/fmradio/FmService;->access$21(Lcom/android/fmradio/FmService;)Landroid/media/AudioRecord;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 739
    iget-object v5, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v5}, Lcom/android/fmradio/FmService;->access$21(Lcom/android/fmradio/FmService;)Landroid/media/AudioRecord;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v5

    if-ne v5, v8, :cond_7

    .line 740
    iget-object v5, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v5}, Lcom/android/fmradio/FmService;->access$21(Lcom/android/fmradio/FmService;)Landroid/media/AudioRecord;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioRecord;->stop()V

    .line 743
    :cond_7
    iget-object v5, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v5}, Lcom/android/fmradio/FmService;->access$22(Lcom/android/fmradio/FmService;)Landroid/media/AudioTrack;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 744
    iget-object v5, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v5}, Lcom/android/fmradio/FmService;->access$22(Lcom/android/fmradio/FmService;)Landroid/media/AudioTrack;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    if-ne v5, v8, :cond_8

    .line 745
    iget-object v5, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v5}, Lcom/android/fmradio/FmService;->access$22(Lcom/android/fmradio/FmService;)Landroid/media/AudioTrack;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioTrack;->stop()V

    .line 747
    :cond_8
    throw v4

    .line 700
    .restart local v0    # "buffer":[B
    .restart local v2    # "size":I
    :cond_9
    :try_start_8
    new-array v3, v2, [B

    .line 701
    .local v3, "tmpBuf":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 704
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    invoke-virtual {v4}, Lcom/android/fmradio/FmService;->isRender()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 705
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$22(Lcom/android/fmradio/FmService;)Landroid/media/AudioTrack;

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v3

    invoke-virtual {v4, v3, v5, v6}, Landroid/media/AudioTrack;->write([BII)I

    .line 707
    :cond_a
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mRenderingLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$24(Lcom/android/fmradio/FmService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 709
    :try_start_9
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mRenderingLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$24(Lcom/android/fmradio/FmService;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 707
    monitor-exit v5

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v4

    .line 713
    .end local v2    # "size":I
    .end local v3    # "tmpBuf":[B
    :cond_b
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/fmradio/FmService$RenderThread;->mCurrentFrame:I
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 715
    :try_start_b
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$22(Lcom/android/fmradio/FmService;)Landroid/media/AudioTrack;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 716
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$22(Lcom/android/fmradio/FmService;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v8, :cond_c

    .line 717
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$22(Lcom/android/fmradio/FmService;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->stop()V

    .line 720
    :cond_c
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$21(Lcom/android/fmradio/FmService;)Landroid/media/AudioRecord;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 721
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$21(Lcom/android/fmradio/FmService;)Landroid/media/AudioRecord;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v4

    if-ne v4, v8, :cond_d

    .line 723
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$21(Lcom/android/fmradio/FmService;)Landroid/media/AudioRecord;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioRecord;->stop()V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 728
    :cond_d
    :try_start_c
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mRenderLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$25(Lcom/android/fmradio/FmService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 729
    :try_start_d
    const-string v4, "FmService"

    const-string v6, "RenderThread: waiting for mRenderLock"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mRenderLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$25(Lcom/android/fmradio/FmService;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 728
    monitor-exit v5

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v4
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 725
    :catch_1
    move-exception v1

    .line 726
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_f
    const-string v4, "FmService"

    const-string v5, "RenderThread.run, IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 728
    :try_start_10
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mRenderLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$25(Lcom/android/fmradio/FmService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 729
    :try_start_11
    const-string v4, "FmService"

    const-string v6, "RenderThread: waiting for mRenderLock"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v4, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mRenderLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$25(Lcom/android/fmradio/FmService;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 728
    monitor-exit v5

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    throw v4

    .line 727
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catchall_6
    move-exception v4

    .line 728
    iget-object v5, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mRenderLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/fmradio/FmService;->access$25(Lcom/android/fmradio/FmService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 729
    :try_start_13
    const-string v6, "FmService"

    const-string v7, "RenderThread: waiting for mRenderLock"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v6, p0, Lcom/android/fmradio/FmService$RenderThread;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mRenderLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/fmradio/FmService;->access$25(Lcom/android/fmradio/FmService;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V

    .line 728
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 732
    :try_start_14
    throw v4
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 728
    :catchall_7
    move-exception v4

    :try_start_15
    monitor-exit v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    :try_start_16
    throw v4
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_2
.end method
