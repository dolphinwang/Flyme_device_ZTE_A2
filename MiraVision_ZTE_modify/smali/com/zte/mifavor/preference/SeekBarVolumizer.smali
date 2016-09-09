.class public Lcom/zte/mifavor/preference/SeekBarVolumizer;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/preference/SeekBarVolumizer$1;,
        Lcom/zte/mifavor/preference/SeekBarVolumizer$Receiver;,
        Lcom/zte/mifavor/preference/SeekBarVolumizer$Observer;,
        Lcom/zte/mifavor/preference/SeekBarVolumizer$H;,
        Lcom/zte/mifavor/preference/SeekBarVolumizer$Callback;
    }
.end annotation


# static fields
.field private static final CHECK_RINGTONE_PLAYBACK_DELAY_MS:I = 0x3e8

.field private static final MSG_INIT_SAMPLE:I = 0x3

.field private static final MSG_SET_STREAM_VOLUME:I = 0x0

.field private static final MSG_START_SAMPLE:I = 0x1

.field private static final MSG_STOP_SAMPLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SeekBarVolumizer"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Lcom/zte/mifavor/preference/SeekBarVolumizer$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultUri:Landroid/net/Uri;

.field private final mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private final mMaxStreamVolume:I

.field private mOriginalStreamVolume:I

.field private final mReceiver:Lcom/zte/mifavor/preference/SeekBarVolumizer$Receiver;

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private final mStreamType:I

.field private final mUiHandler:Lcom/zte/mifavor/preference/SeekBarVolumizer$H;

.field private mVolumeBeforeMute:I

.field private final mVolumeObserver:Lcom/zte/mifavor/preference/SeekBarVolumizer$Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/zte/mifavor/preference/SeekBarVolumizer$Callback;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamType"    # I
    .param p3, "defaultUri"    # Landroid/net/Uri;
    .param p4, "callback"    # Lcom/zte/mifavor/preference/SeekBarVolumizer$Callback;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, -0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Lcom/zte/mifavor/preference/SeekBarVolumizer$H;

    invoke-direct {v1, p0, v3}, Lcom/zte/mifavor/preference/SeekBarVolumizer$H;-><init>(Lcom/zte/mifavor/preference/SeekBarVolumizer;Lcom/zte/mifavor/preference/SeekBarVolumizer$1;)V

    iput-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mUiHandler:Lcom/zte/mifavor/preference/SeekBarVolumizer$H;

    .line 58
    new-instance v1, Lcom/zte/mifavor/preference/SeekBarVolumizer$Receiver;

    invoke-direct {v1, p0, v3}, Lcom/zte/mifavor/preference/SeekBarVolumizer$Receiver;-><init>(Lcom/zte/mifavor/preference/SeekBarVolumizer;Lcom/zte/mifavor/preference/SeekBarVolumizer$1;)V

    iput-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mReceiver:Lcom/zte/mifavor/preference/SeekBarVolumizer$Receiver;

    .line 63
    iput v2, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mLastProgress:I

    .line 65
    iput v2, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 75
    iput-object p1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 76
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 77
    iput p2, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mStreamType:I

    .line 78
    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SeekBarVolumizer.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 82
    iput-object p4, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mCallback:Lcom/zte/mifavor/preference/SeekBarVolumizer$Callback;

    .line 83
    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 84
    new-instance v1, Lcom/zte/mifavor/preference/SeekBarVolumizer$Observer;

    iget-object v2, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/zte/mifavor/preference/SeekBarVolumizer$Observer;-><init>(Lcom/zte/mifavor/preference/SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mVolumeObserver:Lcom/zte/mifavor/preference/SeekBarVolumizer$Observer;

    .line 85
    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mStreamType:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mVolumeObserver:Lcom/zte/mifavor/preference/SeekBarVolumizer$Observer;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 88
    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mReceiver:Lcom/zte/mifavor/preference/SeekBarVolumizer$Receiver;

    invoke-virtual {v1, v5}, Lcom/zte/mifavor/preference/SeekBarVolumizer$Receiver;->setListening(Z)V

    .line 89
    if-nez p3, :cond_0

    .line 100
    iget v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v6, :cond_1

    .line 101
    invoke-static {p1, v5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p3

    .line 109
    :cond_0
    :goto_0
    iput-object p3, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 110
    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    return-void

    .line 102
    :cond_1
    iget v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 103
    invoke-static {p1, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p3

    goto :goto_0

    .line 105
    :cond_2
    const/4 v1, 0x4

    invoke-static {p1, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p3

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/preference/SeekBarVolumizer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zte/mifavor/preference/SeekBarVolumizer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/preference/SeekBarVolumizer;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mLastProgress:I

    return p1
.end method

.method static synthetic access$400(Lcom/zte/mifavor/preference/SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/preference/SeekBarVolumizer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/mifavor/preference/SeekBarVolumizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/preference/SeekBarVolumizer;

    .prologue
    .line 43
    iget v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method static synthetic access$600(Lcom/zte/mifavor/preference/SeekBarVolumizer;)Lcom/zte/mifavor/preference/SeekBarVolumizer$H;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/preference/SeekBarVolumizer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mUiHandler:Lcom/zte/mifavor/preference/SeekBarVolumizer$H;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/mifavor/preference/SeekBarVolumizer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/preference/SeekBarVolumizer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private onInitSample()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 148
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 151
    :cond_0
    return-void
.end method

.method private onStartSample()V
    .locals 4

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mCallback:Lcom/zte/mifavor/preference/SeekBarVolumizer$Callback;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mCallback:Lcom/zte/mifavor/preference/SeekBarVolumizer$Callback;

    invoke-interface {v1, p0}, Lcom/zte/mifavor/preference/SeekBarVolumizer$Callback;->onSampleStarting(Lcom/zte/mifavor/preference/SeekBarVolumizer;)V

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "SeekBarVolumizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error playing ringtone, stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onStopSample()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 185
    :cond_0
    return-void
.end method

.method private postStartSample()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 154
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    iget-object v2, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 157
    return-void

    .line 155
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 242
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 243
    invoke-direct {p0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->postStartSample()V

    .line 244
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 245
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 141
    const-string v0, "SeekBarVolumizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid SeekBarVolumizer message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mLastProgress:I

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 132
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->onStartSample()V

    goto :goto_0

    .line 135
    :pswitch_2
    invoke-direct {p0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->onStopSample()V

    goto :goto_0

    .line 138
    :pswitch_3
    invoke-direct {p0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->onInitSample()V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public muteVolume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 248
    iget v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    if-eq v0, v2, :cond_0

    .line 249
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 250
    iget v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 251
    invoke-direct {p0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->postStartSample()V

    .line 252
    iput v2, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 259
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 255
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 256
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->postStopSample()V

    .line 257
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 203
    if-nez p3, :cond_0

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;)V
    .locals 2
    .param p1, "volumeStore"    # Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;

    .prologue
    .line 269
    iget v0, p1, Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 270
    iget v0, p1, Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 271
    iget v0, p1, Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;->volume:I

    iput v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mLastProgress:I

    .line 272
    iget v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 274
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;)V
    .locals 1
    .param p1, "volumeStore"    # Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;

    .prologue
    .line 262
    iget v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 263
    iget v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;->volume:I

    .line 264
    iget v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 266
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 218
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->postStartSample()V

    .line 222
    return-void
.end method

.method postSetVolume(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    const/4 v2, 0x0

    .line 212
    iput p1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mLastProgress:I

    .line 213
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 215
    return-void
.end method

.method postStopSample()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 176
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    return-void
.end method

.method public revertVolume()V
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 199
    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 118
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 119
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 120
    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mLastProgress:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mLastProgress:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 121
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 122
    return-void

    .line 120
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    goto :goto_0
.end method

.method public startSample()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->postStartSample()V

    .line 230
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->postStopSample()V

    .line 189
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mVolumeObserver:Lcom/zte/mifavor/preference/SeekBarVolumizer$Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 190
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 191
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer;->mReceiver:Lcom/zte/mifavor/preference/SeekBarVolumizer$Receiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/SeekBarVolumizer$Receiver;->setListening(Z)V

    .line 195
    return-void
.end method

.method public stopSample()V
    .locals 0

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->postStopSample()V

    .line 234
    return-void
.end method
