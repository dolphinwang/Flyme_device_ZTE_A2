.class Landroid/media/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0

    .prologue
    .line 3975
    iput-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/AudioService;
    .param p2, "x1"    # Landroid/media/AudioService$1;

    .prologue
    .line 3975
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;-><init>(Landroid/media/AudioService;)V

    return-void
.end method

.method static synthetic access$5900(Landroid/media/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService$AudioHandler;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 3975
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 4252
    if-eqz p1, :cond_0

    .line 4254
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 4255
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4260
    :cond_0
    :goto_0
    return-void

    .line 4256
    :catch_0
    move-exception v0

    .line 4257
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findDeviceUniqueId(I)Ljava/lang/String;
    .locals 3
    .param p1, "device"    # I

    .prologue
    .line 4274
    const/4 v0, 0x0

    .line 4275
    .local v0, "uniqueId":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 4289
    const-string v0, ""

    .line 4293
    :goto_0
    return-object v0

    .line 4279
    :sswitch_0
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4280
    goto :goto_0

    .line 4284
    :sswitch_1
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uniqueId":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 4285
    .restart local v0    # "uniqueId":Ljava/lang/String;
    goto :goto_0

    .line 4275
    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x4000 -> :sswitch_1
    .end sparse-switch
.end method

.method private onLoadSoundEffects()Z
    .locals 15

    .prologue
    .line 4048
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v10}, Landroid/media/AudioService;->access$1800(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 4049
    :try_start_0
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSystemReady:Z
    invoke-static {v10}, Landroid/media/AudioService;->access$5300(Landroid/media/AudioService;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 4050
    const-string v10, "AudioService"

    const-string/jumbo v12, "onLoadSoundEffects() called before boot complete"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    const/4 v10, 0x0

    monitor-exit v11

    .line 4166
    :goto_0
    return v10

    .line 4054
    :cond_0
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 4055
    const/4 v10, 0x1

    monitor-exit v11

    goto :goto_0

    .line 4165
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 4058
    :cond_1
    :try_start_1
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->loadTouchSoundAssets()V
    invoke-static {v10}, Landroid/media/AudioService;->access$5400(Landroid/media/AudioService;)V

    .line 4060
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    new-instance v12, Landroid/media/SoundPool$Builder;

    invoke-direct {v12}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v12

    new-instance v13, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v13}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v14, 0xd

    invoke-virtual {v13, v14}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v12

    # setter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$1902(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 4067
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$2002(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;

    .line 4068
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    new-instance v12, Landroid/media/AudioService$SoundPoolListenerThread;

    iget-object v13, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {v12, v13}, Landroid/media/AudioService$SoundPoolListenerThread;-><init>(Landroid/media/AudioService;)V

    # setter for: Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$5502(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;

    .line 4069
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;
    invoke-static {v10}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolListenerThread;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioService$SoundPoolListenerThread;->start()V

    .line 4070
    const/4 v0, 0x3

    .local v0, "attempts":I
    move v1, v0

    .line 4071
    .end local v0    # "attempts":I
    .local v1, "attempts":I
    :goto_1
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v10}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    if-nez v10, :cond_2

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-lez v1, :cond_3

    .line 4074
    :try_start_2
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v10}, Landroid/media/AudioService;->access$1800(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v10

    const-wide/16 v12, 0x1388

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v0

    .line 4077
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_1

    .line 4075
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :catch_0
    move-exception v2

    .line 4076
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v10, "AudioService"

    const-string v12, "Interrupted while waiting sound pool listener thread."

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 4077
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_1

    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_2
    move v0, v1

    .line 4080
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :cond_3
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v10}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v10

    if-nez v10, :cond_5

    .line 4081
    const-string v10, "AudioService"

    const-string/jumbo v12, "onLoadSoundEffects() SoundPool listener or thread creation error"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4082
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 4083
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    .line 4084
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$1702(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 4086
    :cond_4
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$5502(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;

    .line 4087
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/SoundPool;->release()V

    .line 4088
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$1902(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 4089
    const/4 v10, 0x0

    monitor-exit v11

    goto/16 :goto_0

    .line 4097
    :cond_5
    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$5600()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v7, v10, [I

    .line 4098
    .local v7, "poolId":[I
    const/4 v4, 0x0

    .local v4, "fileIdx":I
    :goto_2
    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$5600()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_6

    .line 4099
    const/4 v10, -0x1

    aput v10, v7, v4

    .line 4098
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4107
    :cond_6
    const/4 v6, 0x0

    .line 4108
    .local v6, "numSamples":I
    const/4 v3, 0x0

    .local v3, "effect":I
    :goto_3
    const/16 v10, 0xa

    if-ge v3, v10, :cond_a

    .line 4110
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aget v10, v10, v12

    if-nez v10, :cond_7

    .line 4108
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4113
    :cond_7
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x0

    aget v10, v10, v12

    aget v10, v7, v10

    const/4 v12, -0x1

    if-ne v10, v12, :cond_9

    .line 4114
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "/media/audio/ui/"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$5600()Ljava/util/List;

    move-result-object v10

    iget-object v13, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v13}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v3

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4117
    .local v5, "filePath":Ljava/lang/String;
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v12}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v8

    .line 4118
    .local v8, "sampleId":I
    if-gtz v8, :cond_8

    .line 4119
    const-string v10, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Soundpool could not load file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4121
    :cond_8
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aput v8, v10, v12

    .line 4122
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x0

    aget v10, v10, v12

    aput v8, v7, v10

    .line 4123
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 4126
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v8    # "sampleId":I
    :cond_9
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    iget-object v13, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v13}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v3

    const/4 v14, 0x0

    aget v13, v13, v14

    aget v13, v7, v13

    aput v13, v10, v12

    goto/16 :goto_4

    .line 4131
    :cond_a
    if-lez v6, :cond_b

    .line 4132
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v10}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/media/AudioService$SoundPoolCallback;->setSamples([I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4134
    const/4 v0, 0x3

    .line 4135
    const/4 v9, 0x1

    .local v9, "status":I
    move v1, v0

    .line 4136
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    :goto_5
    const/4 v10, 0x1

    if-ne v9, v10, :cond_12

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-lez v1, :cond_c

    .line 4138
    :try_start_4
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v10}, Landroid/media/AudioService;->access$1800(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v10

    const-wide/16 v12, 0x1388

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V

    .line 4139
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v10}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioService$SoundPoolCallback;->status()I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v9

    move v1, v0

    .line 4142
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_5

    .line 4140
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :catch_1
    move-exception v2

    .line 4141
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v10, "AudioService"

    const-string v12, "Interrupted while waiting sound pool callback."

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 4142
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_5

    .line 4145
    .end local v1    # "attempts":I
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "status":I
    .restart local v0    # "attempts":I
    :cond_b
    const/4 v9, -0x1

    .line 4148
    .restart local v9    # "status":I
    :cond_c
    :goto_6
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 4149
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    .line 4150
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$1702(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 4152
    :cond_d
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$5502(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;

    .line 4153
    if-eqz v9, :cond_10

    .line 4154
    const-string v10, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onLoadSoundEffects(), Error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " while loading samples"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4156
    const/4 v3, 0x0

    :goto_7
    const/16 v10, 0xa

    if-ge v3, v10, :cond_f

    .line 4157
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aget v10, v10, v12

    if-lez v10, :cond_e

    .line 4158
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    const/4 v13, -0x1

    aput v13, v10, v12

    .line 4156
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 4162
    :cond_f
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/SoundPool;->release()V

    .line 4163
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$1902(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 4165
    :cond_10
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4166
    if-nez v9, :cond_11

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_0

    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    :cond_12
    move v0, v1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    goto :goto_6
.end method

.method private onPersistSafeVolumeState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 4267
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_safe_volume_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4270
    return-void
.end method

.method private onPlaySoundEffect(II)V
    .locals 11
    .param p1, "effectType"    # I
    .param p2, "volume"    # I

    .prologue
    .line 4201
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/AudioService;->access$1800(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 4203
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService$AudioHandler;->onLoadSoundEffects()Z

    .line 4205
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4206
    monitor-exit v10

    .line 4249
    :goto_0
    return-void

    .line 4210
    :cond_0
    if-gez p2, :cond_1

    .line 4211
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    # getter for: Landroid/media/AudioService;->sSoundEffectVolumeDb:I
    invoke-static {}, Landroid/media/AudioService;->access$5800()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v2, v0

    .line 4216
    .local v2, "volFloat":F
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v0}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)[[I

    move-result-object v0

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_2

    .line 4217
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v1}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)[[I

    move-result-object v1

    aget-object v1, v1, p1

    const/4 v3, 0x1

    aget v1, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 4248
    :goto_2
    monitor-exit v10

    goto :goto_0

    .end local v2    # "volFloat":F
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4213
    :cond_1
    int-to-float v0, p2

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v2, v0, v1

    .restart local v2    # "volFloat":F
    goto :goto_1

    .line 4220
    :cond_2
    :try_start_1
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4222
    .local v9, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$5600()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4224
    .local v8, "filePath":Ljava/lang/String;
    invoke-virtual {v9, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 4225
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 4226
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->prepare()V

    .line 4227
    invoke-virtual {v9, v2}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 4228
    new-instance v0, Landroid/media/AudioService$AudioHandler$1;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioHandler$1;-><init>(Landroid/media/AudioService$AudioHandler;)V

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 4233
    new-instance v0, Landroid/media/AudioService$AudioHandler$2;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioHandler$2;-><init>(Landroid/media/AudioService$AudioHandler;)V

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 4239
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->start()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 4240
    .end local v8    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 4241
    .local v7, "ex":Ljava/io/IOException;
    :try_start_3
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IOException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4242
    .end local v7    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 4243
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4244
    .end local v7    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 4245
    .local v7, "ex":Ljava/lang/IllegalStateException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method

.method private onUnloadSoundEffects()V
    .locals 7

    .prologue
    .line 4175
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/media/AudioService;->access$1800(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 4176
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    if-nez v3, :cond_0

    .line 4177
    monitor-exit v4

    .line 4198
    :goto_0
    return-void

    .line 4180
    :cond_0
    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$5600()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 4181
    .local v2, "poolId":[I
    const/4 v1, 0x0

    .local v1, "fileIdx":I
    :goto_1
    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$5600()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 4182
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 4181
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4185
    :cond_1
    const/4 v0, 0x0

    .local v0, "effect":I
    :goto_2
    const/16 v3, 0xa

    if-ge v0, v3, :cond_4

    .line 4186
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gtz v3, :cond_3

    .line 4185
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4189
    :cond_3
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    aget v3, v2, v3

    if-nez v3, :cond_2

    .line 4190
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v5, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v5}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 4191
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v3, v5

    .line 4192
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, -0x1

    aput v5, v2, v3

    goto :goto_3

    .line 4197
    .end local v0    # "effect":I
    .end local v1    # "fileIdx":I
    .end local v2    # "poolId":[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4195
    .restart local v0    # "effect":I
    .restart local v1    # "fileIdx":I
    .restart local v2    # "poolId":[I
    :cond_4
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 4196
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$1902(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 4197
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private persistRingerMode(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .prologue
    .line 4039
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4043
    :goto_0
    return-void

    .line 4042
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private persistVolume(Landroid/media/AudioService$VolumeStreamState;I)V
    .locals 4
    .param p1, "streamState"    # Landroid/media/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    .line 4026
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4036
    :cond_0
    :goto_0
    return-void

    .line 4029
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->isPlatformTelevision()Z
    invoke-static {v0}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_2

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$4900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4032
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private setAllVolumes(Landroid/media/AudioService$VolumeStreamState;)V
    .locals 4
    .param p1, "streamState"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 4013
    invoke-virtual {p1}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 4016
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 4017
    .local v0, "numStreamTypes":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "streamType":I
    :goto_0
    if-ltz v1, :cond_1

    .line 4018
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$4900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v2}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)[I

    move-result-object v2

    aget v2, v2, v1

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$4900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 4020
    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v2}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 4017
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4023
    :cond_1
    return-void
.end method

.method private setDeviceVolume(Landroid/media/AudioService$VolumeStreamState;I)V
    .locals 10
    .param p1, "streamState"    # Landroid/media/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    .line 3979
    const-class v1, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 3981
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 3984
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    .line 3985
    .local v7, "numStreamTypes":I
    add-int/lit8 v9, v7, -0x1

    .local v9, "streamType":I
    :goto_0
    if-ltz v9, :cond_2

    .line 3986
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$4900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eq v9, v0, :cond_1

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v0}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)[I

    move-result-object v0

    aget v0, v0, v9

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$4900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 3990
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v0, v9}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;I)I

    move-result v8

    .line 3991
    .local v8, "streamDevice":I
    if-eq p2, v8, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit16 v0, p2, 0x380

    if-eqz v0, :cond_0

    .line 3993
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v0}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 3995
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v0}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, v8}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 3985
    .end local v8    # "streamDevice":I
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 3998
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4000
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/16 v6, 0x1f4

    move v3, p2

    move-object v5, p1

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4008
    return-void

    .line 3998
    .end local v7    # "numStreamTypes":I
    .end local v9    # "streamType":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setForceUse(II)V
    .locals 0
    .param p1, "usage"    # I
    .param p2, "config"    # I

    .prologue
    .line 4263
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4264
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4299
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 4567
    :cond_0
    :goto_0
    return-void

    .line 4302
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->setDeviceVolume(Landroid/media/AudioService$VolumeStreamState;I)V

    goto :goto_0

    .line 4306
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/media/AudioService$AudioHandler;->setAllVolumes(Landroid/media/AudioService$VolumeStreamState;)V

    goto :goto_0

    .line 4310
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->persistVolume(Landroid/media/AudioService$VolumeStreamState;I)V

    goto :goto_0

    .line 4314
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4317
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "volume_master"

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    goto :goto_0

    .line 4324
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4327
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "volume_master_mute"

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 4336
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/media/AudioService$AudioHandler;->persistRingerMode(I)V

    goto :goto_0

    .line 4340
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSystemReady:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$5300(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v2

    if-eqz v2, :cond_2

    .line 4342
    :cond_1
    const-string v2, "AudioService"

    const-string v3, "Media server died."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4343
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v2}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 4347
    :cond_2
    const-string v2, "AudioService"

    const-string v3, "Media server started."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4353
    const-string/jumbo v2, "restarting=true"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4355
    # invokes: Landroid/media/AudioService;->readAndSetLowRamDevice()V
    invoke-static {}, Landroid/media/AudioService;->access$6000()V

    .line 4358
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 4359
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    .line 4360
    .local v24, "set":Ljava/util/Set;
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 4361
    .local v13, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4362
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 4363
    .local v11, "device":Ljava/util/Map$Entry;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v5, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto :goto_1

    .line 4368
    .end local v11    # "device":Ljava/util/Map$Entry;
    .end local v13    # "i":Ljava/util/Iterator;
    .end local v24    # "set":Ljava/util/Set;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v13    # "i":Ljava/util/Iterator;
    .restart local v24    # "set":Ljava/util/Set;
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4370
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMode:I
    invoke-static {v2}, Landroid/media/AudioService;->access$6100(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setPhoneState(I)I

    .line 4373
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mForcedUseForComm:I
    invoke-static {v3}, Landroid/media/AudioService;->access$6200(Landroid/media/AudioService;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4374
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mForcedUseForComm:I
    invoke-static {v3}, Landroid/media/AudioService;->access$6200(Landroid/media/AudioService;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4375
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v2}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xb

    :goto_2
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4379
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v19

    .line 4380
    .local v19, "numStreamTypes":I
    add-int/lit8 v26, v19, -0x1

    .local v26, "streamType":I
    :goto_3
    if-ltz v26, :cond_5

    .line 4381
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v2}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v25, v2, v26

    .line 4382
    .local v25, "streamState":Landroid/media/AudioService$VolumeStreamState;
    const/4 v2, 0x0

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService$VolumeStreamState;->access$6300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    move/from16 v0, v26

    invoke-static {v0, v2, v3}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 4384
    invoke-virtual/range {v25 .. v25}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 4380
    add-int/lit8 v26, v26, -0x1

    goto :goto_3

    .line 4375
    .end local v19    # "numStreamTypes":I
    .end local v25    # "streamState":Landroid/media/AudioService$VolumeStreamState;
    .end local v26    # "streamType":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 4388
    .restart local v19    # "numStreamTypes":I
    .restart local v26    # "streamType":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-virtual {v3}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v3

    const/4 v4, 0x0

    # invokes: Landroid/media/AudioService;->setRingerModeInt(IZ)V
    invoke-static {v2, v3, v4}, Landroid/media/AudioService;->access$6400(Landroid/media/AudioService;IZ)V

    .line 4391
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->restoreMasterVolume()V
    invoke-static {v2}, Landroid/media/AudioService;->access$6500(Landroid/media/AudioService;)V

    .line 4394
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMonitorOrientation:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$6600(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4395
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->setOrientationForAudioSystem()V
    invoke-static {v2}, Landroid/media/AudioService;->access$6700(Landroid/media/AudioService;)V

    .line 4397
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMonitorRotation:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4398
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->setRotationForAudioSystem()V
    invoke-static {v2}, Landroid/media/AudioService;->access$800(Landroid/media/AudioService;)V

    .line 4401
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/media/AudioService;->access$6900(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4402
    const/4 v4, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    :goto_4
    invoke-static {v4, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4405
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4407
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4408
    const/4 v4, 0x3

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mDockAudioMediaEnabled:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0x8

    :goto_5
    invoke-static {v4, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4411
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 4413
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;
    invoke-static {v2}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 4414
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;
    invoke-static {v2}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v3

    monitor-enter v3

    .line 4415
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;
    invoke-static {v2}, Landroid/media/AudioService;->access$7400(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 4416
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z
    invoke-static {v4}, Landroid/media/AudioService;->access$7500(Landroid/media/AudioService;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/AudioService;->setHdmiSystemAudioSupported(Z)I

    .line 4418
    :cond_8
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 4421
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$7600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 4422
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$7600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/media/AudioService$AudioPolicyProxy;

    .line 4423
    .local v21, "policy":Landroid/media/AudioService$AudioPolicyProxy;
    invoke-virtual/range {v21 .. v21}, Landroid/media/AudioService$AudioPolicyProxy;->connectMixes()V

    goto :goto_6

    .line 4425
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v21    # "policy":Landroid/media/AudioService$AudioPolicyProxy;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 4402
    :cond_a
    const/16 v2, 0xa

    goto :goto_4

    .line 4405
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 4408
    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    .line 4411
    :catchall_3
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2

    .line 4418
    :catchall_4
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v2

    .line 4425
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_c
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 4428
    # getter for: Landroid/media/AudioService;->IS_DOLBY_DAP_SUPPORT:Z
    invoke-static {}, Landroid/media/AudioService;->access$7700()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4432
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v2, "media_server_started"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4433
    .local v10, "broadcast":Landroid/content/Intent;
    const-string v2, "com.dolby"

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4434
    const/high16 v2, 0x4000000

    invoke-virtual {v10, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4435
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$600(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4441
    .end local v10    # "broadcast":Landroid/content/Intent;
    :cond_d
    const-string/jumbo v2, "restarting=false"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4445
    .end local v13    # "i":Ljava/util/Iterator;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v19    # "numStreamTypes":I
    .end local v24    # "set":Ljava/util/Set;
    .end local v26    # "streamType":I
    :sswitch_7
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioHandler;->onUnloadSoundEffects()V

    goto/16 :goto_0

    .line 4451
    :sswitch_8
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioHandler;->onLoadSoundEffects()Z

    move-result v15

    .line 4452
    .local v15, "loaded":Z
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 4453
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/media/AudioService$LoadSoundEffectReply;

    .line 4454
    .local v22, "reply":Landroid/media/AudioService$LoadSoundEffectReply;
    monitor-enter v22

    .line 4455
    if-eqz v15, :cond_e

    const/4 v2, 0x0

    :goto_7
    :try_start_a
    move-object/from16 v0, v22

    iput v2, v0, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 4456
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notify()V

    .line 4457
    monitor-exit v22

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v22
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v2

    .line 4455
    :cond_e
    const/4 v2, -0x1

    goto :goto_7

    .line 4462
    .end local v15    # "loaded":Z
    .end local v22    # "reply":Landroid/media/AudioService$LoadSoundEffectReply;
    :sswitch_9
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->onPlaySoundEffect(II)V

    goto/16 :goto_0

    .line 4467
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 4468
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v4, v2}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;Ljava/lang/String;)V

    .line 4469
    monitor-exit v3

    goto/16 :goto_0

    :catchall_6
    move-exception v2

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v2

    .line 4474
    :sswitch_b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->setForceUse(II)V

    goto/16 :goto_0

    .line 4478
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v2}, Landroid/media/AudioService;->access$7800(Landroid/media/AudioService;)V

    goto/16 :goto_0

    .line 4482
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/media/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    invoke-static {v3, v4, v5, v2}, Landroid/media/AudioService;->access$7900(Landroid/media/AudioService;IILjava/lang/String;)V

    .line 4483
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Landroid/media/AudioService;->access$8000(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 4487
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v3, v2, v4}, Landroid/media/AudioService;->access$8100(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 4488
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Landroid/media/AudioService;->access$8000(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 4492
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v3, v2, v4}, Landroid/media/AudioService;->access$8200(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 4493
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Landroid/media/AudioService;->access$8000(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 4497
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v2, v2, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v9

    .line 4498
    .local v9, "N":I
    if-lez v9, :cond_f

    .line 4500
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v3, v2, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v3

    .line 4501
    :try_start_c
    new-instance v23, Landroid/media/AudioRoutesInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v2, v2, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 4502
    .local v23, "routes":Landroid/media/AudioRoutesInfo;
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 4503
    :goto_8
    if-lez v9, :cond_f

    .line 4504
    add-int/lit8 v9, v9, -0x1

    .line 4505
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v2, v2, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v20

    check-cast v20, Landroid/media/IAudioRoutesObserver;

    .line 4507
    .local v20, "obs":Landroid/media/IAudioRoutesObserver;
    :try_start_d
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_8

    .line 4508
    :catch_0
    move-exception v2

    goto :goto_8

    .line 4502
    .end local v20    # "obs":Landroid/media/IAudioRoutesObserver;
    .end local v23    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_7
    move-exception v2

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v2

    .line 4512
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v2, v2, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4515
    # getter for: Landroid/media/AudioService;->IS_DOLBY_DAP_SUPPORT:Z
    invoke-static {}, Landroid/media/AudioService;->access$7700()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4516
    new-instance v18, Landroid/content/Intent;

    const-string v2, "DOLBY_DEVICE_CHANGE"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4517
    .local v18, "newIntent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4518
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;I)I

    move-result v17

    .line 4519
    .local v17, "newDevice":I
    const-string v2, "Device"

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4521
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/media/AudioService$AudioHandler;->findDeviceUniqueId(I)Ljava/lang/String;

    move-result-object v12

    .line 4522
    .local v12, "deviceUniqueId":Ljava/lang/String;
    const-string v2, "DeviceUniqueId"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4524
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v18

    # invokes: Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$8300(Landroid/media/AudioService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4531
    .end local v9    # "N":I
    .end local v12    # "deviceUniqueId":Ljava/lang/String;
    .end local v17    # "newDevice":I
    .end local v18    # "newIntent":Landroid/content/Intent;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->onCheckMusicActive()V
    invoke-static {v2}, Landroid/media/AudioService;->access$8400(Landroid/media/AudioService;)V

    goto/16 :goto_0

    .line 4535
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->onSendBecomingNoisyIntent()V
    invoke-static {v2}, Landroid/media/AudioService;->access$8500(Landroid/media/AudioService;)V

    goto/16 :goto_0

    .line 4540
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x11

    if-ne v2, v4, :cond_10

    const/4 v2, 0x1

    :goto_9
    # invokes: Landroid/media/AudioService;->onConfigureSafeVolume(Z)V
    invoke-static {v3, v2}, Landroid/media/AudioService;->access$8600(Landroid/media/AudioService;Z)V

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x0

    goto :goto_9

    .line 4543
    :sswitch_14
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/media/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    goto/16 :goto_0

    .line 4547
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/AudioService;->onBroadcastScoConnectionState(I)V
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$8700(Landroid/media/AudioService;I)V

    goto/16 :goto_0

    .line 4551
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->onSystemReady()V

    goto/16 :goto_0

    .line 4555
    :sswitch_17
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 4556
    .local v16, "musicActiveMs":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "unsafe_volume_music_active_ms"

    const/4 v4, -0x2

    move/from16 v0, v16

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .line 4561
    .end local v16    # "musicActiveMs":I
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "microphone_mute"

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .line 4299
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_9
        0x6 -> :sswitch_a
        0x7 -> :sswitch_8
        0x8 -> :sswitch_b
        0x9 -> :sswitch_c
        0xa -> :sswitch_1
        0xb -> :sswitch_4
        0xc -> :sswitch_10
        0xd -> :sswitch_b
        0xe -> :sswitch_11
        0xf -> :sswitch_12
        0x10 -> :sswitch_13
        0x11 -> :sswitch_13
        0x12 -> :sswitch_14
        0x13 -> :sswitch_15
        0x14 -> :sswitch_7
        0x15 -> :sswitch_16
        0x16 -> :sswitch_17
        0x17 -> :sswitch_18
        0x64 -> :sswitch_d
        0x65 -> :sswitch_e
        0x66 -> :sswitch_f
    .end sparse-switch
.end method
