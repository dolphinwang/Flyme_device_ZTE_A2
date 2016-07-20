.class Lcom/android/fmradio/FmService$1;
.super Ljava/lang/Object;
.source "FmService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/FmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FmService;


# direct methods
.method constructor <init>(Lcom/android/fmradio/FmService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/fmradio/FmService$1;->this$0:Lcom/android/fmradio/FmService;

    .line 2843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4
    .param p1, "focusChange"    # I

    .prologue
    const/4 v3, 0x1

    .line 2851
    const-string v0, "FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioFocusChange "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    packed-switch p1, :pswitch_data_0

    .line 2896
    :goto_0
    :pswitch_0
    return-void

    .line 2854
    :pswitch_1
    monitor-enter p0

    .line 2855
    :try_start_0
    iget-object v0, p0, Lcom/android/fmradio/FmService$1;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->getForceUse()I
    invoke-static {v0}, Lcom/android/fmradio/FmService;->access$0(Lcom/android/fmradio/FmService;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/fmradio/FmService$1;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsSpeakerUsed:Z
    invoke-static {v0}, Lcom/android/fmradio/FmService;->access$1(Lcom/android/fmradio/FmService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2856
    iget-object v0, p0, Lcom/android/fmradio/FmService$1;->this$0:Lcom/android/fmradio/FmService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/fmradio/FmService;->access$2(Lcom/android/fmradio/FmService;Z)V

    .line 2857
    const-string v0, "FmService"

    const-string v1, "AudioFmPreStop=1"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    iget-object v0, p0, Lcom/android/fmradio/FmService$1;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/fmradio/FmService;->access$3(Lcom/android/fmradio/FmService;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "AudioFmPreStop=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2862
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/FmService$1;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->exitFm()V
    invoke-static {v0}, Lcom/android/fmradio/FmService;->access$4(Lcom/android/fmradio/FmService;)V

    .line 2863
    iget-object v0, p0, Lcom/android/fmradio/FmService$1;->this$0:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->stopSelf()V

    .line 2854
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2868
    :pswitch_2
    monitor-enter p0

    .line 2869
    :try_start_1
    iget-object v0, p0, Lcom/android/fmradio/FmService$1;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->getForceUse()I
    invoke-static {v0}, Lcom/android/fmradio/FmService;->access$0(Lcom/android/fmradio/FmService;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 2870
    iget-object v0, p0, Lcom/android/fmradio/FmService$1;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsSpeakerUsed:Z
    invoke-static {v0}, Lcom/android/fmradio/FmService;->access$1(Lcom/android/fmradio/FmService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2871
    iget-object v0, p0, Lcom/android/fmradio/FmService$1;->this$0:Lcom/android/fmradio/FmService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/fmradio/FmService;->access$2(Lcom/android/fmradio/FmService;Z)V

    .line 2872
    const-string v0, "FmService"

    const-string v1, "AudioFmPreStop=1"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    iget-object v0, p0, Lcom/android/fmradio/FmService$1;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/fmradio/FmService;->access$3(Lcom/android/fmradio/FmService;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "AudioFmPreStop=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2875
    :cond_1
    iget-object v0, p0, Lcom/android/fmradio/FmService$1;->this$0:Lcom/android/fmradio/FmService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService;->setMute(Z)I

    .line 2876
    iget-object v0, p0, Lcom/android/fmradio/FmService$1;->this$0:Lcom/android/fmradio/FmService;

    const/4 v1, -0x2

    # invokes: Lcom/android/fmradio/FmService;->focusChanged(I)V
    invoke-static {v0, v1}, Lcom/android/fmradio/FmService;->access$5(Lcom/android/fmradio/FmService;I)V

    .line 2868
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 2881
    :pswitch_3
    monitor-enter p0

    .line 2882
    :try_start_2
    iget-object v0, p0, Lcom/android/fmradio/FmService$1;->this$0:Lcom/android/fmradio/FmService;

    const/4 v1, 0x1

    # invokes: Lcom/android/fmradio/FmService;->updateAudioFocusAync(I)V
    invoke-static {v0, v1}, Lcom/android/fmradio/FmService;->access$6(Lcom/android/fmradio/FmService;I)V

    .line 2881
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 2887
    :pswitch_4
    monitor-enter p0

    .line 2888
    :try_start_3
    iget-object v0, p0, Lcom/android/fmradio/FmService$1;->this$0:Lcom/android/fmradio/FmService;

    .line 2889
    const/4 v1, -0x3

    .line 2888
    # invokes: Lcom/android/fmradio/FmService;->updateAudioFocusAync(I)V
    invoke-static {v0, v1}, Lcom/android/fmradio/FmService;->access$6(Lcom/android/fmradio/FmService;I)V

    .line 2887
    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    .line 2852
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
