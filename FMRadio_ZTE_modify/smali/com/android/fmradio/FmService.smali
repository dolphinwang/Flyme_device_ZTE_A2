.class public Lcom/android/fmradio/FmService;
.super Landroid/app/Service;
.source "FmService.java"

# interfaces
.implements Lcom/android/fmradio/FmRecorder$OnRecorderStateChangedListener;
.implements Lcom/android/fmradio/ShakeListener$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;,
        Lcom/android/fmradio/FmService$FmRadioServiceHandler;,
        Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;,
        Lcom/android/fmradio/FmService$OnChannelListListener;,
        Lcom/android/fmradio/FmService$Record;,
        Lcom/android/fmradio/FmService$RenderThread;,
        Lcom/android/fmradio/FmService$SdcardListener;,
        Lcom/android/fmradio/FmService$ServiceBinder;
    }
.end annotation


# static fields
.field private static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field public static final ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

.field public static final ACTION_TOFMSERVICE_HEADSET_TIMEUP:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_HEADSET_TIMEUP"

.field public static final ACTION_TOFMSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

.field public static final ACTION_TOFMSERVICE_SAVEFAVOR:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SAVEFAVOR"

.field public static final ACTION_TOFMSERVICE_SEEKNEXT:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKNEXT"

.field public static final ACTION_TOFMSERVICE_SEEKPREV:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKPREV"

.field public static final ACTION_TOFMSERVICE_SHOWTOAST:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SHOWTOAST"

.field public static final ACTION_TOFMSERVICE_STARTSCAN:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STARTSCAN"

.field public static final ACTION_TOFMSERVICE_STOPSCAN:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STOPSCAN"

.field public static final ACTION_TOFMSERVICE_TUNESTATION:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_TUNESTATION"

.field private static final AUDIO_FORMAT:I = 0x2

.field private static final AUDIO_FRAMES_TO_IGNORE_COUNT:I = 0x3

.field private static final CHANNEL_CONFIG:I = 0x3

.field private static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static DURING_POWER_UP:I = 0x0

.field private static final FM_FREQUENCY:Ljava/lang/String; = "frequency"

.field private static final FM_SEEK_NEXT:Ljava/lang/String; = "fmradio.seek.next"

.field private static final FM_SEEK_PREVIOUS:Ljava/lang/String; = "fmradio.seek.previous"

.field private static final FM_TURN_OFF:Ljava/lang/String; = "fmradio.turnoff"

.field private static final FOR_PROPRIETARY:I = 0x1

.field private static final HEADSET_PLUG_IN:I = 0x1

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final OPTION:Ljava/lang/String; = "option"

.field public static POWER_DOWN:I = 0x0

.field public static POWER_UP:I = 0x0

.field private static final RDS_EVENT_AF:I = 0x80

.field private static final RDS_EVENT_LAST_RADIOTEXT:I = 0x40

.field private static final RDS_EVENT_PROGRAMNAME:I = 0x8

.field private static final RECODING_FILE_NAME:Ljava/lang/String; = "name"

.field private static final RECORD_BUF_SIZE:I

.field private static final SAMPLE_RATE:I = 0xac44

.field private static final SECONDS_TO_WAIT_BEFORE_SHUT_FM_WHEN_HEADSET_PLUG_OUT:J = 0x3cL

.field private static final SOUND_POWER_DOWN_MSG:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final TAG:Ljava/lang/String; = "FmService"

.field private static sActivityIsOnStop:Z

.field private static sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;

.field private static sRecordingSdcard:Ljava/lang/String;


# instance fields
.field private lastShakeTime:J

.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPatch:Landroid/media/AudioPatch;

.field private mAudioPortUpdateListener:Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;

.field private mAudioRecord:Landroid/media/AudioRecord;

.field mAudioSink:Landroid/media/AudioDevicePort;

.field mAudioSource:Landroid/media/AudioDevicePort;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private final mBinder:Landroid/os/IBinder;

.field private mBroadcastReceiver:Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentStation:I

.field mFmRecorder:Lcom/android/fmradio/FmRecorder;

.field private mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

.field private mForcedUseForMedia:I

.field private mIsAudioFocusHeld:Z

.field private mIsDeviceOpen:Z

.field private mIsDistanceExceed:Z

.field private mIsFmFavoriteForeground:Z

.field private mIsFmMainForeground:Z

.field private mIsFmRecordForeground:Z

.field private mIsInCountDownMode:Z

.field private mIsInRecordingMode:Z

.field private mIsMuted:Z

.field private mIsNativeScanning:Z

.field private mIsNativeSeeking:Z

.field private mIsParametersSet:Z

.field private mIsPlaying192KHz:Z

.field private mIsPowerDown:Z

.field private mIsRdsThreadExit:Z

.field private mIsRecordingPermissible:Z

.field private mIsRender:Z

.field private mIsScanning:Z

.field private mIsSeeking:Z

.field private mIsServiceInited:Z

.field private mIsSpeakerUsed:Z

.field private mIsStopScanCalled:Z

.field private mModifiedRecordingName:Ljava/lang/String;

.field private mPausedByTransientLossOfFocus:Z

.field private mPowerStatus:I

.field private mPrevBtHeadsetState:Z

.field private mPsString:Ljava/lang/String;

.field private mRdsThread:Ljava/lang/Thread;

.field private mRecordState:I

.field private mRecorderErrorType:I

.field private mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fmradio/FmService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteviews:Landroid/widget/RemoteViews;

.field private mRenderLock:Ljava/lang/Object;

.field private mRenderThread:Ljava/lang/Thread;

.field private mRenderingLock:Ljava/lang/Object;

.field private mRtTextString:Ljava/lang/String;

.field private mSdcardListener:Landroid/content/BroadcastReceiver;

.field private mSdcardStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mStopRecordingLock:Ljava/lang/Object;

.field private mValueHeadSetPlug:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 149
    sput-object v3, Lcom/android/fmradio/FmService;->sRecordingSdcard:Ljava/lang/String;

    .line 183
    sput v1, Lcom/android/fmradio/FmService;->POWER_UP:I

    .line 184
    const/4 v0, 0x1

    sput v0, Lcom/android/fmradio/FmService;->DURING_POWER_UP:I

    .line 185
    sput v2, Lcom/android/fmradio/FmService;->POWER_DOWN:I

    .line 236
    sput-object v3, Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;

    .line 238
    sput-boolean v1, Lcom/android/fmradio/FmService;->sActivityIsOnStop:Z

    .line 609
    const v0, 0xac44

    .line 610
    const/4 v1, 0x3

    .line 609
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    sput v0, Lcom/android/fmradio/FmService;->RECORD_BUF_SIZE:I

    .line 610
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 133
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    .line 134
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mSdcardListener:Landroid/content/BroadcastReceiver;

    .line 135
    iput v0, p0, Lcom/android/fmradio/FmService;->mRecordState:I

    .line 136
    iput v0, p0, Lcom/android/fmradio/FmService;->mRecorderErrorType:I

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mSdcardStateMap:Ljava/util/HashMap;

    .line 143
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mModifiedRecordingName:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mRecords:Ljava/util/ArrayList;

    .line 147
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsInRecordingMode:Z

    .line 151
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsInCountDownMode:Z

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mPsString:Ljava/lang/String;

    .line 157
    const-string v0, ""

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mRtTextString:Ljava/lang/String;

    .line 161
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mRdsThread:Ljava/lang/Thread;

    .line 163
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsRdsThreadExit:Z

    .line 167
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsNativeScanning:Z

    .line 169
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsScanning:Z

    .line 171
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsNativeSeeking:Z

    .line 173
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsSeeking:Z

    .line 175
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsStopScanCalled:Z

    .line 177
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsSpeakerUsed:Z

    .line 179
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsDeviceOpen:Z

    .line 181
    sget v0, Lcom/android/fmradio/FmService;->POWER_DOWN:I

    iput v0, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    .line 187
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsServiceInited:Z

    .line 190
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsPowerDown:Z

    .line 192
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsDistanceExceed:Z

    .line 194
    iput-boolean v1, p0, Lcom/android/fmradio/FmService;->mIsFmMainForeground:Z

    .line 196
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsRecordingPermissible:Z

    .line 198
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsFmFavoriteForeground:Z

    .line 200
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsFmRecordForeground:Z

    .line 203
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    .line 204
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    .line 205
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mActivityManager:Landroid/app/ActivityManager;

    .line 207
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 209
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsAudioFocusHeld:Z

    .line 211
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mPausedByTransientLossOfFocus:Z

    .line 212
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    .line 214
    iput v1, p0, Lcom/android/fmradio/FmService;->mValueHeadSetPlug:I

    .line 216
    new-instance v0, Lcom/android/fmradio/FmService$ServiceBinder;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FmService$ServiceBinder;-><init>(Lcom/android/fmradio/FmService;)V

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mBinder:Landroid/os/IBinder;

    .line 218
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mBroadcastReceiver:Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;

    .line 222
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mPrevBtHeadsetState:Z

    .line 234
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mStopRecordingLock:Ljava/lang/Object;

    .line 240
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsMuted:Z

    .line 243
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mAudioPatch:Landroid/media/AudioPatch;

    .line 244
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mRenderLock:Ljava/lang/Object;

    .line 245
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mRenderingLock:Ljava/lang/Object;

    .line 246
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsParametersSet:Z

    .line 250
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mRemoteviews:Landroid/widget/RemoteViews;

    .line 252
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/fmradio/FmService;->lastShakeTime:J

    .line 603
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mRenderThread:Ljava/lang/Thread;

    .line 604
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;

    .line 605
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;

    .line 611
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsRender:Z

    .line 613
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 614
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mAudioSink:Landroid/media/AudioDevicePort;

    .line 616
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsPlaying192KHz:Z

    .line 1801
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mAudioPortUpdateListener:Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;

    .line 2843
    new-instance v0, Lcom/android/fmradio/FmService$1;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FmService$1;-><init>(Lcom/android/fmradio/FmService;)V

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 77
    return-void
.end method

.method static synthetic access$0(Lcom/android/fmradio/FmService;)I
    .locals 1

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->getForceUse()I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/android/fmradio/FmService;)Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsSpeakerUsed:Z

    return v0
.end method

.method static synthetic access$10(Lcom/android/fmradio/FmService;)Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsServiceInited:Z

    return v0
.end method

.method static synthetic access$11(Lcom/android/fmradio/FmService;)Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsRecordingPermissible:Z

    return v0
.end method

.method static synthetic access$12(Lcom/android/fmradio/FmService;)I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    return v0
.end method

.method static synthetic access$13(Lcom/android/fmradio/FmService;Z)V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->setForceUse(Z)V

    return-void
.end method

.method static synthetic access$14(Lcom/android/fmradio/FmService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$15(Lcom/android/fmradio/FmService;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 3058
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$16(Lcom/android/fmradio/FmService;)I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    return v0
.end method

.method static synthetic access$17(Lcom/android/fmradio/FmService;)Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsNativeSeeking:Z

    return v0
.end method

.method static synthetic access$18(Lcom/android/fmradio/FmService;)Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsScanning:Z

    return v0
.end method

.method static synthetic access$19()Lcom/android/fmradio/FmService$OnChannelListListener;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/fmradio/FmService;Z)V
    .locals 0

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/android/fmradio/FmService;->mIsParametersSet:Z

    return-void
.end method

.method static synthetic access$20(Lcom/android/fmradio/FmService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 2700
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->updateSdcardStateMap(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$21(Lcom/android/fmradio/FmService;)Landroid/media/AudioRecord;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$22(Lcom/android/fmradio/FmService;)Landroid/media/AudioTrack;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$23()I
    .locals 1

    .prologue
    .line 609
    sget v0, Lcom/android/fmradio/FmService;->RECORD_BUF_SIZE:I

    return v0
.end method

.method static synthetic access$24(Lcom/android/fmradio/FmService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mRenderingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$25(Lcom/android/fmradio/FmService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mRenderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$26(Lcom/android/fmradio/FmService;)Landroid/media/AudioPatch;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioPatch:Landroid/media/AudioPatch;

    return-object v0
.end method

.method static synthetic access$27(Lcom/android/fmradio/FmService;)Z
    .locals 1

    .prologue
    .line 611
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsRender:Z

    return v0
.end method

.method static synthetic access$28(Lcom/android/fmradio/FmService;)Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mPrevBtHeadsetState:Z

    return v0
.end method

.method static synthetic access$29(Lcom/android/fmradio/FmService;Z)V
    .locals 0

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/android/fmradio/FmService;->mPrevBtHeadsetState:Z

    return-void
.end method

.method static synthetic access$3(Lcom/android/fmradio/FmService;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$30(Lcom/android/fmradio/FmService;Z)V
    .locals 0

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/android/fmradio/FmService;->mIsSpeakerUsed:Z

    return-void
.end method

.method static synthetic access$31(Lcom/android/fmradio/FmService;)Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsAudioFocusHeld:Z

    return v0
.end method

.method static synthetic access$32(Lcom/android/fmradio/FmService;)Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsPlaying192KHz:Z

    return v0
.end method

.method static synthetic access$33(Lcom/android/fmradio/FmService;)V
    .locals 0

    .prologue
    .line 1932
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->releaseAudioPatch()V

    return-void
.end method

.method static synthetic access$34(Lcom/android/fmradio/FmService;)V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->startRender()V

    return-void
.end method

.method static synthetic access$35(Lcom/android/fmradio/FmService;Ljava/util/ArrayList;)Z
    .locals 1

    .prologue
    .line 2375
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->isPatchMixerToDeviceRemoved(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$36(Lcom/android/fmradio/FmService;Ljava/util/ArrayList;)Z
    .locals 1

    .prologue
    .line 2250
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->isPatchMixerToBt(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$37(Lcom/android/fmradio/FmService;)V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->notifySpeakerModeChange()V

    return-void
.end method

.method static synthetic access$38(Lcom/android/fmradio/FmService;)V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->stopRender()V

    return-void
.end method

.method static synthetic access$39(Lcom/android/fmradio/FmService;Ljava/util/ArrayList;)Z
    .locals 1

    .prologue
    .line 2279
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->isPatchMixerToEarphone(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/android/fmradio/FmService;)V
    .locals 0

    .prologue
    .line 2011
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->exitFm()V

    return-void
.end method

.method static synthetic access$40(Lcom/android/fmradio/FmService;Ljava/util/ArrayList;)Z
    .locals 1

    .prologue
    .line 2394
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->isOutputDeviceChanged(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$41(Lcom/android/fmradio/FmService;)V
    .locals 0

    .prologue
    .line 1646
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->createAudioPatchByEarphone()V

    return-void
.end method

.method static synthetic access$42(Lcom/android/fmradio/FmService;Ljava/util/ArrayList;)Z
    .locals 1

    .prologue
    .line 2311
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->isPatchMixerToSpeaker(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$43(Lcom/android/fmradio/FmService;)V
    .locals 0

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->createAudioPatchBySpeaker()V

    return-void
.end method

.method static synthetic access$44(Lcom/android/fmradio/FmService;Ljava/util/ArrayList;)Z
    .locals 1

    .prologue
    .line 2342
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->isPatchContainSpeakerAndEarphone(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$45(Lcom/android/fmradio/FmService;)V
    .locals 0

    .prologue
    .line 1750
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->createAudioPatchBySpeakerAndEarphone()V

    return-void
.end method

.method static synthetic access$46(Lcom/android/fmradio/FmService;)V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->stopAudioTrack()V

    return-void
.end method

.method static synthetic access$47(Lcom/android/fmradio/FmService;Z)V
    .locals 0

    .prologue
    .line 2226
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->enableFmAudio(Z)V

    return-void
.end method

.method static synthetic access$48(Lcom/android/fmradio/FmService;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 3496
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->handlePowerUp(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$49(Lcom/android/fmradio/FmService;)V
    .locals 0

    .prologue
    .line 3481
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->handlePowerDown()V

    return-void
.end method

.method static synthetic access$5(Lcom/android/fmradio/FmService;I)V
    .locals 0

    .prologue
    .line 2801
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->focusChanged(I)V

    return-void
.end method

.method static synthetic access$50(Lcom/android/fmradio/FmService;)Z
    .locals 1

    .prologue
    .line 929
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->powerDown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$51(Lcom/android/fmradio/FmService;)Z
    .locals 1

    .prologue
    .line 778
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->closeDevice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$52(Lcom/android/fmradio/FmService;)I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/android/fmradio/FmService;->mRecordState:I

    return v0
.end method

.method static synthetic access$53(Lcom/android/fmradio/FmService;F)Z
    .locals 1

    .prologue
    .line 994
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->tuneStation(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$54(Lcom/android/fmradio/FmService;Z)V
    .locals 0

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/fmradio/FmService;->mIsSeeking:Z

    return-void
.end method

.method static synthetic access$55(Lcom/android/fmradio/FmService;FZ)F
    .locals 1

    .prologue
    .line 1060
    invoke-direct {p0, p1, p2}, Lcom/android/fmradio/FmService;->seekStation(FZ)F

    move-result v0

    return v0
.end method

.method static synthetic access$56(Lcom/android/fmradio/FmService;Z)V
    .locals 0

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/android/fmradio/FmService;->mIsScanning:Z

    return-void
.end method

.method static synthetic access$57(Lcom/android/fmradio/FmService;F)Z
    .locals 1

    .prologue
    .line 821
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->powerUp(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$58(Lcom/android/fmradio/FmService;)[I
    .locals 1

    .prologue
    .line 1085
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->startScan()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$59(Lcom/android/fmradio/FmService;[I)[I
    .locals 1

    .prologue
    .line 3145
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->updateStations([I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/fmradio/FmService;I)V
    .locals 0

    .prologue
    .line 2905
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->updateAudioFocusAync(I)V

    return-void
.end method

.method static synthetic access$60(Lcom/android/fmradio/FmService;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 3086
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->notifyCurrentActivityStateChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$61(Lcom/android/fmradio/FmService;I)V
    .locals 0

    .prologue
    .line 2920
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->updateAudioFocus(I)V

    return-void
.end method

.method static synthetic access$62(Lcom/android/fmradio/FmService;Z)I
    .locals 1

    .prologue
    .line 1174
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->setRds(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$63(Lcom/android/fmradio/FmService;)I
    .locals 1

    .prologue
    .line 1214
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->activeAf()I

    move-result v0

    return v0
.end method

.method static synthetic access$64(Lcom/android/fmradio/FmService;)V
    .locals 0

    .prologue
    .line 1383
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->startRecording()V

    return-void
.end method

.method static synthetic access$65(Lcom/android/fmradio/FmService;)Z
    .locals 1

    .prologue
    .line 1423
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->stopRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$66(Lcom/android/fmradio/FmService;Z)V
    .locals 0

    .prologue
    .line 1491
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->setRecordingMode(Z)V

    return-void
.end method

.method static synthetic access$67(Lcom/android/fmradio/FmService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1452
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->saveRecording(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$68(Lcom/android/fmradio/FmService;)Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsRdsThreadExit:Z

    return v0
.end method

.method static synthetic access$69(Lcom/android/fmradio/FmService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mPsString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/fmradio/FmService;)Lcom/android/fmradio/FmService$FmRadioServiceHandler;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    return-object v0
.end method

.method static synthetic access$70(Lcom/android/fmradio/FmService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2196
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->setPs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$71(Lcom/android/fmradio/FmService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mRtTextString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$72(Lcom/android/fmradio/FmService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2211
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->setLRText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$73(Lcom/android/fmradio/FmService;)Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsSeeking:Z

    return v0
.end method

.method static synthetic access$8(Lcom/android/fmradio/FmService;I)V
    .locals 0

    .prologue
    .line 214
    iput p1, p0, Lcom/android/fmradio/FmService;->mValueHeadSetPlug:I

    return-void
.end method

.method static synthetic access$9(Lcom/android/fmradio/FmService;)I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/android/fmradio/FmService;->mValueHeadSetPlug:I

    return v0
.end method

.method private activeAf()I
    .locals 3

    .prologue
    .line 1215
    iget v1, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v2, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-eq v1, v2, :cond_0

    .line 1216
    const-string v1, "FmService"

    const-string v2, "activeAf, FM is not powered up"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const/4 v0, -0x1

    .line 1221
    :goto_0
    return v0

    .line 1220
    :cond_0
    invoke-static {}, Lcom/android/fmradio/FmNative;->activeAf()S

    move-result v0

    .line 1221
    .local v0, "frequency":I
    goto :goto_0
.end method

.method private checkState()V
    .locals 2

    .prologue
    .line 2778
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->isHeadSetIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2780
    iget v0, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v1, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-ne v0, v1, :cond_0

    .line 2781
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->resumeFmAudio()V

    .line 2782
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmService;->setMute(Z)I

    .line 2790
    :goto_0
    return-void

    .line 2784
    :cond_0
    iget v0, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    invoke-static {v0}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmService;->powerUpAsync(F)V

    goto :goto_0

    .line 2788
    :cond_1
    iget v0, p0, Lcom/android/fmradio/FmService;->mValueHeadSetPlug:I

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmService;->switchAntennaAsync(I)V

    goto :goto_0
.end method

.method private closeDevice()Z
    .locals 3

    .prologue
    .line 779
    const-string v1, "FmService"

    const-string v2, "closeDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v0, 0x0

    .line 781
    .local v0, "isDeviceClose":Z
    iget-boolean v1, p0, Lcom/android/fmradio/FmService;->mIsDeviceOpen:Z

    if-eqz v1, :cond_0

    .line 782
    invoke-static {}, Lcom/android/fmradio/FmNative;->closeDev()Z

    move-result v0

    .line 783
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/fmradio/FmService;->mIsDeviceOpen:Z

    .line 785
    :cond_0
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/fmradio/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 786
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 787
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/fmradio/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 790
    :cond_1
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v1}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 791
    return v0

    .line 783
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized createAudioPatch()V
    .locals 4

    .prologue
    .line 1617
    monitor-enter p0

    :try_start_0
    const-string v1, "FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createAudioPatch, mAudioPatch = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/fmradio/FmService;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    iget-boolean v1, p0, Lcom/android/fmradio/FmService;->mIsPlaying192KHz:Z

    if-eqz v1, :cond_1

    .line 1619
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->releaseAudioPatch()V

    .line 1620
    iget-boolean v1, p0, Lcom/android/fmradio/FmService;->mIsRender:Z

    if-nez v1, :cond_0

    .line 1621
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->startRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1644
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1625
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mAudioPatch:Landroid/media/AudioPatch;

    if-nez v1, :cond_0

    .line 1626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1628
    .local v0, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->listAudioPatches(Ljava/util/ArrayList;)I

    .line 1629
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmService;->isPatchMixerToEarphone(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1630
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->stopRender()V

    .line 1631
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->stopAudioTrack()V

    .line 1632
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->createAudioPatchByEarphone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1617
    .end local v0    # "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1633
    .restart local v0    # "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    :cond_2
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmService;->isPatchMixerToSpeaker(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1634
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->stopRender()V

    .line 1635
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->stopAudioTrack()V

    .line 1636
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->createAudioPatchBySpeaker()V

    goto :goto_0

    .line 1638
    :cond_3
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->isRender()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1639
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->stopRender()V

    .line 1641
    :cond_4
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->startRender()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized createAudioPatchByEarphone()V
    .locals 13

    .prologue
    .line 1647
    monitor-enter p0

    :try_start_0
    const-string v9, "FmService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "createAudioPatchByEarphone "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/fmradio/FmService;->mIsPlaying192KHz:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    iget-boolean v9, p0, Lcom/android/fmradio/FmService;->mIsPlaying192KHz:Z

    if-eqz v9, :cond_1

    .line 1649
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->releaseAudioPatch()V

    .line 1650
    iget-boolean v9, p0, Lcom/android/fmradio/FmService;->mIsRender:Z

    if-nez v9, :cond_0

    .line 1651
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->startRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1696
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1655
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/android/fmradio/FmService;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v9, :cond_2

    .line 1656
    const-string v9, "FmService"

    const-string v10, "createAudioPatch, mAudioPatch is not null, return"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1647
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1666
    :cond_2
    const/4 v9, 0x0

    :try_start_2
    iput-object v9, p0, Lcom/android/fmradio/FmService;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 1667
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/fmradio/FmService;->mAudioSink:Landroid/media/AudioDevicePort;

    .line 1668
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1669
    .local v4, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    iget-object v9, p0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9, v4}, Landroid/media/AudioManager;->listAudioPorts(Ljava/util/ArrayList;)I

    .line 1670
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1682
    iget-object v9, p0, Lcom/android/fmradio/FmService;->mAudioSource:Landroid/media/AudioDevicePort;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/fmradio/FmService;->mAudioSink:Landroid/media/AudioDevicePort;

    if-eqz v9, :cond_0

    .line 1683
    iget-object v9, p0, Lcom/android/fmradio/FmService;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 1684
    invoke-virtual {v9}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v7

    .line 1683
    check-cast v7, Landroid/media/AudioDevicePortConfig;

    .line 1685
    .local v7, "sourceConfig":Landroid/media/AudioDevicePortConfig;
    iget-object v9, p0, Lcom/android/fmradio/FmService;->mAudioSink:Landroid/media/AudioDevicePort;

    invoke-virtual {v9}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v6

    check-cast v6, Landroid/media/AudioDevicePortConfig;

    .line 1686
    .local v6, "sinkConfig":Landroid/media/AudioDevicePortConfig;
    const/4 v9, 0x1

    new-array v1, v9, [Landroid/media/AudioPatch;

    .line 1687
    .local v1, "audioPatchArray":[Landroid/media/AudioPatch;
    iget-object v9, p0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    .line 1688
    const/4 v10, 0x1

    new-array v10, v10, [Landroid/media/AudioPortConfig;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    .line 1689
    const/4 v11, 0x1

    new-array v11, v11, [Landroid/media/AudioPortConfig;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    .line 1687
    invoke-virtual {v9, v1, v10, v11}, Landroid/media/AudioManager;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    move-result v5

    .line 1690
    .local v5, "res":I
    const/4 v9, -0x3

    if-ne v5, v9, :cond_4

    .line 1691
    const-string v9, "FmService"

    const-string v10, "createAudioPatchByEarphone, set mIsPlaying192KHz = true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/fmradio/FmService;->mIsPlaying192KHz:Z

    .line 1694
    :cond_4
    const/4 v9, 0x0

    aget-object v9, v1, v9

    iput-object v9, p0, Lcom/android/fmradio/FmService;->mAudioPatch:Landroid/media/AudioPatch;

    goto :goto_0

    .line 1670
    .end local v1    # "audioPatchArray":[Landroid/media/AudioPatch;
    .end local v5    # "res":I
    .end local v6    # "sinkConfig":Landroid/media/AudioDevicePortConfig;
    .end local v7    # "sourceConfig":Landroid/media/AudioDevicePortConfig;
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPort;

    .line 1671
    .local v3, "port":Landroid/media/AudioPort;
    instance-of v9, v3, Landroid/media/AudioDevicePort;

    if-eqz v9, :cond_3

    .line 1672
    move-object v0, v3

    check-cast v0, Landroid/media/AudioDevicePort;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/media/AudioDevicePort;->type()I

    move-result v8

    .line 1673
    .local v8, "type":I
    invoke-static {v8}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v2

    .line 1674
    .local v2, "name":Ljava/lang/String;
    const v9, -0x7fffe000

    if-ne v8, v9, :cond_6

    .line 1675
    check-cast v3, Landroid/media/AudioDevicePort;

    .end local v3    # "port":Landroid/media/AudioPort;
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mAudioSource:Landroid/media/AudioDevicePort;

    goto :goto_1

    .line 1676
    .restart local v3    # "port":Landroid/media/AudioPort;
    :cond_6
    const/4 v9, 0x4

    if-eq v8, v9, :cond_7

    .line 1677
    const/16 v9, 0x8

    if-ne v8, v9, :cond_3

    .line 1678
    :cond_7
    check-cast v3, Landroid/media/AudioDevicePort;

    .end local v3    # "port":Landroid/media/AudioPort;
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mAudioSink:Landroid/media/AudioDevicePort;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized createAudioPatchBySpeaker()V
    .locals 13

    .prologue
    .line 1699
    monitor-enter p0

    :try_start_0
    const-string v9, "FmService"

    const-string v10, "createAudioPatchBySpeaker"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    iget-boolean v9, p0, Lcom/android/fmradio/FmService;->mIsPlaying192KHz:Z

    if-eqz v9, :cond_1

    .line 1701
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->releaseAudioPatch()V

    .line 1702
    iget-boolean v9, p0, Lcom/android/fmradio/FmService;->mIsRender:Z

    if-nez v9, :cond_0

    .line 1703
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->startRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1748
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1707
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/android/fmradio/FmService;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v9, :cond_2

    .line 1708
    const-string v9, "FmService"

    const-string v10, "createAudioPatch, mAudioPatch is not null, return"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1699
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1712
    :cond_2
    :try_start_2
    iget-boolean v9, p0, Lcom/android/fmradio/FmService;->mIsSpeakerUsed:Z

    if-nez v9, :cond_3

    .line 1715
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/fmradio/FmService;->mIsSpeakerUsed:Z

    .line 1716
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->notifySpeakerModeChange()V

    .line 1719
    :cond_3
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/fmradio/FmService;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 1720
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/fmradio/FmService;->mAudioSink:Landroid/media/AudioDevicePort;

    .line 1721
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1722
    .local v4, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    iget-object v9, p0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9, v4}, Landroid/media/AudioManager;->listAudioPorts(Ljava/util/ArrayList;)I

    .line 1723
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1734
    iget-object v9, p0, Lcom/android/fmradio/FmService;->mAudioSource:Landroid/media/AudioDevicePort;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/fmradio/FmService;->mAudioSink:Landroid/media/AudioDevicePort;

    if-eqz v9, :cond_0

    .line 1735
    iget-object v9, p0, Lcom/android/fmradio/FmService;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 1736
    invoke-virtual {v9}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v7

    .line 1735
    check-cast v7, Landroid/media/AudioDevicePortConfig;

    .line 1737
    .local v7, "sourceConfig":Landroid/media/AudioDevicePortConfig;
    iget-object v9, p0, Lcom/android/fmradio/FmService;->mAudioSink:Landroid/media/AudioDevicePort;

    invoke-virtual {v9}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v6

    check-cast v6, Landroid/media/AudioDevicePortConfig;

    .line 1738
    .local v6, "sinkConfig":Landroid/media/AudioDevicePortConfig;
    const/4 v9, 0x1

    new-array v1, v9, [Landroid/media/AudioPatch;

    .line 1739
    .local v1, "audioPatchArray":[Landroid/media/AudioPatch;
    iget-object v9, p0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    .line 1740
    const/4 v10, 0x1

    new-array v10, v10, [Landroid/media/AudioPortConfig;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    .line 1741
    const/4 v11, 0x1

    new-array v11, v11, [Landroid/media/AudioPortConfig;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    .line 1739
    invoke-virtual {v9, v1, v10, v11}, Landroid/media/AudioManager;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    move-result v5

    .line 1742
    .local v5, "res":I
    const/4 v9, -0x3

    if-ne v5, v9, :cond_5

    .line 1743
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/fmradio/FmService;->mIsPlaying192KHz:Z

    .line 1744
    const-string v9, "FmService"

    const-string v10, "createAudioPatchBySpeaker, set mIsPlaying192KHz = true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    :cond_5
    const/4 v9, 0x0

    aget-object v9, v1, v9

    iput-object v9, p0, Lcom/android/fmradio/FmService;->mAudioPatch:Landroid/media/AudioPatch;

    goto :goto_0

    .line 1723
    .end local v1    # "audioPatchArray":[Landroid/media/AudioPatch;
    .end local v5    # "res":I
    .end local v6    # "sinkConfig":Landroid/media/AudioDevicePortConfig;
    .end local v7    # "sourceConfig":Landroid/media/AudioDevicePortConfig;
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPort;

    .line 1724
    .local v3, "port":Landroid/media/AudioPort;
    instance-of v9, v3, Landroid/media/AudioDevicePort;

    if-eqz v9, :cond_4

    .line 1725
    move-object v0, v3

    check-cast v0, Landroid/media/AudioDevicePort;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/media/AudioDevicePort;->type()I

    move-result v8

    .line 1726
    .local v8, "type":I
    invoke-static {v8}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v2

    .line 1727
    .local v2, "name":Ljava/lang/String;
    const v9, -0x7fffe000

    if-ne v8, v9, :cond_7

    .line 1728
    check-cast v3, Landroid/media/AudioDevicePort;

    .end local v3    # "port":Landroid/media/AudioPort;
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mAudioSource:Landroid/media/AudioDevicePort;

    goto :goto_1

    .line 1729
    .restart local v3    # "port":Landroid/media/AudioPort;
    :cond_7
    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 1730
    check-cast v3, Landroid/media/AudioDevicePort;

    .end local v3    # "port":Landroid/media/AudioPort;
    iput-object v3, p0, Lcom/android/fmradio/FmService;->mAudioSink:Landroid/media/AudioDevicePort;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized createAudioPatchBySpeakerAndEarphone()V
    .locals 16

    .prologue
    const/4 v14, 0x2

    .line 1751
    monitor-enter p0

    :try_start_0
    const-string v12, "FmService"

    const-string v13, "createAudioPatchBySpeakerAndEarphone"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/fmradio/FmService;->mIsPlaying192KHz:Z

    if-eqz v12, :cond_1

    .line 1753
    invoke-direct/range {p0 .. p0}, Lcom/android/fmradio/FmService;->releaseAudioPatch()V

    .line 1754
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/fmradio/FmService;->mIsRender:Z

    if-nez v12, :cond_0

    .line 1755
    invoke-direct/range {p0 .. p0}, Lcom/android/fmradio/FmService;->startRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1799
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1759
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/fmradio/FmService;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v12, :cond_2

    .line 1760
    const-string v12, "FmService"

    const-string v13, "createAudioPatchBySpeakerAndEarphone, mAudioPatch is not null, return"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1751
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 1764
    :cond_2
    const/4 v12, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/fmradio/FmService;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 1765
    const/4 v9, 0x0

    .line 1766
    .local v9, "speakerSink":Landroid/media/AudioDevicePort;
    const/4 v2, 0x0

    .line 1767
    .local v2, "earphoneSink":Landroid/media/AudioDevicePort;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1768
    .local v6, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v12, v6}, Landroid/media/AudioManager;->listAudioPorts(Ljava/util/ArrayList;)I

    .line 1769
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_5

    .line 1783
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/fmradio/FmService;->mAudioSource:Landroid/media/AudioDevicePort;

    if-eqz v12, :cond_0

    if-eqz v9, :cond_0

    if-eqz v2, :cond_0

    .line 1784
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/fmradio/FmService;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 1785
    invoke-virtual {v12}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v8

    .line 1784
    check-cast v8, Landroid/media/AudioDevicePortConfig;

    .line 1787
    .local v8, "sourceConfig":Landroid/media/AudioDevicePortConfig;
    invoke-virtual {v9}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v10

    .line 1786
    check-cast v10, Landroid/media/AudioDevicePortConfig;

    .line 1789
    .local v10, "speakerSinkConfig":Landroid/media/AudioDevicePortConfig;
    invoke-virtual {v2}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v3

    .line 1788
    check-cast v3, Landroid/media/AudioDevicePortConfig;

    .line 1790
    .local v3, "earphoneSinkConfig":Landroid/media/AudioDevicePortConfig;
    const/4 v12, 0x1

    new-array v1, v12, [Landroid/media/AudioPatch;

    .line 1791
    .local v1, "audioPatchArray":[Landroid/media/AudioPatch;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    .line 1792
    const/4 v13, 0x1

    new-array v13, v13, [Landroid/media/AudioPortConfig;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    .line 1793
    const/4 v14, 0x2

    new-array v14, v14, [Landroid/media/AudioPortConfig;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    const/4 v15, 0x1

    aput-object v3, v14, v15

    .line 1791
    invoke-virtual {v12, v1, v13, v14}, Landroid/media/AudioManager;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    move-result v7

    .line 1794
    .local v7, "res":I
    const/4 v12, -0x3

    if-ne v7, v12, :cond_4

    .line 1795
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/fmradio/FmService;->mIsPlaying192KHz:Z

    .line 1797
    :cond_4
    const/4 v12, 0x0

    aget-object v12, v1, v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/fmradio/FmService;->mAudioPatch:Landroid/media/AudioPatch;

    goto :goto_0

    .line 1769
    .end local v1    # "audioPatchArray":[Landroid/media/AudioPatch;
    .end local v3    # "earphoneSinkConfig":Landroid/media/AudioDevicePortConfig;
    .end local v7    # "res":I
    .end local v8    # "sourceConfig":Landroid/media/AudioDevicePortConfig;
    .end local v10    # "speakerSinkConfig":Landroid/media/AudioDevicePortConfig;
    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioPort;

    .line 1770
    .local v5, "port":Landroid/media/AudioPort;
    instance-of v12, v5, Landroid/media/AudioDevicePort;

    if-eqz v12, :cond_3

    .line 1771
    move-object v0, v5

    check-cast v0, Landroid/media/AudioDevicePort;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/media/AudioDevicePort;->type()I

    move-result v11

    .line 1772
    .local v11, "type":I
    invoke-static {v11}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v4

    .line 1773
    .local v4, "name":Ljava/lang/String;
    const v12, -0x7fffe000

    if-ne v11, v12, :cond_6

    .line 1774
    check-cast v5, Landroid/media/AudioDevicePort;

    .end local v5    # "port":Landroid/media/AudioPort;
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/fmradio/FmService;->mAudioSource:Landroid/media/AudioDevicePort;

    goto :goto_1

    .line 1775
    .restart local v5    # "port":Landroid/media/AudioPort;
    :cond_6
    if-ne v11, v14, :cond_7

    .line 1776
    move-object v0, v5

    check-cast v0, Landroid/media/AudioDevicePort;

    move-object v9, v0

    .line 1777
    goto :goto_1

    :cond_7
    const/4 v12, 0x4

    if-eq v11, v12, :cond_8

    .line 1778
    const/16 v12, 0x8

    if-ne v11, v12, :cond_3

    .line 1779
    :cond_8
    move-object v0, v5

    check-cast v0, Landroid/media/AudioDevicePort;

    move-object v2, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private declared-synchronized createRenderThread()V
    .locals 2

    .prologue
    .line 589
    monitor-enter p0

    :try_start_0
    const-string v0, "FmService"

    const-string v1, "createRenderThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mRenderThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 591
    new-instance v0, Lcom/android/fmradio/FmService$RenderThread;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FmService$RenderThread;-><init>(Lcom/android/fmradio/FmService;)V

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mRenderThread:Ljava/lang/Thread;

    .line 592
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mRenderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    :cond_0
    monitor-exit p0

    return-void

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private enableFmAudio(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 2227
    const-string v0, "FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enableFmAudio: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    if-eqz p1, :cond_3

    .line 2229
    iget v0, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v1, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsAudioFocusHeld:Z

    if-nez v0, :cond_2

    .line 2230
    :cond_0
    const-string v0, "FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enableFmAudio, current not available return.mIsAudioFocusHeld:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2231
    iget-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsAudioFocusHeld:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2230
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    :cond_1
    :goto_0
    return-void

    .line 2235
    :cond_2
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->startAudioTrack()V

    .line 2236
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->createAudioPatch()V

    .line 2237
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/fmradio/FmUtils;->getIsSpeakerModeOnFocusLost(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2238
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/fmradio/FmService;->setForceUse(Z)V

    .line 2239
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fmradio/FmUtils;->setIsSpeakerModeOnFocusLost(Landroid/content/Context;Z)V

    .line 2240
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->notifySpeakerModeChange()V

    goto :goto_0

    .line 2243
    :cond_3
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->releaseAudioPatch()V

    .line 2244
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->stopRender()V

    goto :goto_0
.end method

.method private exitFm()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 2012
    const-string v1, "FmService"

    const-string v2, "exitFm"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/fmradio/FmService;->mIsAudioFocusHeld:Z

    .line 2015
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    if-eqz v1, :cond_1

    .line 2016
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mStopRecordingLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2017
    :try_start_0
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    invoke-virtual {v1}, Lcom/android/fmradio/FmRecorder;->getState()I

    move-result v0

    .line 2018
    .local v0, "fmState":I
    const/4 v1, 0x6

    if-ne v1, v0, :cond_5

    .line 2019
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    iget-object v3, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/fmradio/FmRecorder;->stopRecording(Landroid/content/Context;)V

    .line 2020
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->getRecordingName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/fmradio/FmService;->saveRecording(Ljava/lang/String;)V

    .line 2016
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2028
    .end local v0    # "fmState":I
    :cond_1
    iget-boolean v1, p0, Lcom/android/fmradio/FmService;->mIsNativeScanning:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/fmradio/FmService;->mIsNativeSeeking:Z

    if-eqz v1, :cond_3

    .line 2029
    :cond_2
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->stopScan()Z

    .line 2032
    :cond_3
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

    invoke-virtual {p0, v1}, Lcom/android/fmradio/FmService;->stopCountingDownAsync(Ljava/lang/String;)V

    .line 2033
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_HEADSET_TIMEUP"

    invoke-virtual {p0, v1}, Lcom/android/fmradio/FmService;->stopCountingDownAsync(Ljava/lang/String;)V

    .line 2034
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v1}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2035
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2036
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v1, v4}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2037
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v1, v4}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 2039
    :cond_4
    return-void

    .line 2021
    .restart local v0    # "fmState":I
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->getRecordingName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2022
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->getRecordingName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/fmradio/FmService;->saveRecording(Ljava/lang/String;)V

    goto :goto_0

    .line 2016
    .end local v0    # "fmState":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized exitRenderThread()V
    .locals 2

    .prologue
    .line 597
    monitor-enter p0

    :try_start_0
    const-string v0, "FmService"

    const-string v1, "exitRenderThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->stopRender()V

    .line 599
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mRenderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mRenderThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    monitor-exit p0

    return-void

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private firstPlaying(F)Z
    .locals 7
    .param p1, "frequency"    # F

    .prologue
    const/4 v3, 0x0

    .line 3658
    const-string v4, "FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "firstPlaying, freq: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    iget v4, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v5, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-eq v4, v5, :cond_1

    .line 3660
    const-string v4, "FmService"

    const-string v5, "firstPlaying, FM is not powered up"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 3676
    :cond_0
    :goto_0
    return v0

    .line 3663
    :cond_1
    const/4 v0, 0x0

    .line 3664
    .local v0, "isSeekTune":Z
    invoke-static {p1, v3}, Lcom/android/fmradio/FmNative;->seek(FZ)F

    move-result v1

    .line 3665
    .local v1, "seekStation":F
    invoke-static {v1}, Lcom/android/fmradio/FmUtils;->computeStation(F)I

    move-result v2

    .line 3666
    .local v2, "station":I
    invoke-static {v2}, Lcom/android/fmradio/FmUtils;->isValidStation(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3667
    invoke-static {v1}, Lcom/android/fmradio/FmNative;->tune(F)Z

    move-result v0

    .line 3668
    if-eqz v0, :cond_2

    .line 3669
    invoke-direct {p0, v1}, Lcom/android/fmradio/FmService;->playFrequency(F)Z

    .line 3673
    :cond_2
    if-nez v0, :cond_0

    .line 3674
    iget v3, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    invoke-static {v3}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v1

    goto :goto_0
.end method

.method private focusChanged(I)V
    .locals 1
    .param p1, "focusState"    # I

    .prologue
    .line 2802
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsAudioFocusHeld:Z

    .line 2803
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsNativeScanning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsNativeSeeking:Z

    if-eqz v0, :cond_1

    .line 2806
    :cond_0
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->stopScan()Z

    .line 2810
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->updateAudioFocusAync(I)V

    .line 2811
    return-void
.end method

.method private forceToHeadsetMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3011
    const-string v0, "FmService"

    const-string v1, "forceToHeadsetMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsSpeakerUsed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/fmradio/FmService;->isHeadSetIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3013
    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3015
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/fmradio/FmUtils;->setIsSpeakerModeOnFocusLost(Landroid/content/Context;Z)V

    .line 3017
    :cond_0
    return-void
.end method

.method private getForceUse()I
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    return v0
.end method

.method public static getRecordingSdcard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3594
    sget-object v0, Lcom/android/fmradio/FmService;->sRecordingSdcard:Ljava/lang/String;

    return-object v0
.end method

.method private getRemoteViews()Landroid/widget/RemoteViews;
    .locals 9

    .prologue
    const v8, 0x7f0600d8

    const v7, 0x7f0600d9

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2607
    const-string v2, "FmService"

    const-string v3, "FmRadioService.getRemoteViews"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mRemoteviews:Landroid/widget/RemoteViews;

    if-nez v2, :cond_0

    .line 2609
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030051

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/fmradio/FmService;->mRemoteviews:Landroid/widget/RemoteViews;

    .line 2611
    :cond_0
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mRemoteviews:Landroid/widget/RemoteViews;

    const v3, 0x7f060011

    .line 2612
    const v4, 0x7f020209

    .line 2611
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2613
    iget v2, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v3, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-ne v2, v3, :cond_1

    .line 2614
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mRemoteviews:Landroid/widget/RemoteViews;

    .line 2615
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FM "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    invoke-static {v4}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2614
    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2622
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKPREV"

    invoke-direct {v0, v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2623
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2625
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mRemoteviews:Landroid/widget/RemoteViews;

    const v3, 0x7f0600dc

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2628
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKNEXT"

    invoke-direct {v0, v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2629
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2631
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mRemoteviews:Landroid/widget/RemoteViews;

    const v3, 0x7f0600da

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2634
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

    invoke-direct {v0, v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2635
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2637
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mRemoteviews:Landroid/widget/RemoteViews;

    const v3, 0x7f0600db

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2640
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SAVEFAVOR"

    invoke-direct {v0, v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2641
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2643
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mRemoteviews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v7, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2646
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    invoke-static {v2, v3}, Lcom/android/fmradio/FmStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2647
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mRemoteviews:Landroid/widget/RemoteViews;

    .line 2648
    const v3, 0x7f020213

    .line 2647
    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2653
    :goto_1
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mRemoteviews:Landroid/widget/RemoteViews;

    return-object v2

    .line 2617
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mRemoteviews:Landroid/widget/RemoteViews;

    const-string v3, ""

    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 2650
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_2
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mRemoteviews:Landroid/widget/RemoteViews;

    .line 2651
    const v3, 0x7f020212

    .line 2650
    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private handlePowerDown()V
    .locals 4

    .prologue
    .line 3482
    const-string v2, "FmService"

    const-string v3, "handlePowerDown"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->powerDown()Z

    move-result v1

    .line 3485
    .local v1, "isPowerdown":Z
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 3486
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "callback_flag"

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3487
    const-string v3, "key_is_power_up"

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3488
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 3489
    return-void

    .line 3487
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private handlePowerUp(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    .line 3497
    const-string v5, "FmService"

    const-string v6, "handlePowerUp"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    const/4 v2, 0x0

    .line 3499
    .local v2, "isPowerUp":Z
    const/4 v3, 0x1

    .line 3500
    .local v3, "isSwitch":Z
    iget-object v5, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/fmradio/FmStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v1

    .line 3501
    .local v1, "iCurrentStation":I
    invoke-static {v1}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v0

    .line 3503
    .local v0, "curFrequency":F
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->isAntennaAvailable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3504
    const-string v5, "FmService"

    const-string v6, "handlePowerUp, earphone is not ready"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    const-string v5, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_HEADSET_TIMEUP"

    .line 3510
    const-wide/16 v6, 0x3c

    .line 3509
    invoke-virtual {p0, v5, v6, v7}, Lcom/android/fmradio/FmService;->startCountingDownAsync(Ljava/lang/String;J)V

    .line 3512
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "bundle":Landroid/os/Bundle;
    invoke-direct {p1, v8}, Landroid/os/Bundle;-><init>(I)V

    .line 3513
    .restart local p1    # "bundle":Landroid/os/Bundle;
    const-string v5, "callback_flag"

    const/4 v6, 0x4

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3514
    const-string v5, "key_is_switch_antenna"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3515
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 3536
    :goto_0
    return-void

    .line 3518
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmService;->powerUp(F)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3523
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmService;->playFrequency(F)Z

    move-result v2

    .line 3525
    iput-boolean v4, p0, Lcom/android/fmradio/FmService;->mPausedByTransientLossOfFocus:Z

    .line 3531
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "bundle":Landroid/os/Bundle;
    invoke-direct {p1, v8}, Landroid/os/Bundle;-><init>(I)V

    .line 3532
    .restart local p1    # "bundle":Landroid/os/Bundle;
    const-string v5, "callback_flag"

    const/16 v6, 0x9

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3533
    const-string v5, "key_tune_to_station"

    iget v6, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    invoke-static {v6}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3534
    const-string v5, "key_is_power_up"

    iget v6, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v7, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-ne v6, v7, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3535
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private declared-synchronized initAudioRecordSink()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1597
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v1, 0x7ce

    .line 1598
    const v2, 0xac44

    const/4 v3, 0x3

    const/4 v4, 0x2

    sget v5, Lcom/android/fmradio/FmService;->RECORD_BUF_SIZE:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 1597
    iput-object v0, p0, Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;

    .line 1599
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move v0, v7

    .line 1613
    :goto_0
    monitor-exit p0

    return v0

    .line 1602
    :cond_0
    :try_start_1
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    .line 1603
    const v2, 0xac44

    const/4 v3, 0x3

    const/4 v4, 0x2

    sget v5, Lcom/android/fmradio/FmService;->RECORD_BUF_SIZE:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 1602
    iput-object v0, p0, Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;

    .line 1604
    const-string v0, "FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initAudioRecordSink, mAudioRecord = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mAudioTrack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1605
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1604
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_2

    .line 1608
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 1609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move v0, v7

    .line 1611
    goto :goto_0

    :cond_2
    move v0, v8

    .line 1613
    goto :goto_0

    .line 1597
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isHeadSetIn()Z
    .locals 1

    .prologue
    .line 2798
    iget v0, p0, Lcom/android/fmradio/FmService;->mValueHeadSetPlug:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOutputDeviceChanged(Ljava/util/ArrayList;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2472
    .local p1, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    const/4 v3, 0x0

    .line 2473
    .local v3, "origSources":[Landroid/media/AudioPortConfig;
    const/4 v2, 0x0

    .line 2474
    .local v2, "origSinks":[Landroid/media/AudioPortConfig;
    monitor-enter p0

    .line 2477
    :try_start_0
    iget-object v11, p0, Lcom/android/fmradio/FmService;->mAudioPatch:Landroid/media/AudioPatch;

    if-nez v11, :cond_0

    .line 2478
    const-string v11, "FmService"

    const-string v12, "isOutputDeviceChanged, mAudioPatch is null, return"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    monitor-exit p0

    const/4 v11, 0x0

    .line 2505
    :goto_0
    return v11

    .line 2481
    :cond_0
    iget-object v11, p0, Lcom/android/fmradio/FmService;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-virtual {v11}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v3

    .line 2482
    iget-object v11, p0, Lcom/android/fmradio/FmService;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-virtual {v11}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v2

    .line 2474
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2484
    const/4 v11, 0x0

    aget-object v11, v3, v11

    invoke-virtual {v11}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v4

    .line 2485
    .local v4, "origSrcPort":Landroid/media/AudioPort;
    const/4 v11, 0x0

    aget-object v11, v2, v11

    invoke-virtual {v11}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v1

    .line 2486
    .local v1, "origSinkPort":Landroid/media/AudioPort;
    const-string v11, "FmService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "DEBUG "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 2504
    const-string v11, "FmService"

    const-string v12, "isOutputDeviceChanged: false"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    const/4 v11, 0x0

    goto :goto_0

    .line 2474
    .end local v1    # "origSinkPort":Landroid/media/AudioPort;
    .end local v4    # "origSrcPort":Landroid/media/AudioPort;
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 2488
    .restart local v1    # "origSinkPort":Landroid/media/AudioPort;
    .restart local v4    # "origSrcPort":Landroid/media/AudioPort;
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPatch;

    .line 2489
    .local v0, "aPatch":Landroid/media/AudioPatch;
    invoke-virtual {v0}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v10

    .line 2490
    .local v10, "sources":[Landroid/media/AudioPortConfig;
    invoke-virtual {v0}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v7

    .line 2491
    .local v7, "sinks":[Landroid/media/AudioPortConfig;
    const/4 v11, 0x0

    aget-object v8, v10, v11

    .line 2492
    .local v8, "sourceConfig":Landroid/media/AudioPortConfig;
    const/4 v11, 0x0

    aget-object v5, v7, v11

    .line 2493
    .local v5, "sinkConfig":Landroid/media/AudioPortConfig;
    invoke-virtual {v8}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v9

    .line 2494
    .local v9, "sourcePort":Landroid/media/AudioPort;
    invoke-virtual {v5}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v6

    .line 2495
    .local v6, "sinkPort":Landroid/media/AudioPort;
    const-string v11, "FmService"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "DEBUG "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " sink: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " origPort: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    instance-of v11, v9, Landroid/media/AudioMixPort;

    if-eqz v11, :cond_1

    instance-of v11, v6, Landroid/media/AudioDevicePort;

    if-eqz v11, :cond_1

    .line 2497
    instance-of v11, v1, Landroid/media/AudioDevicePort;

    if-eqz v11, :cond_1

    .line 2498
    check-cast v6, Landroid/media/AudioDevicePort;

    .end local v6    # "sinkPort":Landroid/media/AudioPort;
    invoke-virtual {v6}, Landroid/media/AudioDevicePort;->type()I

    move-result v13

    move-object v11, v1

    check-cast v11, Landroid/media/AudioDevicePort;

    invoke-virtual {v11}, Landroid/media/AudioDevicePort;->type()I

    move-result v11

    if-eq v13, v11, :cond_1

    .line 2499
    const-string v11, "FmService"

    const-string v12, "isOutputDeviceChanged: true"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method private isPatchContainSpeakerAndEarphone(Ljava/util/ArrayList;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2343
    .local p1, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    const/4 v1, 0x0

    .line 2344
    .local v1, "hasSpeakerSink":Z
    const/4 v0, 0x0

    .line 2345
    .local v0, "hasEarphoneSink":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2369
    const-string v9, "FmService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v8, "isPatchContainSpeakerAndEarphone: "

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    const/4 v8, 0x1

    :goto_1
    return v8

    .line 2345
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPatch;

    .line 2346
    .local v2, "patch":Landroid/media/AudioPatch;
    invoke-virtual {v2}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v6

    .line 2347
    .local v6, "sources":[Landroid/media/AudioPortConfig;
    invoke-virtual {v2}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v5

    .line 2348
    .local v5, "sinks":[Landroid/media/AudioPortConfig;
    const-string v8, "FmService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "isPatchContainSpeakerAndEarphone, sinks num: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    array-length v8, v5

    const/4 v10, 0x2

    if-ne v8, v10, :cond_0

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v8}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v8

    instance-of v8, v8, Landroid/media/AudioMixPort;

    if-eqz v8, :cond_0

    .line 2354
    const-string v8, "FmService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "isPatchContainSpeakerAndEarphone "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-virtual {v11}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ====> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2355
    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v11}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " + "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v5, v11

    invoke-virtual {v11}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2354
    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    array-length v10, v5

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v10, :cond_0

    aget-object v3, v5, v8

    .line 2357
    .local v3, "sink":Landroid/media/AudioPortConfig;
    invoke-virtual {v3}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v4

    .line 2358
    .local v4, "sinkPort":Landroid/media/AudioPort;
    instance-of v11, v4, Landroid/media/AudioDevicePort;

    if-eqz v11, :cond_2

    .line 2359
    check-cast v4, Landroid/media/AudioDevicePort;

    .end local v4    # "sinkPort":Landroid/media/AudioPort;
    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->type()I

    move-result v7

    .line 2360
    .local v7, "type":I
    const/4 v11, 0x2

    if-ne v7, v11, :cond_3

    .line 2361
    const/4 v1, 0x1

    .line 2356
    .end local v7    # "type":I
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2362
    .restart local v7    # "type":I
    :cond_3
    const/4 v11, 0x4

    if-eq v7, v11, :cond_4

    .line 2363
    const/16 v11, 0x8

    if-ne v7, v11, :cond_2

    .line 2364
    :cond_4
    const/4 v0, 0x1

    goto :goto_3

    .line 2369
    .end local v2    # "patch":Landroid/media/AudioPatch;
    .end local v3    # "sink":Landroid/media/AudioPortConfig;
    .end local v5    # "sinks":[Landroid/media/AudioPortConfig;
    .end local v6    # "sources":[Landroid/media/AudioPortConfig;
    .end local v7    # "type":I
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2370
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method private isPatchMixerToBt(Ljava/util/ArrayList;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2251
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 2273
    const-string v8, "FmService"

    const-string v10, "isPatchMixerToBt: false"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 2274
    :goto_0
    return v8

    .line 2251
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPatch;

    .line 2252
    .local v0, "patch":Landroid/media/AudioPatch;
    invoke-virtual {v0}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v6

    .line 2253
    .local v6, "sources":[Landroid/media/AudioPortConfig;
    invoke-virtual {v0}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v3

    .line 2254
    .local v3, "sinks":[Landroid/media/AudioPortConfig;
    array-length v11, v3

    if-gt v11, v8, :cond_0

    .line 2257
    aget-object v4, v6, v9

    .line 2258
    .local v4, "sourceConfig":Landroid/media/AudioPortConfig;
    aget-object v1, v3, v9

    .line 2259
    .local v1, "sinkConfig":Landroid/media/AudioPortConfig;
    invoke-virtual {v4}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v5

    .line 2260
    .local v5, "sourcePort":Landroid/media/AudioPort;
    invoke-virtual {v1}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v2

    .line 2261
    .local v2, "sinkPort":Landroid/media/AudioPort;
    instance-of v11, v5, Landroid/media/AudioMixPort;

    if-eqz v11, :cond_0

    instance-of v11, v2, Landroid/media/AudioDevicePort;

    if-eqz v11, :cond_0

    .line 2262
    check-cast v2, Landroid/media/AudioDevicePort;

    .end local v2    # "sinkPort":Landroid/media/AudioPort;
    invoke-virtual {v2}, Landroid/media/AudioDevicePort;->type()I

    move-result v7

    .line 2263
    .local v7, "type":I
    const/16 v11, 0x80

    if-eq v7, v11, :cond_2

    .line 2264
    const/16 v11, 0x100

    if-eq v7, v11, :cond_2

    .line 2265
    const/16 v11, 0x200

    if-eq v7, v11, :cond_2

    .line 2266
    const v11, 0x8000

    if-ne v7, v11, :cond_0

    .line 2267
    :cond_2
    const-string v9, "FmService"

    const-string v10, "isPatchMixerToBt: true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPatchMixerToDeviceRemoved(Ljava/util/ArrayList;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    const/4 v10, 0x0

    .line 2376
    const/4 v0, 0x1

    .line 2377
    .local v0, "noMixerToDevice":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 2390
    :goto_0
    const-string v8, "FmService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "isPatchMixerToDeviceRemoved: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    return v0

    .line 2377
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPatch;

    .line 2378
    .local v1, "patch":Landroid/media/AudioPatch;
    invoke-virtual {v1}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v7

    .line 2379
    .local v7, "sources":[Landroid/media/AudioPortConfig;
    invoke-virtual {v1}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v4

    .line 2380
    .local v4, "sinks":[Landroid/media/AudioPortConfig;
    aget-object v5, v7, v10

    .line 2381
    .local v5, "sourceConfig":Landroid/media/AudioPortConfig;
    aget-object v2, v4, v10

    .line 2382
    .local v2, "sinkConfig":Landroid/media/AudioPortConfig;
    invoke-virtual {v5}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v6

    .line 2383
    .local v6, "sourcePort":Landroid/media/AudioPort;
    invoke-virtual {v2}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v3

    .line 2385
    .local v3, "sinkPort":Landroid/media/AudioPort;
    instance-of v9, v6, Landroid/media/AudioMixPort;

    if-eqz v9, :cond_0

    instance-of v9, v3, Landroid/media/AudioDevicePort;

    if-eqz v9, :cond_0

    .line 2386
    const/4 v0, 0x0

    .line 2387
    goto :goto_0
.end method

.method private isPatchMixerToEarphone(Ljava/util/ArrayList;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2280
    .local p1, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    const/4 v0, 0x0

    .line 2281
    .local v0, "deviceCount":I
    const/4 v1, 0x0

    .line 2282
    .local v1, "deviceEarphoneCount":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 2302
    const/4 v10, 0x1

    if-lt v1, v10, :cond_3

    if-ne v0, v1, :cond_3

    .line 2303
    const-string v10, "FmService"

    const-string v11, "isPatchMixerToEarphone: true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    const/4 v10, 0x1

    .line 2307
    :goto_1
    return v10

    .line 2282
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPatch;

    .line 2283
    .local v2, "patch":Landroid/media/AudioPatch;
    const-string v11, "FmService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "patch="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    invoke-virtual {v2}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v8

    .line 2285
    .local v8, "sources":[Landroid/media/AudioPortConfig;
    invoke-virtual {v2}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v5

    .line 2286
    .local v5, "sinks":[Landroid/media/AudioPortConfig;
    array-length v11, v5

    const/4 v12, 0x1

    if-gt v11, v12, :cond_0

    .line 2289
    const/4 v11, 0x0

    aget-object v6, v8, v11

    .line 2290
    .local v6, "sourceConfig":Landroid/media/AudioPortConfig;
    const/4 v11, 0x0

    aget-object v3, v5, v11

    .line 2291
    .local v3, "sinkConfig":Landroid/media/AudioPortConfig;
    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v7

    .line 2292
    .local v7, "sourcePort":Landroid/media/AudioPort;
    invoke-virtual {v3}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v4

    .line 2293
    .local v4, "sinkPort":Landroid/media/AudioPort;
    instance-of v11, v7, Landroid/media/AudioMixPort;

    if-eqz v11, :cond_0

    instance-of v11, v4, Landroid/media/AudioDevicePort;

    if-eqz v11, :cond_0

    .line 2294
    add-int/lit8 v0, v0, 0x1

    .line 2295
    check-cast v4, Landroid/media/AudioDevicePort;

    .end local v4    # "sinkPort":Landroid/media/AudioPort;
    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->type()I

    move-result v9

    .line 2296
    .local v9, "type":I
    const/4 v11, 0x4

    if-eq v9, v11, :cond_2

    .line 2297
    const/16 v11, 0x8

    if-ne v9, v11, :cond_0

    .line 2298
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2306
    .end local v2    # "patch":Landroid/media/AudioPatch;
    .end local v3    # "sinkConfig":Landroid/media/AudioPortConfig;
    .end local v5    # "sinks":[Landroid/media/AudioPortConfig;
    .end local v6    # "sourceConfig":Landroid/media/AudioPortConfig;
    .end local v7    # "sourcePort":Landroid/media/AudioPort;
    .end local v8    # "sources":[Landroid/media/AudioPortConfig;
    .end local v9    # "type":I
    :cond_3
    const-string v10, "FmService"

    const-string v11, "isPatchMixerToEarphone: false"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private isPatchMixerToSpeaker(Ljava/util/ArrayList;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2312
    .local p1, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    const/4 v0, 0x0

    .line 2313
    .local v0, "deviceCount":I
    const/4 v1, 0x0

    .line 2314
    .local v1, "deviceEarphoneCount":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 2334
    const/4 v10, 0x1

    if-lt v1, v10, :cond_2

    if-ne v0, v1, :cond_2

    .line 2335
    const-string v10, "FmService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "isPatchMixerToSpeaker: true "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    const/4 v10, 0x1

    .line 2339
    :goto_1
    return v10

    .line 2314
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPatch;

    .line 2315
    .local v2, "patch":Landroid/media/AudioPatch;
    invoke-virtual {v2}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v8

    .line 2316
    .local v8, "sources":[Landroid/media/AudioPortConfig;
    invoke-virtual {v2}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v5

    .line 2317
    .local v5, "sinks":[Landroid/media/AudioPortConfig;
    const-string v11, "FmService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "isPatchMixerToSpeaker, sinks num: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    array-length v11, v5

    const/4 v12, 0x1

    if-gt v11, v12, :cond_0

    .line 2321
    const/4 v11, 0x0

    aget-object v6, v8, v11

    .line 2322
    .local v6, "sourceConfig":Landroid/media/AudioPortConfig;
    const/4 v11, 0x0

    aget-object v3, v5, v11

    .line 2323
    .local v3, "sinkConfig":Landroid/media/AudioPortConfig;
    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v7

    .line 2324
    .local v7, "sourcePort":Landroid/media/AudioPort;
    invoke-virtual {v3}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v4

    .line 2325
    .local v4, "sinkPort":Landroid/media/AudioPort;
    const-string v11, "FmService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "isPatchMixerToSpeaker "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ====> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    instance-of v11, v7, Landroid/media/AudioMixPort;

    if-eqz v11, :cond_0

    instance-of v11, v4, Landroid/media/AudioDevicePort;

    if-eqz v11, :cond_0

    .line 2327
    add-int/lit8 v0, v0, 0x1

    .line 2328
    check-cast v4, Landroid/media/AudioDevicePort;

    .end local v4    # "sinkPort":Landroid/media/AudioPort;
    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->type()I

    move-result v9

    .line 2329
    .local v9, "type":I
    const/4 v11, 0x2

    if-ne v9, v11, :cond_0

    .line 2330
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2338
    .end local v2    # "patch":Landroid/media/AudioPatch;
    .end local v3    # "sinkConfig":Landroid/media/AudioPortConfig;
    .end local v5    # "sinks":[Landroid/media/AudioPortConfig;
    .end local v6    # "sourceConfig":Landroid/media/AudioPortConfig;
    .end local v7    # "sourcePort":Landroid/media/AudioPort;
    .end local v8    # "sources":[Landroid/media/AudioPortConfig;
    .end local v9    # "type":I
    :cond_2
    const-string v10, "FmService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "isPatchMixerToSpeaker: false "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    const/4 v10, 0x0

    goto/16 :goto_1
.end method

.method private isRendering()Z
    .locals 1

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsRender:Z

    return v0
.end method

.method private isSdcardReady(Ljava/lang/String;)Z
    .locals 2
    .param p1, "sdcardPath"    # Ljava/lang/String;

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mSdcardStateMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mSdcardStateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/fmradio/FmService;->mSdcardStateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1407
    const-string v0, "FmService"

    const-string v1, "isSdcardReady, return false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const/4 v0, 0x0

    .line 1411
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSpeakerPhoneOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 757
    iget v1, p0, Lcom/android/fmradio/FmService;->mForcedUseForMedia:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyActivityStateChanged(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 3059
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3060
    iget-object v4, p0, Lcom/android/fmradio/FmService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 3061
    :try_start_0
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3062
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/fmradio/FmService$Record;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3060
    monitor-exit v4

    .line 3078
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/fmradio/FmService$Record;>;"
    :goto_1
    return-void

    .line 3063
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/fmradio/FmService$Record;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fmradio/FmService$Record;

    .line 3065
    .local v2, "record":Lcom/android/fmradio/FmService$Record;
    iget-object v1, v2, Lcom/android/fmradio/FmService$Record;->mCallback:Lcom/android/fmradio/FmListener;

    .line 3067
    .local v1, "listener":Lcom/android/fmradio/FmListener;
    if-nez v1, :cond_1

    .line 3068
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 3069
    monitor-exit v4

    goto :goto_1

    .line 3060
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/fmradio/FmService$Record;>;"
    .end local v1    # "listener":Lcom/android/fmradio/FmListener;
    .end local v2    # "record":Lcom/android/fmradio/FmService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3072
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/fmradio/FmService$Record;>;"
    .restart local v1    # "listener":Lcom/android/fmradio/FmListener;
    .restart local v2    # "record":Lcom/android/fmradio/FmService$Record;
    :cond_1
    :try_start_1
    invoke-interface {v1, p1}, Lcom/android/fmradio/FmListener;->onCallBack(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3076
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/fmradio/FmService$Record;>;"
    .end local v1    # "listener":Lcom/android/fmradio/FmListener;
    .end local v2    # "record":Lcom/android/fmradio/FmService$Record;
    :cond_2
    const-string v3, "FmService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "notifyActivityStateChanged: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/fmradio/FmService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private notifyCurrentActivityStateChanged(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 3087
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3088
    const-string v2, "FmService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "notifyCurrentActivityStateChanged = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/fmradio/FmService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3090
    :try_start_0
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3091
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mRecords:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/fmradio/FmService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fmradio/FmService$Record;

    .line 3092
    .local v1, "record":Lcom/android/fmradio/FmService$Record;
    iget-object v0, v1, Lcom/android/fmradio/FmService$Record;->mCallback:Lcom/android/fmradio/FmListener;

    .line 3093
    .local v0, "listener":Lcom/android/fmradio/FmListener;
    if-nez v0, :cond_0

    .line 3094
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3095
    monitor-exit v3

    .line 3103
    .end local v0    # "listener":Lcom/android/fmradio/FmListener;
    .end local v1    # "record":Lcom/android/fmradio/FmService$Record;
    :goto_0
    return-void

    .line 3097
    .restart local v0    # "listener":Lcom/android/fmradio/FmListener;
    .restart local v1    # "record":Lcom/android/fmradio/FmService$Record;
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/fmradio/FmListener;->onCallBack(Landroid/os/Bundle;)V

    .line 3089
    .end local v0    # "listener":Lcom/android/fmradio/FmListener;
    .end local v1    # "record":Lcom/android/fmradio/FmService$Record;
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3101
    :cond_2
    const-string v2, "FmService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "notifyActivityStateChanged: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/fmradio/FmService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifySpeakerModeChange()V
    .locals 3

    .prologue
    .line 524
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 525
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "callback_flag"

    .line 526
    const/16 v2, 0x22

    .line 525
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 527
    const-string v1, "key_bt_state"

    iget-boolean v2, p0, Lcom/android/fmradio/FmService;->mPrevBtHeadsetState:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 528
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 529
    return-void
.end method

.method private openDevice()Z
    .locals 2

    .prologue
    .line 766
    const-string v0, "FmService"

    const-string v1, "openDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsDeviceOpen:Z

    if-nez v0, :cond_0

    .line 768
    invoke-static {}, Lcom/android/fmradio/FmNative;->openDev()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsDeviceOpen:Z

    .line 770
    :cond_0
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsDeviceOpen:Z

    return v0
.end method

.method private playFrequency(F)Z
    .locals 6
    .param p1, "frequency"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 874
    const-string v3, "FmService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "playFrequency, frequency = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-static {p1}, Lcom/android/fmradio/FmUtils;->computeStation(F)I

    move-result v3

    iput v3, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    .line 876
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    invoke-static {v3, v4}, Lcom/android/fmradio/FmStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 878
    sget-object v3, Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;

    if-eqz v3, :cond_0

    .line 879
    sget-object v3, Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;

    invoke-interface {v3}, Lcom/android/fmradio/FmService$OnChannelListListener;->onTuneFinished()V

    .line 881
    :cond_0
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->updatePlayingNotification()V

    .line 882
    invoke-static {}, Lcom/android/fmradio/FmRadioWidget;->getInstance()Lcom/android/fmradio/FmRadioWidget;

    move-result-object v0

    .line 883
    .local v0, "widget":Lcom/android/fmradio/FmRadioWidget;
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    invoke-virtual {v0, v3, v4}, Lcom/android/fmradio/FmRadioWidget;->updateWidget(Landroid/content/Context;I)V

    .line 886
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->isRdsSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 887
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->startRdsThread()V

    .line 890
    :cond_1
    invoke-static {}, Lcom/android/fmradio/FmUtils;->isFmSuspendSupport()Z

    move-result v3

    if-nez v3, :cond_2

    .line 891
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_2

    .line 892
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 898
    :cond_2
    iget v3, p0, Lcom/android/fmradio/FmService;->mRecordState:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_3

    .line 899
    invoke-direct {p0, v1}, Lcom/android/fmradio/FmService;->enableFmAudio(Z)V

    .line 902
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/fmradio/FmService;->setRds(Z)I

    .line 903
    invoke-virtual {p0, v2}, Lcom/android/fmradio/FmService;->setMute(Z)I

    .line 905
    iget v3, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v4, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-ne v3, v4, :cond_4

    :goto_0
    return v1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private powerDown()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 930
    const-string v2, "FmService"

    const-string v3, "powerDown"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget v2, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v3, Lcom/android/fmradio/FmService;->POWER_DOWN:I

    if-ne v2, v3, :cond_0

    .line 969
    :goto_0
    return v0

    .line 935
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmService;->setMute(Z)I

    .line 936
    invoke-direct {p0, v1}, Lcom/android/fmradio/FmService;->setRds(Z)I

    .line 937
    invoke-direct {p0, v1}, Lcom/android/fmradio/FmService;->enableFmAudio(Z)V

    .line 939
    invoke-static {v1}, Lcom/android/fmradio/FmNative;->powerDown(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 941
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->isRdsSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->stopRdsThread()V

    .line 945
    :cond_1
    invoke-static {}, Lcom/android/fmradio/FmUtils;->isFmSuspendSupport()Z

    move-result v0

    if-nez v0, :cond_2

    .line 946
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 947
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 951
    :cond_2
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->removeNotification()V

    move v0, v1

    .line 952
    goto :goto_0

    .line 955
    :cond_3
    sget v2, Lcom/android/fmradio/FmService;->POWER_DOWN:I

    iput v2, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    .line 957
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->isRdsSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 958
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->stopRdsThread()V

    .line 961
    :cond_4
    invoke-static {}, Lcom/android/fmradio/FmUtils;->isFmSuspendSupport()Z

    move-result v2

    if-nez v2, :cond_5

    .line 962
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 963
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 966
    :cond_5
    iput-boolean v1, p0, Lcom/android/fmradio/FmService;->mIsPlaying192KHz:Z

    .line 968
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->removeNotification()V

    goto :goto_0
.end method

.method private powerUp(F)Z
    .locals 5
    .param p1, "frequency"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 822
    const-string v2, "FmService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "powerUp, frequency = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->initAudioRecordSink()Z

    .line 825
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->createAudioPatch()V

    .line 827
    iget v2, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v3, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-ne v2, v3, :cond_1

    .line 870
    :cond_0
    :goto_0
    return v0

    .line 830
    :cond_1
    invoke-static {}, Lcom/android/fmradio/FmUtils;->isFmSuspendSupport()Z

    move-result v2

    if-nez v2, :cond_2

    .line 831
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_2

    .line 832
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 835
    :cond_2
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->requestAudioFocus()Z

    move-result v2

    if-nez v2, :cond_3

    .line 837
    sget v0, Lcom/android/fmradio/FmService;->POWER_DOWN:I

    iput v0, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    .line 838
    iput-boolean v1, p0, Lcom/android/fmradio/FmService;->mIsPlaying192KHz:Z

    move v0, v1

    .line 839
    goto :goto_0

    .line 842
    :cond_3
    sget v2, Lcom/android/fmradio/FmService;->DURING_POWER_UP:I

    iput v2, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    .line 846
    iget-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsDeviceOpen:Z

    if-nez v2, :cond_4

    .line 847
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->openDevice()Z

    .line 850
    :cond_4
    invoke-static {p1}, Lcom/android/fmradio/FmNative;->powerUp(F)Z

    move-result v2

    if-nez v2, :cond_6

    .line 851
    sget v0, Lcom/android/fmradio/FmService;->POWER_DOWN:I

    iput v0, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    .line 852
    iput-boolean v1, p0, Lcom/android/fmradio/FmService;->mIsPlaying192KHz:Z

    .line 853
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/fmradio/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 854
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 855
    const-string v0, "FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "powerUp failed, release wakelock: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/fmradio/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v1

    .line 857
    goto :goto_0

    .line 859
    :cond_6
    sget v2, Lcom/android/fmradio/FmService;->POWER_UP:I

    iput v2, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    .line 863
    iget-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsRender:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsPlaying192KHz:Z

    if-eqz v2, :cond_7

    .line 864
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->releaseAudioPatch()V

    .line 865
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->startRender()V

    .line 868
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmService;->setMute(Z)I

    .line 870
    iget v2, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v3, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method private powerUpAutoIfNeed()V
    .locals 3

    .prologue
    .line 484
    iget v1, p0, Lcom/android/fmradio/FmService;->mValueHeadSetPlug:I

    if-nez v1, :cond_0

    .line 485
    iget v1, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v2, Lcom/android/fmradio/FmService;->POWER_DOWN:I

    if-ne v1, v2, :cond_0

    sget-boolean v1, Lcom/android/fmradio/FmService;->sActivityIsOnStop:Z

    if-eqz v1, :cond_0

    .line 486
    const-string v1, "FmService"

    const-string v2, "Power up for start app then quick click power/home"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/fmradio/FmStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    .line 488
    .local v0, "iCurrentStation":I
    invoke-static {v0}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/fmradio/FmService;->powerUpAsync(F)V

    .line 491
    .end local v0    # "iCurrentStation":I
    :cond_0
    return-void
.end method

.method private registerAudioPortUpdateListener()V
    .locals 3

    .prologue
    .line 1577
    const-string v0, "FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerAudioPortUpdateListener, list = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/fmradio/FmService;->mAudioPortUpdateListener:Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioPortUpdateListener:Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;

    if-nez v0, :cond_0

    .line 1579
    new-instance v0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;-><init>(Lcom/android/fmradio/FmService;Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;)V

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mAudioPortUpdateListener:Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;

    .line 1580
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/fmradio/FmService;->mAudioPortUpdateListener:Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 1582
    :cond_0
    return-void
.end method

.method public static registerExitListener(Lcom/android/fmradio/FmService$OnChannelListListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/android/fmradio/FmService$OnChannelListListener;

    .prologue
    .line 3616
    sput-object p0, Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;

    .line 3617
    return-void
.end method

.method private registerFmBroadcastReceiver()V
    .locals 3

    .prologue
    .line 1943
    const-string v1, "FmService"

    const-string v2, "registerFmBroadcastReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1945
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1946
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1947
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1948
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1949
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1950
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1951
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1952
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STARTSCAN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1953
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STOPSCAN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1954
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_TUNESTATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1955
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKPREV"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1956
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKNEXT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1957
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SAVEFAVOR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1958
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SHOWTOAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1959
    const-string v1, "com.mediatek.FMRadio.FmRadioWidget.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1960
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1961
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1962
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_HEADSET_TIMEUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1963
    new-instance v1, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;-><init>(Lcom/android/fmradio/FmService;Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/fmradio/FmService;->mBroadcastReceiver:Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;

    .line 1964
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mBroadcastReceiver:Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/fmradio/FmService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1965
    return-void
.end method

.method private registerSdcardReceiver()V
    .locals 3

    .prologue
    .line 2683
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mSdcardListener:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 2684
    new-instance v1, Lcom/android/fmradio/FmService$SdcardListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/fmradio/FmService$SdcardListener;-><init>(Lcom/android/fmradio/FmService;Lcom/android/fmradio/FmService$SdcardListener;)V

    iput-object v1, p0, Lcom/android/fmradio/FmService;->mSdcardListener:Landroid/content/BroadcastReceiver;

    .line 2686
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2687
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2688
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2689
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2690
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2691
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mSdcardListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/fmradio/FmService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2692
    return-void
.end method

.method private declared-synchronized releaseAudioPatch()V
    .locals 3

    .prologue
    .line 1933
    monitor-enter p0

    :try_start_0
    const-string v0, "FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "releaseAudioPatch, mAudioPatch = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/fmradio/FmService;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v0, :cond_0

    .line 1935
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/fmradio/FmService;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    .line 1936
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mAudioPatch:Landroid/media/AudioPatch;

    .line 1938
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 1939
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mAudioSink:Landroid/media/AudioDevicePort;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1940
    monitor-exit p0

    return-void

    .line 1933
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private remove(I)V
    .locals 4
    .param p1, "hashCode"    # I

    .prologue
    .line 3120
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3121
    :try_start_0
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3122
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/fmradio/FmService$Record;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3120
    monitor-exit v3

    .line 3129
    return-void

    .line 3123
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fmradio/FmService$Record;

    .line 3124
    .local v1, "record":Lcom/android/fmradio/FmService$Record;
    iget v2, v1, Lcom/android/fmradio/FmService$Record;->mHashCode:I

    if-ne v2, p1, :cond_0

    .line 3125
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 3120
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/fmradio/FmService$Record;>;"
    .end local v1    # "record":Lcom/android/fmradio/FmService$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static resetAudioPortGeneration(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3929
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3931
    .local v0, "audioManager":Landroid/media/AudioManager;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 3932
    const-string v5, "resetAudioPortGeneration"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3933
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3934
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3935
    .local v3, "sAudioPortGeneration":I
    const-string v4, "FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "resetAudioPortGeneration, old sAudioPortGeneration="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3940
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "sAudioPortGeneration":I
    :goto_0
    return-void

    .line 3936
    :catch_0
    move-exception v1

    .line 3937
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "FmService"

    const-string v5, "resetAudioPortGeneration failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3938
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private resumeFmAudio()V
    .locals 3

    .prologue
    .line 1329
    const-string v0, "FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resumeFmAudio, held = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsAudioFocusHeld:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "power = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsAudioFocusHeld:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v1, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-ne v0, v1, :cond_0

    .line 1334
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/fmradio/FmService;->enableFmAudio(Z)V

    .line 1336
    :cond_0
    return-void
.end method

.method private saveRecording(Ljava/lang/String;)V
    .locals 3
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 1453
    const-string v0, "FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveRecording, name = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    if-eqz v0, :cond_0

    .line 1455
    if-eqz p1, :cond_1

    .line 1456
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    invoke-virtual {v0, p0, p1}, Lcom/android/fmradio/FmRecorder;->saveRecording(Landroid/content/Context;Ljava/lang/String;)V

    .line 1461
    :cond_0
    :goto_0
    return-void

    .line 1459
    :cond_1
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/android/fmradio/FmRecorder;->discardRecording()V

    goto :goto_0
.end method

.method private seekStation(FZ)F
    .locals 5
    .param p1, "frequency"    # F
    .param p2, "isUp"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1061
    const-string v1, "FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "seekStation, frequency = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isUp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget v1, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v2, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-eq v1, v2, :cond_0

    .line 1063
    const/high16 v0, -0x40800000    # -1.0f

    .line 1073
    :goto_0
    return v0

    .line 1066
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/fmradio/FmService;->setRds(Z)I

    .line 1067
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/fmradio/FmService;->mIsNativeSeeking:Z

    .line 1068
    invoke-static {p1, p2}, Lcom/android/fmradio/FmNative;->seek(FZ)F

    move-result v0

    .line 1069
    .local v0, "fRet":F
    iput-boolean v4, p0, Lcom/android/fmradio/FmService;->mIsNativeSeeking:Z

    .line 1072
    iput-boolean v4, p0, Lcom/android/fmradio/FmService;->mIsStopScanCalled:Z

    goto :goto_0
.end method

.method public static setActivityIsOnStop(Z)V
    .locals 0
    .param p0, "stop"    # Z

    .prologue
    .line 3700
    sput-boolean p0, Lcom/android/fmradio/FmService;->sActivityIsOnStop:Z

    .line 3701
    return-void
.end method

.method private setForceUse(Z)V
    .locals 4
    .param p1, "isSpeaker"    # Z

    .prologue
    const/4 v1, 0x1

    .line 503
    const-string v0, "FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setForceUse: isSpeaker = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/fmradio/FmService;->mForcedUseForMedia:I

    .line 505
    iget v0, p0, Lcom/android/fmradio/FmService;->mForcedUseForMedia:I

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 506
    iput-boolean p1, p0, Lcom/android/fmradio/FmService;->mIsSpeakerUsed:Z

    .line 507
    return-void

    .line 504
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setLRText(Ljava/lang/String;)V
    .locals 3
    .param p1, "lrtText"    # Ljava/lang/String;

    .prologue
    .line 2212
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mRtTextString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2213
    iput-object p1, p0, Lcom/android/fmradio/FmService;->mRtTextString:Ljava/lang/String;

    .line 2214
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 2215
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "callback_flag"

    const v2, 0x100100

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2216
    const-string v1, "key_rt_info"

    iget-object v2, p0, Lcom/android/fmradio/FmService;->mRtTextString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 2219
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private setPs(Ljava/lang/String;)V
    .locals 3
    .param p1, "ps"    # Ljava/lang/String;

    .prologue
    .line 2197
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mPsString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2198
    iput-object p1, p0, Lcom/android/fmradio/FmService;->mPsString:Ljava/lang/String;

    .line 2199
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 2200
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "callback_flag"

    const v2, 0x100011

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2201
    const-string v1, "key_ps_info"

    iget-object v2, p0, Lcom/android/fmradio/FmService;->mPsString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 2204
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private setRds(Z)I
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 1175
    const-string v1, "FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setRds, on = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget v1, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v2, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-eq v1, v2, :cond_1

    .line 1177
    const/4 v0, -0x1

    .line 1183
    :cond_0
    :goto_0
    return v0

    .line 1179
    :cond_1
    const/4 v0, -0x1

    .line 1180
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->isRdsSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1181
    invoke-static {p1}, Lcom/android/fmradio/FmNative;->setRds(Z)I

    move-result v0

    goto :goto_0
.end method

.method private setRecordingMode(Z)V
    .locals 3
    .param p1, "isRecording"    # Z

    .prologue
    .line 1492
    const-string v0, "FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setRecordingMode, isRecording = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    iput-boolean p1, p0, Lcom/android/fmradio/FmService;->mIsInRecordingMode:Z

    .line 1494
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    if-eqz v0, :cond_1

    .line 1495
    if-nez p1, :cond_2

    .line 1496
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/android/fmradio/FmRecorder;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    iget-object v1, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmRecorder;->stopRecording(Landroid/content/Context;)V

    .line 1499
    :cond_0
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->resumeFmAudio()V

    .line 1500
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmService;->setMute(Z)I

    .line 1506
    :cond_1
    :goto_0
    return-void

    .line 1504
    :cond_2
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/android/fmradio/FmRecorder;->resetRecorder()V

    goto :goto_0
.end method

.method private showPlayingNotification()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2512
    const-string v3, "FmService"

    const-string v4, "showPlayingNotification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2514
    .local v1, "notificationIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2515
    const-class v4, Lcom/android/fmradio/FmRadioActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2514
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2516
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 2517
    .local v2, "views":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 2518
    .local v0, "notification":Landroid/app/Notification;
    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2519
    const/4 v3, 0x2

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 2520
    const v3, 0x7f020219

    iput v3, v0, Landroid/app/Notification;->icon:I

    .line 2522
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 2521
    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2523
    const-string v3, "FmService"

    const-string v4, "Add notification to the title bar."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/android/fmradio/FmService;->startForeground(ILandroid/app/Notification;)V

    .line 2604
    return-void
.end method

.method private startAudioTrack()V
    .locals 4

    .prologue
    .line 623
    const-string v1, "FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startAudioTrack, mAudioTrack = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 630
    .local v0, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->listAudioPatches(Ljava/util/ArrayList;)I

    .line 631
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    goto :goto_0
.end method

.method private startRdsThread()V
    .locals 2

    .prologue
    .line 2071
    const-string v0, "FmService"

    const-string v1, "startRdsThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsRdsThreadExit:Z

    .line 2073
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mRdsThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2177
    :goto_0
    return-void

    .line 2076
    :cond_0
    new-instance v0, Lcom/android/fmradio/FmService$3;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FmService$3;-><init>(Lcom/android/fmradio/FmService;)V

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mRdsThread:Ljava/lang/Thread;

    .line 2176
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mRdsThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private startRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1384
    const-string v0, "FmService"

    const-string v1, "startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/fmradio/FmUtils;->getDefaultStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/fmradio/FmService;->sRecordingSdcard:Ljava/lang/String;

    .line 1386
    sget-object v0, Lcom/android/fmradio/FmService;->sRecordingSdcard:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/fmradio/FmService;->sRecordingSdcard:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1387
    :cond_0
    const-string v0, "FmService"

    const-string v1, "startRecording, may be no sdcard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    invoke-virtual {p0, v2}, Lcom/android/fmradio/FmService;->onRecorderError(I)V

    .line 1402
    :goto_0
    return-void

    .line 1392
    :cond_1
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    if-nez v0, :cond_2

    .line 1393
    new-instance v0, Lcom/android/fmradio/FmRecorder;

    invoke-direct {v0}, Lcom/android/fmradio/FmRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    .line 1394
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    invoke-virtual {v0, p0}, Lcom/android/fmradio/FmRecorder;->registerRecorderStateListener(Lcom/android/fmradio/FmRecorder$OnRecorderStateChangedListener;)V

    .line 1397
    :cond_2
    sget-object v0, Lcom/android/fmradio/FmService;->sRecordingSdcard:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/fmradio/FmService;->isSdcardReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1398
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    iget-object v1, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmRecorder;->startRecording(Landroid/content/Context;)V

    goto :goto_0

    .line 1400
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/fmradio/FmService;->onRecorderError(I)V

    goto :goto_0
.end method

.method private declared-synchronized startRender()V
    .locals 3

    .prologue
    .line 545
    monitor-enter p0

    :try_start_0
    const-string v0, "FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startRender "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    .line 550
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 552
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mAudioRecord:Landroid/media/AudioRecord;

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 556
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->stopAudioTrack()V

    .line 559
    :cond_1
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->initAudioRecordSink()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsRender:Z

    .line 561
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mRenderLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 562
    :try_start_1
    const-string v0, "FmService"

    const-string v2, "startRender: notifying for mRenderLock"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mRenderLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 561
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    :goto_0
    monitor-exit p0

    return-void

    .line 561
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 545
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 566
    :cond_2
    :try_start_4
    const-string v0, "FmService"

    const-string v1, "initAudioRecordSink: fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method private startScan()[I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1086
    const-string v4, "FmService"

    const-string v5, "startScan"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const/4 v2, 0x0

    .line 1089
    .local v2, "stations":[I
    invoke-direct {p0, v6}, Lcom/android/fmradio/FmService;->setRds(Z)I

    .line 1090
    invoke-virtual {p0, v7}, Lcom/android/fmradio/FmService;->setMute(Z)I

    .line 1091
    const/4 v3, 0x0

    .line 1092
    .local v3, "stationsInShort":[S
    iget-boolean v4, p0, Lcom/android/fmradio/FmService;->mIsStopScanCalled:Z

    if-nez v4, :cond_0

    .line 1093
    iput-boolean v7, p0, Lcom/android/fmradio/FmService;->mIsNativeScanning:Z

    .line 1094
    invoke-static {}, Lcom/android/fmradio/FmNative;->autoScan()[S

    move-result-object v3

    .line 1095
    iput-boolean v6, p0, Lcom/android/fmradio/FmService;->mIsNativeScanning:Z

    .line 1098
    :cond_0
    invoke-direct {p0, v7}, Lcom/android/fmradio/FmService;->setRds(Z)I

    .line 1099
    iget-boolean v4, p0, Lcom/android/fmradio/FmService;->mIsStopScanCalled:Z

    if-eqz v4, :cond_1

    .line 1103
    new-array v3, v7, [S

    .line 1104
    .end local v3    # "stationsInShort":[S
    const/16 v4, -0x64

    aput-short v4, v3, v6

    .line 1106
    .restart local v3    # "stationsInShort":[S
    iput-boolean v6, p0, Lcom/android/fmradio/FmService;->mIsStopScanCalled:Z

    .line 1109
    :cond_1
    if-eqz v3, :cond_2

    .line 1110
    array-length v1, v3

    .line 1111
    .local v1, "size":I
    new-array v2, v1, [I

    .line 1112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_3

    .line 1116
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    return-object v2

    .line 1113
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_3
    aget-short v4, v3, v0

    aput v4, v2, v0

    .line 1112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private stopAudioTrack()V
    .locals 4

    .prologue
    .line 636
    const-string v1, "FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stopAudioTrack, mAudioTrack = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 642
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 643
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 644
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/fmradio/FmService;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "FmService"

    const-string v2, "stopAudioTrack, IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 648
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "FmService"

    const-string v2, "stopAudioTrack, NullPointerException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopRdsThread()V
    .locals 2

    .prologue
    .line 2183
    const-string v0, "FmService"

    const-string v1, "stopRdsThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mRdsThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsRdsThreadExit:Z

    .line 2187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mRdsThread:Ljava/lang/Thread;

    .line 2189
    :cond_0
    return-void
.end method

.method private stopRecording()Z
    .locals 3

    .prologue
    .line 1424
    const-string v0, "FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopRecording, mFmRecorder"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    if-nez v0, :cond_0

    .line 1426
    const-string v0, "FmService"

    const-string v1, "stopRecording, called without a valid recorder!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    const/4 v0, 0x0

    .line 1432
    :goto_0
    return v0

    .line 1429
    :cond_0
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mStopRecordingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1430
    :try_start_0
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    iget-object v2, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/fmradio/FmRecorder;->stopRecording(Landroid/content/Context;)V

    .line 1429
    monitor-exit v1

    .line 1432
    const/4 v0, 0x1

    goto :goto_0

    .line 1429
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized stopRender()V
    .locals 8

    .prologue
    .line 571
    monitor-enter p0

    :try_start_0
    const-string v4, "FmService"

    const-string v5, "stopRender"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v5, p0, Lcom/android/fmradio/FmService;->mRenderingLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 573
    :try_start_1
    const-string v4, "FmService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "stopRender_processing, mIsRender = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->isRender()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->isRender()Z

    move-result v1

    .line 575
    .local v1, "localRender":Z
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/fmradio/FmService;->mIsRender:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    if-eqz v1, :cond_0

    .line 578
    const-wide/16 v2, 0xc8

    .line 579
    .local v2, "wait":J
    :try_start_2
    const-string v4, "FmService"

    const-string v6, "stopRender: waiting for mRenderingLock"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v4, p0, Lcom/android/fmradio/FmService;->mRenderingLock:Ljava/lang/Object;

    invoke-virtual {v4, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 572
    .end local v2    # "wait":J
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 586
    monitor-exit p0

    return-void

    .line 581
    .restart local v2    # "wait":J
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v4, "FmService"

    const-string v6, "stopRender, thread is interrupted"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 572
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "localRender":Z
    .end local v2    # "wait":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 571
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private switchAntenna(I)I
    .locals 4
    .param p1, "antenna"    # I

    .prologue
    .line 1368
    const-string v1, "FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "switchAntenna, antenna = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    invoke-static {p1}, Lcom/android/fmradio/FmNative;->switchAntenna(I)I

    move-result v0

    .line 1371
    .local v0, "ret":I
    return v0
.end method

.method private tuneStation(F)Z
    .locals 7
    .param p1, "frequency"    # F

    .prologue
    const/4 v2, 0x0

    .line 995
    const-string v4, "FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tuneStation, frequency = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const-string v4, ""

    iput-object v4, p0, Lcom/android/fmradio/FmService;->mPsString:Ljava/lang/String;

    .line 999
    const-string v4, ""

    iput-object v4, p0, Lcom/android/fmradio/FmService;->mRtTextString:Ljava/lang/String;

    .line 1000
    iget v4, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v5, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-ne v4, v5, :cond_2

    .line 1001
    invoke-direct {p0, v2}, Lcom/android/fmradio/FmService;->setRds(Z)I

    .line 1002
    invoke-static {p1}, Lcom/android/fmradio/FmNative;->tune(F)Z

    move-result v0

    .line 1003
    .local v0, "bRet":Z
    if-eqz v0, :cond_1

    .line 1004
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/fmradio/FmService;->setRds(Z)I

    .line 1005
    invoke-static {p1}, Lcom/android/fmradio/FmUtils;->computeStation(F)I

    move-result v4

    iput v4, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    .line 1006
    iget-object v4, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    invoke-static {v4, v5}, Lcom/android/fmradio/FmStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 1007
    sget-object v4, Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;

    if-eqz v4, :cond_0

    .line 1008
    sget-object v4, Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;

    invoke-interface {v4}, Lcom/android/fmradio/FmService$OnChannelListListener;->onTuneFinished()V

    .line 1011
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1012
    .local v1, "mainHandler":Landroid/os/Handler;
    new-instance v4, Lcom/android/fmradio/FmService$2;

    invoke-direct {v4, p0}, Lcom/android/fmradio/FmService$2;-><init>(Lcom/android/fmradio/FmService;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1018
    invoke-static {}, Lcom/android/fmradio/FmRadioWidget;->getInstance()Lcom/android/fmradio/FmRadioWidget;

    move-result-object v3

    .line 1019
    .local v3, "widget":Lcom/android/fmradio/FmRadioWidget;
    iget-object v4, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    invoke-virtual {v3, v4, v5}, Lcom/android/fmradio/FmRadioWidget;->updateWidget(Landroid/content/Context;I)V

    .line 1021
    .end local v1    # "mainHandler":Landroid/os/Handler;
    .end local v3    # "widget":Lcom/android/fmradio/FmRadioWidget;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/fmradio/FmService;->setMute(Z)I

    .line 1037
    .end local v0    # "bRet":Z
    :goto_0
    return v0

    .line 1026
    :cond_2
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->isAntennaAvailable()Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    .line 1027
    goto :goto_0

    .line 1031
    :cond_3
    const/4 v2, 0x0

    .line 1033
    .local v2, "tune":Z
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->powerUp(F)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1034
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->playFrequency(F)Z

    move-result v2

    :cond_4
    move v0, v2

    .line 1037
    goto :goto_0
.end method

.method private unregisterAudioPortUpdateListener()V
    .locals 3

    .prologue
    .line 1585
    const-string v0, "FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregisterAudioPortUpdateListener, list = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/fmradio/FmService;->mAudioPortUpdateListener:Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioPortUpdateListener:Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/fmradio/FmService;->mAudioPortUpdateListener:Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 1588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mAudioPortUpdateListener:Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;

    .line 1590
    :cond_0
    return-void
.end method

.method public static unregisterExitListener(Lcom/android/fmradio/FmService$OnChannelListListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/android/fmradio/FmService$OnChannelListListener;

    .prologue
    .line 3625
    const/4 v0, 0x0

    sput-object v0, Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;

    .line 3626
    return-void
.end method

.method private unregisterFmBroadcastReceiver()V
    .locals 2

    .prologue
    .line 1968
    const-string v0, "FmService"

    const-string v1, "unregisterFmBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mBroadcastReceiver:Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1970
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mBroadcastReceiver:Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1971
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mBroadcastReceiver:Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;

    .line 1973
    :cond_0
    return-void
.end method

.method private unregisterSdcardListener()V
    .locals 1

    .prologue
    .line 2695
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mSdcardListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2696
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mSdcardListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2698
    :cond_0
    return-void
.end method

.method private updateAudioFocus(I)V
    .locals 11
    .param p1, "focusState"    # I

    .prologue
    const/16 v10, 0x17

    const/16 v9, 0x16

    const/4 v8, 0x6

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2921
    const-string v3, "FmService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateAudioFocus: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    packed-switch p1, :pswitch_data_0

    .line 3008
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2924
    :pswitch_1
    iput-boolean v7, p0, Lcom/android/fmradio/FmService;->mPausedByTransientLossOfFocus:Z

    .line 2929
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    if-eqz v3, :cond_1

    .line 2930
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    invoke-virtual {v3}, Lcom/android/fmradio/FmRecorder;->getState()I

    move-result v2

    .line 2932
    .local v2, "fmState":I
    if-ne v2, v8, :cond_1

    .line 2933
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v9}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2935
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v10}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2937
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->stopRecording()Z

    .line 2940
    .end local v2    # "fmState":I
    :cond_1
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->forceToHeadsetMode()V

    .line 2941
    iget-boolean v3, p0, Lcom/android/fmradio/FmService;->mIsParametersSet:Z

    if-eqz v3, :cond_2

    .line 2942
    iput-boolean v7, p0, Lcom/android/fmradio/FmService;->mIsParametersSet:Z

    .line 2943
    const-string v3, "FmService"

    const-string v4, "AudioFmPreStop=0"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "AudioFmPreStop=0"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2946
    :cond_2
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->handlePowerDown()V

    goto :goto_0

    .line 2950
    :pswitch_2
    iget v3, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v4, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-ne v3, v4, :cond_3

    .line 2951
    iput-boolean v6, p0, Lcom/android/fmradio/FmService;->mPausedByTransientLossOfFocus:Z

    .line 2957
    :cond_3
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    if-eqz v3, :cond_4

    .line 2958
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    invoke-virtual {v3}, Lcom/android/fmradio/FmRecorder;->getState()I

    move-result v2

    .line 2959
    .restart local v2    # "fmState":I
    if-ne v2, v8, :cond_4

    .line 2960
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v9}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2962
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v10}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2964
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->stopRecording()Z

    .line 2967
    .end local v2    # "fmState":I
    :cond_4
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->forceToHeadsetMode()V

    .line 2968
    iget-boolean v3, p0, Lcom/android/fmradio/FmService;->mIsParametersSet:Z

    if-eqz v3, :cond_5

    .line 2969
    iput-boolean v7, p0, Lcom/android/fmradio/FmService;->mIsParametersSet:Z

    .line 2970
    const-string v3, "FmService"

    const-string v4, "AudioFmPreStop=0"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "AudioFmPreStop=0"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2973
    :cond_5
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->handlePowerDown()V

    goto :goto_0

    .line 2981
    :pswitch_3
    iget v3, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v4, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-eq v3, v4, :cond_6

    iget-boolean v3, p0, Lcom/android/fmradio/FmService;->mPausedByTransientLossOfFocus:Z

    if-eqz v3, :cond_6

    .line 2982
    const/4 v1, 0x1

    .line 2983
    .local v1, "bundleSize":I
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2984
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2985
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 2986
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "frequency"

    iget v4, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    invoke-static {v4}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2987
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmService;->handlePowerUp(Landroid/os/Bundle;)V

    .line 2989
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleSize":I
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/fmradio/FmService;->setMute(Z)I

    .line 2990
    const-string v3, "FmService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "audio focus re-gain, force use: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fmradio/FmService;->getForceUse()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2991
    const-string v5, " isSpeakerUsed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/fmradio/FmService;->mIsSpeakerUsed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2990
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->getForceUse()I

    move-result v3

    if-eq v3, v6, :cond_7

    iget-boolean v3, p0, Lcom/android/fmradio/FmService;->mIsSpeakerUsed:Z

    if-eqz v3, :cond_7

    .line 2993
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->getForceUse()I

    move-result v3

    invoke-static {v6, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 2994
    iput-boolean v7, p0, Lcom/android/fmradio/FmService;->mIsSpeakerUsed:Z

    goto/16 :goto_0

    .line 2995
    :cond_7
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->getForceUse()I

    move-result v3

    if-ne v3, v6, :cond_0

    iget-boolean v3, p0, Lcom/android/fmradio/FmService;->mIsSpeakerUsed:Z

    if-nez v3, :cond_0

    .line 2996
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->getForceUse()I

    move-result v3

    invoke-static {v6, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 2997
    iput-boolean v6, p0, Lcom/android/fmradio/FmService;->mIsSpeakerUsed:Z

    goto/16 :goto_0

    .line 3002
    :pswitch_4
    invoke-virtual {p0, v6}, Lcom/android/fmradio/FmService;->setMute(Z)I

    goto/16 :goto_0

    .line 2922
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized updateAudioFocusAync(I)V
    .locals 6
    .param p1, "focusState"    # I

    .prologue
    .line 2906
    monitor-enter p0

    :try_start_0
    const-string v3, "FmService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateAudioFocusAync, focusState = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    const/4 v1, 0x1

    .line 2908
    .local v1, "bundleSize":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2909
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "key_audiofocus_changed"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2910
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2911
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2912
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2913
    monitor-exit p0

    return-void

    .line 2906
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleSize":I
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private updateDBInLocation([I)I
    .locals 16
    .param p1, "stations"    # [I

    .prologue
    .line 3183
    const/4 v14, 0x0

    .line 3184
    .local v14, "stationNum":I
    move-object/from16 v0, p1

    array-length v13, v0

    .line 3185
    .local v13, "searchedListSize":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3186
    .local v15, "stationsInDB":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 3189
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/fmradio/FmStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 3190
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "frequency"

    aput-object v5, v3, v4

    .line 3191
    const-string v4, "is_favorite=0"

    .line 3192
    const/4 v5, 0x0

    const-string v6, "frequency"

    .line 3189
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3193
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3197
    :cond_0
    const-string v1, "frequency"

    .line 3196
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 3198
    .local v8, "freqInDB":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3199
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 3205
    .end local v8    # "freqInDB":I
    :goto_0
    if-eqz v7, :cond_1

    .line 3206
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3210
    :cond_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 3212
    .local v12, "listSizeInDB":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-lt v10, v12, :cond_4

    .line 3227
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    if-lt v11, v13, :cond_8

    .line 3238
    return v14

    .line 3202
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v12    # "listSizeInDB":I
    :cond_2
    :try_start_1
    const-string v1, "FmService"

    const-string v2, "updateDBInLocation, insertSearchedStation cursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3204
    :catchall_0
    move-exception v1

    .line 3205
    if-eqz v7, :cond_3

    .line 3206
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3208
    :cond_3
    throw v1

    .line 3213
    .restart local v10    # "i":I
    .restart local v12    # "listSizeInDB":I
    :cond_4
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3214
    .restart local v8    # "freqInDB":I
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_3
    if-lt v11, v13, :cond_6

    .line 3212
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3215
    :cond_6
    aget v9, p1, v11

    .line 3216
    .local v9, "freqSearched":I
    if-eq v8, v9, :cond_5

    .line 3219
    add-int/lit8 v1, v13, -0x1

    if-ne v11, v1, :cond_7

    if-eq v8, v9, :cond_7

    .line 3221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/android/fmradio/FmStation;->deleteStationInDb(Landroid/content/Context;I)V

    .line 3214
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 3228
    .end local v8    # "freqInDB":I
    .end local v9    # "freqSearched":I
    :cond_8
    aget v9, p1, v11

    .line 3229
    .restart local v9    # "freqSearched":I
    invoke-static {v9}, Lcom/android/fmradio/FmUtils;->isValidStation(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3230
    add-int/lit8 v14, v14, 0x1

    .line 3231
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 3232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/android/fmradio/FmStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 3234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v1, v9, v2}, Lcom/android/fmradio/FmStation;->insertStationToDb(Landroid/content/Context;ILjava/lang/String;)V

    .line 3227
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_2
.end method

.method private updateSdcardStateMap(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 2701
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2702
    .local v0, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2703
    .local v2, "sdcardPath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 2704
    .local v1, "mountPointUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 2705
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 2706
    if-eqz v2, :cond_0

    .line 2707
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2708
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mSdcardStateMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2716
    :cond_0
    :goto_0
    return-void

    .line 2709
    :cond_1
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2710
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mSdcardStateMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2711
    :cond_2
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2712
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mSdcardStateMap:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateStations([I)[I
    .locals 9
    .param p1, "stations"    # [I

    .prologue
    const/4 v8, 0x0

    .line 3146
    const-string v5, "FmService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "updateStations.firstValidstation:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    iget v0, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    .line 3149
    .local v0, "firstValidstation":I
    const/4 v4, 0x0

    .line 3150
    .local v4, "stationNum":I
    if-eqz p1, :cond_0

    .line 3151
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 3152
    aget v0, p1, v8

    .line 3153
    array-length v3, p1

    .line 3154
    .local v3, "searchedListSize":I
    iget-boolean v5, p0, Lcom/android/fmradio/FmService;->mIsDistanceExceed:Z

    if-eqz v5, :cond_3

    .line 3155
    iget-object v5, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/fmradio/FmStation;->cleanSearchedStations(Landroid/content/Context;)V

    .line 3156
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 3169
    .end local v2    # "j":I
    .end local v3    # "searchedListSize":I
    :cond_0
    :goto_1
    const-string v5, "FmService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "updateStations.firstValidstation:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3170
    const-string v7, ",stationNum:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3169
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 3172
    aput v0, v5, v8

    const/4 v6, 0x1

    aput v4, v5, v6

    .line 3171
    return-object v5

    .line 3157
    .restart local v2    # "j":I
    .restart local v3    # "searchedListSize":I
    :cond_1
    aget v1, p1, v2

    .line 3158
    .local v1, "freqSearched":I
    invoke-static {v1}, Lcom/android/fmradio/FmUtils;->isValidStation(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3159
    iget-object v5, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/android/fmradio/FmStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3160
    iget-object v5, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v1, v6}, Lcom/android/fmradio/FmStation;->insertStationToDb(Landroid/content/Context;ILjava/lang/String;)V

    .line 3156
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3165
    .end local v1    # "freqSearched":I
    .end local v2    # "j":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->updateDBInLocation([I)I

    move-result v4

    goto :goto_1
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    .prologue
    .line 2835
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/fmradio/FmService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2836
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsAudioFocusHeld:Z

    .line 2837
    return-void
.end method

.method public activeAfAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x12

    .line 1210
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1211
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1212
    return-void
.end method

.method public emcmd([S)[S
    .locals 4
    .param p1, "val"    # [S

    .prologue
    .line 3756
    const-string v1, "FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>FMRadioService.emcmd: val="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    const/4 v0, 0x0

    .line 3758
    .local v0, "shortCmds":[S
    invoke-static {p1}, Lcom/android/fmradio/FmNative;->emcmd([S)[S

    move-result-object v0

    .line 3759
    const-string v1, "FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<FMRadioService.emcmd:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3760
    return-object v0
.end method

.method public getCapArray()I
    .locals 2

    .prologue
    .line 3774
    const-string v0, "FmService"

    const-string v1, "FMRadioService.readCapArray"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3775
    iget v0, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v1, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-eq v0, v1, :cond_0

    .line 3776
    const-string v0, "FmService"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3777
    const/4 v0, -0x1

    .line 3779
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/fmradio/FmNative;->readCapArray()S

    move-result v0

    goto :goto_0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 1313
    iget v0, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    return v0
.end method

.method public getHardwareVersion()[I
    .locals 1

    .prologue
    .line 3767
    invoke-static {}, Lcom/android/fmradio/FmNative;->getHardwareVersion()[I

    move-result-object v0

    return-object v0
.end method

.method public getModifiedRecordingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3635
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mModifiedRecordingName:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerStatus()I
    .locals 1

    .prologue
    .line 973
    iget v0, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    return v0
.end method

.method public getPs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mPsString:Ljava/lang/String;

    return-object v0
.end method

.method public getRdsBler()I
    .locals 2

    .prologue
    .line 3798
    const-string v0, "FmService"

    const-string v1, "FMRadioService.readRdsBler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3799
    iget v0, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v1, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-eq v0, v1, :cond_0

    .line 3800
    const-string v0, "FmService"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3801
    const/4 v0, -0x1

    .line 3803
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/fmradio/FmNative;->readRdsBler()S

    move-result v0

    goto :goto_0
.end method

.method public getRecordTime()J
    .locals 2

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/android/fmradio/FmRecorder;->getRecordTime()J

    move-result-wide v0

    .line 1472
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getRecorderState()I
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/android/fmradio/FmRecorder;->getState()I

    move-result v0

    .line 1526
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRecordingMode()Z
    .locals 1

    .prologue
    .line 1514
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsInRecordingMode:Z

    return v0
.end method

.method public getRecordingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/android/fmradio/FmRecorder;->getRecordFileName()Ljava/lang/String;

    move-result-object v0

    .line 1538
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRssi()I
    .locals 2

    .prologue
    .line 3786
    const-string v0, "FmService"

    const-string v1, "FMRadioService.readRssi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3787
    iget v0, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v1, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-eq v0, v1, :cond_0

    .line 3788
    const-string v0, "FmService"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3789
    const/4 v0, -0x1

    .line 3791
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/fmradio/FmNative;->readRssi()I

    move-result v0

    goto :goto_0
.end method

.method public getRtText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mRtTextString:Ljava/lang/String;

    return-object v0
.end method

.method public getStereoMono()Z
    .locals 2

    .prologue
    .line 3720
    const-string v0, "FmService"

    const-string v1, "FMRadioService.getStereoMono"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3721
    invoke-static {}, Lcom/android/fmradio/FmNative;->stereoMono()Z

    move-result v0

    return v0
.end method

.method public initService(I)V
    .locals 1
    .param p1, "iCurrentStation"    # I

    .prologue
    .line 1294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsServiceInited:Z

    .line 1295
    iput p1, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    .line 1296
    return-void
.end method

.method public isActivityForeground()Z
    .locals 1

    .prologue
    .line 3542
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsFmMainForeground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsFmFavoriteForeground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsFmRecordForeground:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method public isBluetoothHeadsetInUse()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 536
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 537
    .local v1, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    .line 538
    .local v0, "a2dpState":I
    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    .line 539
    if-eq v2, v0, :cond_0

    .line 538
    const/4 v2, 0x0

    .line 540
    .local v2, "ret":Z
    :cond_0
    const-string v3, "FmService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isBluetoothHeadsetInUse "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return v2
.end method

.method public isDeviceOpen()Z
    .locals 3

    .prologue
    .line 800
    const-string v0, "FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isDeviceOpen"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsDeviceOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsDeviceOpen:Z

    return v0
.end method

.method public isInCountDownMode()Z
    .locals 1

    .prologue
    .line 3908
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsInCountDownMode:Z

    return v0
.end method

.method public isInLockTaskMode()Z
    .locals 3

    .prologue
    .line 3576
    const-string v0, "FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isInLockTaskMode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/fmradio/FmService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    return v0
.end method

.method public isModeNormal()Z
    .locals 4

    .prologue
    .line 3708
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 3709
    .local v0, "mode":I
    const-string v1, "FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isInCall mode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3710
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 1266
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsMuted:Z

    return v0
.end method

.method public isRdsSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1275
    invoke-static {}, Lcom/android/fmradio/FmNative;->isRdsSupport()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1276
    .local v0, "isRdsSupported":Z
    :goto_0
    return v0

    .line 1275
    .end local v0    # "isRdsSupported":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecordingCardUnmount(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3140
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3141
    .local v0, "unmountSDCard":Ljava/lang/String;
    const-string v1, "FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unmount sd card file path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/fmradio/FmService;->sRecordingSdcard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRender()Z
    .locals 2

    .prologue
    .line 753
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsRender:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v1, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsAudioFocusHeld:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 1125
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsScanning:Z

    return v0
.end method

.method public isSeeking()Z
    .locals 1

    .prologue
    .line 1155
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsNativeSeeking:Z

    return v0
.end method

.method public isServiceInited()Z
    .locals 1

    .prologue
    .line 1304
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsServiceInited:Z

    return v0
.end method

.method public isSpeakerUsed()Z
    .locals 1

    .prologue
    .line 1285
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsSpeakerUsed:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2043
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2045
    iget v0, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v1, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-ne v0, v1, :cond_0

    .line 2046
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->showPlayingNotification()V

    .line 2048
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 1543
    const-string v2, "FmService"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1545
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    .line 1546
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/fmradio/FmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    .line 1547
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/fmradio/FmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/fmradio/FmService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1548
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/fmradio/FmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1549
    .local v1, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "FmService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/fmradio/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1550
    invoke-static {}, Lcom/android/fmradio/FmUtils;->isFmSuspendSupport()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1551
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1553
    :cond_0
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/fmradio/FmUtils;->getDefaultStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/fmradio/FmService;->sRecordingSdcard:Ljava/lang/String;

    .line 1555
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->registerFmBroadcastReceiver()V

    .line 1556
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->registerSdcardReceiver()V

    .line 1557
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->registerAudioPortUpdateListener()V

    .line 1559
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "FmRadioServiceThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1560
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1561
    new-instance v2, Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;-><init>(Lcom/android/fmradio/FmService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    .line 1563
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->openDevice()Z

    .line 1565
    iget-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsSpeakerUsed:Z

    invoke-direct {p0, v2}, Lcom/android/fmradio/FmService;->setForceUse(Z)V

    .line 1567
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->initAudioRecordSink()Z

    .line 1568
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->createRenderThread()V

    .line 1574
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1977
    const-string v0, "FmService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsSpeakerUsed:Z

    if-eqz v0, :cond_0

    .line 1979
    invoke-direct {p0, v2}, Lcom/android/fmradio/FmService;->setForceUse(Z)V

    .line 1981
    :cond_0
    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsParametersSet:Z

    if-eqz v0, :cond_1

    .line 1982
    iput-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsParametersSet:Z

    .line 1983
    const-string v0, "FmService"

    const-string v1, "AudioFmPreStop=0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "AudioFmPreStop=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1986
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmService;->setMute(Z)I

    .line 1988
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->isRdsSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1989
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->stopRdsThread()V

    .line 1991
    :cond_2
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->unregisterFmBroadcastReceiver()V

    .line 1992
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->unregisterSdcardListener()V

    .line 1997
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->abandonAudioFocus()V

    .line 1998
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->exitFm()V

    .line 1999
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    if-eqz v0, :cond_3

    .line 2000
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fmradio/FmService;->mFmRecorder:Lcom/android/fmradio/FmRecorder;

    .line 2002
    :cond_3
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->exitRenderThread()V

    .line 2003
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->releaseAudioPatch()V

    .line 2004
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->unregisterAudioPortUpdateListener()V

    .line 2005
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2006
    return-void
.end method

.method public onRecorderError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 2744
    iput p1, p0, Lcom/android/fmradio/FmService;->mRecorderErrorType:I

    .line 2746
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 2747
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "callback_flag"

    const v2, 0x100110

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2748
    const-string v1, "key_recording_error_type"

    iget v2, p0, Lcom/android/fmradio/FmService;->mRecorderErrorType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2749
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 2750
    return-void
.end method

.method public onRecorderStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 2725
    iput p1, p0, Lcom/android/fmradio/FmService;->mRecordState:I

    .line 2726
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/fmradio/FmService;->mRecordState:I

    if-eq v1, v2, :cond_0

    .line 2727
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/fmradio/FmService;->mIsInRecordingMode:Z

    .line 2729
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 2730
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "callback_flag"

    const v2, 0x100101

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2731
    const-string v1, "key_is_recording_state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2732
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 2733
    return-void
.end method

.method public onShake()V
    .locals 4

    .prologue
    .line 3914
    const-string v0, "FmService"

    const-string v1, "onShake"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3915
    iget v0, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v1, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsNativeSeeking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/fmradio/FmService;->mIsScanning:Z

    if-nez v0, :cond_0

    .line 3916
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/fmradio/FmService;->lastShakeTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3917
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fmradio/FmService;->lastShakeTime:J

    .line 3918
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3919
    const v1, 0x7f0900c8

    invoke-virtual {p0, v1}, Lcom/android/fmradio/FmService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3920
    const/4 v2, 0x0

    .line 3918
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3920
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3922
    iget v0, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    invoke-static {v0}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v0

    const/4 v1, 0x1

    .line 3921
    invoke-virtual {p0, v0, v1}, Lcom/android/fmradio/FmService;->seekStationAsync(FZ)V

    .line 3925
    :cond_0
    return-void
.end method

.method public onShowToast(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 2758
    const-string v1, "FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "service.onShowToast "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mBroadcastReceiver:Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 2760
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SHOWTOAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2761
    .local v0, "intentToShowToast":Landroid/content/Intent;
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2762
    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2768
    .end local v0    # "intentToShowToast":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2764
    :cond_0
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2766
    const/4 v2, 0x0

    .line 2764
    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 2766
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 2052
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    .line 2054
    .local v1, "ret":I
    if-eqz p1, :cond_0

    .line 2055
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2056
    .local v0, "action":Ljava/lang/String;
    const-string v2, "fmradio.seek.previous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2057
    iget v2, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    invoke-static {v2}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/fmradio/FmService;->seekStationAsync(FZ)V

    .line 2064
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v2, 0x2

    return v2

    .line 2058
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v2, "fmradio.seek.next"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2059
    iget v2, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    invoke-static {v2}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/fmradio/FmService;->seekStationAsync(FZ)V

    goto :goto_0

    .line 2060
    :cond_2
    const-string v2, "fmradio.turnoff"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2061
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->powerDownAsync()V

    goto :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 3649
    const-string v0, "FmService"

    const-string v1, "onTaskRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3650
    iget v0, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v1, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-eq v0, v1, :cond_0

    .line 3651
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->exitFm()V

    .line 3652
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->stopSelf()V

    .line 3654
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 3655
    return-void
.end method

.method public powerDownAsync()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 912
    const-string v0, "FmService"

    const-string v1, "powerDownAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 917
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 918
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 919
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v0, v2}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 920
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 921
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v0, v2}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 922
    return-void
.end method

.method public powerUpAsync(F)V
    .locals 7
    .param p1, "frequency"    # F

    .prologue
    const/16 v6, 0x9

    .line 810
    const-string v3, "FmService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "powerUpAsync, frequency = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const/4 v1, 0x1

    .line 812
    .local v1, "bundleSize":I
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v6}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 813
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 814
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 815
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "frequency"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 816
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v6}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 817
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 818
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 819
    return-void
.end method

.method public registerFmRadioListener(Lcom/android/fmradio/FmListener;)V
    .locals 7
    .param p1, "callback"    # Lcom/android/fmradio/FmListener;

    .prologue
    .line 3034
    iget-object v6, p0, Lcom/android/fmradio/FmService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 3037
    const/4 v3, 0x0

    .line 3038
    .local v3, "record":Lcom/android/fmradio/FmService$Record;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 3039
    .local v0, "hashCode":I
    iget-object v5, p0, Lcom/android/fmradio/FmService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3040
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    move-object v4, v3

    .end local v3    # "record":Lcom/android/fmradio/FmService$Record;
    .local v4, "record":Lcom/android/fmradio/FmService$Record;
    :goto_0
    if-lt v1, v2, :cond_0

    .line 3046
    :try_start_1
    new-instance v3, Lcom/android/fmradio/FmService$Record;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/fmradio/FmService$Record;-><init>(Lcom/android/fmradio/FmService$Record;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3047
    .end local v4    # "record":Lcom/android/fmradio/FmService$Record;
    .restart local v3    # "record":Lcom/android/fmradio/FmService$Record;
    :try_start_2
    iput v0, v3, Lcom/android/fmradio/FmService$Record;->mHashCode:I

    .line 3048
    iput-object p1, v3, Lcom/android/fmradio/FmService$Record;->mCallback:Lcom/android/fmradio/FmListener;

    .line 3049
    iget-object v5, p0, Lcom/android/fmradio/FmService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3034
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3051
    :goto_1
    return-void

    .line 3041
    .end local v3    # "record":Lcom/android/fmradio/FmService$Record;
    .restart local v4    # "record":Lcom/android/fmradio/FmService$Record;
    :cond_0
    :try_start_3
    iget-object v5, p0, Lcom/android/fmradio/FmService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fmradio/FmService$Record;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3042
    .end local v4    # "record":Lcom/android/fmradio/FmService$Record;
    .restart local v3    # "record":Lcom/android/fmradio/FmService$Record;
    :try_start_4
    iget v5, v3, Lcom/android/fmradio/FmService$Record;->mHashCode:I

    if-ne v0, v5, :cond_1

    .line 3043
    monitor-exit v6

    goto :goto_1

    .line 3034
    .end local v0    # "hashCode":I
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v5

    :goto_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 3040
    .restart local v0    # "hashCode":I
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-object v4, v3

    .end local v3    # "record":Lcom/android/fmradio/FmService$Record;
    .restart local v4    # "record":Lcom/android/fmradio/FmService$Record;
    goto :goto_0

    .line 3034
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "record":Lcom/android/fmradio/FmService$Record;
    .restart local v3    # "record":Lcom/android/fmradio/FmService$Record;
    goto :goto_2
.end method

.method public removeNotification()V
    .locals 1

    .prologue
    .line 2667
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmService;->stopForeground(Z)V

    .line 2668
    return-void
.end method

.method public requestAudioFocus()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2819
    const-string v2, "FmService"

    const-string v3, "requestAudioFocus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    iget-boolean v2, p0, Lcom/android/fmradio/FmService;->mIsAudioFocusHeld:Z

    if-eqz v2, :cond_0

    .line 2828
    :goto_0
    return v1

    .line 2824
    :cond_0
    iget-object v2, p0, Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/fmradio/FmService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2825
    const/4 v4, 0x3

    .line 2824
    invoke-virtual {v2, v3, v4, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 2826
    .local v0, "audioFocus":I
    if-ne v1, v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/fmradio/FmService;->mIsAudioFocusHeld:Z

    .line 2827
    const-string v1, "FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestAudioFocus, mIsAudioFocusHeld: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/fmradio/FmService;->mIsAudioFocusHeld:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    iget-boolean v1, p0, Lcom/android/fmradio/FmService;->mIsAudioFocusHeld:Z

    goto :goto_0

    .line 2826
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public saveRecordingAsync(Ljava/lang/String;)V
    .locals 7
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x1a

    .line 1442
    const-string v3, "FmService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "saveRecordingAsync, name = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v6}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1444
    const/4 v1, 0x1

    .line 1445
    .local v1, "bundleSize":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1446
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "name"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v6}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1448
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1449
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1450
    return-void
.end method

.method public seekStationAsync(FZ)V
    .locals 7
    .param p1, "frequency"    # F
    .param p2, "isUp"    # Z

    .prologue
    const/16 v6, 0x10

    .line 1049
    const-string v3, "FmService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "seekStationAsync, frequency = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isUp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v6}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1051
    const/4 v1, 0x2

    .line 1052
    .local v1, "bundleSize":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1053
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "frequency"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1054
    const-string v3, "option"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1055
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v6}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1056
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1057
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1058
    return-void
.end method

.method public setDistanceExceed(Z)V
    .locals 0
    .param p1, "exceed"    # Z

    .prologue
    .line 3684
    iput-boolean p1, p0, Lcom/android/fmradio/FmService;->mIsDistanceExceed:Z

    .line 3685
    return-void
.end method

.method public setEmth(II)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 3744
    const-string v1, "FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> FMRadioService.setEmth: index="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    invoke-static {p1, p2}, Lcom/android/fmradio/FmNative;->emsetth(II)Z

    move-result v0

    .line 3746
    .local v0, "isOk":Z
    const-string v1, "FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FMRadioService.setEmth: isOk="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3747
    return v0
.end method

.method public setFmFavoriteForeground(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 3558
    iput-boolean p1, p0, Lcom/android/fmradio/FmService;->mIsFmFavoriteForeground:Z

    .line 3559
    return-void
.end method

.method public setFmMainActivityForeground(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 3550
    iput-boolean p1, p0, Lcom/android/fmradio/FmService;->mIsFmMainForeground:Z

    .line 3551
    return-void
.end method

.method public setFmRecordActivityForeground(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 3566
    iput-boolean p1, p0, Lcom/android/fmradio/FmService;->mIsFmRecordForeground:Z

    .line 3567
    return-void
.end method

.method public setFrequency(I)V
    .locals 0
    .param p1, "station"    # I

    .prologue
    .line 1322
    iput p1, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    .line 1323
    return-void
.end method

.method public setModifiedRecordingName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3644
    iput-object p1, p0, Lcom/android/fmradio/FmService;->mModifiedRecordingName:Ljava/lang/String;

    .line 3645
    return-void
.end method

.method public setMute(Z)I
    .locals 4
    .param p1, "mute"    # Z

    .prologue
    .line 1250
    const-string v1, "FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setMute, mute = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget v1, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v2, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-eq v1, v2, :cond_0

    .line 1252
    const-string v1, "FmService"

    const-string v2, "setMute, FM is not powered up"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const/4 v0, -0x1

    .line 1257
    :goto_0
    return v0

    .line 1255
    :cond_0
    invoke-static {p1}, Lcom/android/fmradio/FmNative;->setMute(Z)I

    move-result v0

    .line 1256
    .local v0, "iRet":I
    iput-boolean p1, p0, Lcom/android/fmradio/FmService;->mIsMuted:Z

    goto :goto_0
.end method

.method public setMuteAsync(Z)V
    .locals 7
    .param p1, "mute"    # Z

    .prologue
    const/4 v6, 0x7

    .line 1232
    const-string v3, "FmService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setMuteAsync, mute = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v6}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1234
    const/4 v1, 0x1

    .line 1235
    .local v1, "bundleSize":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1236
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "option"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1237
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v6}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1238
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1239
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1240
    return-void
.end method

.method public setRdsAsync(Z)V
    .locals 7
    .param p1, "on"    # Z

    .prologue
    const/4 v6, 0x5

    .line 1164
    const-string v3, "FmService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setRdsAsync, on = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const/4 v1, 0x1

    .line 1166
    .local v1, "bundleSize":I
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v6}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1167
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1168
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "option"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1169
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v6}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1170
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1171
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1172
    return-void
.end method

.method public setRecordingModeAsync(Z)V
    .locals 7
    .param p1, "isRecording"    # Z

    .prologue
    const/16 v6, 0x15

    .line 1481
    const-string v3, "FmService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setRecordingModeAsync, isRecording = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v6}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1483
    const/4 v1, 0x1

    .line 1484
    .local v1, "bundleSize":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1485
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "option"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1486
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v6}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1487
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1488
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1489
    return-void
.end method

.method public setRecordingPermission(Z)V
    .locals 0
    .param p1, "isPermissionEnabled"    # Z

    .prologue
    .line 3585
    iput-boolean p1, p0, Lcom/android/fmradio/FmService;->mIsRecordingPermissible:Z

    .line 3586
    return-void
.end method

.method public setSpeakerPhoneOn(Z)V
    .locals 3
    .param p1, "isSpeaker"    # Z

    .prologue
    .line 515
    const-string v0, "FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSpeakerPhoneOn "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService;->setForceUse(Z)V

    .line 517
    return-void
.end method

.method public setStereoMono(Z)Z
    .locals 3
    .param p1, "isMono"    # Z

    .prologue
    .line 3732
    const-string v0, "FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FMRadioService.setStereoMono: isMono="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3733
    invoke-static {p1}, Lcom/android/fmradio/FmNative;->setStereoMono(Z)Z

    move-result v0

    return v0
.end method

.method public showRecordingNotification(Landroid/app/Notification;)V
    .locals 1
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 2660
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/fmradio/FmService;->startForeground(ILandroid/app/Notification;)V

    .line 2661
    return-void
.end method

.method public startCountingDownAsync(Ljava/lang/String;J)V
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "interval"    # J

    .prologue
    const/4 v4, 0x0

    .line 3886
    const-string v3, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3887
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/fmradio/FmService;->mIsInCountDownMode:Z

    .line 3888
    :cond_0
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/android/fmradio/FmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3889
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3890
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3892
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3893
    const/4 v3, 0x2

    .line 3894
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p2

    add-long/2addr v4, v6

    .line 3893
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 3895
    return-void
.end method

.method public startRecordingAsync()V
    .locals 3

    .prologue
    const/16 v2, 0x16

    .line 1378
    const-string v0, "FmService"

    const-string v1, "startRecordingAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v0, v2}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1380
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v0, v2}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1381
    return-void
.end method

.method public startScanAsync()V
    .locals 3

    .prologue
    const/16 v2, 0xd

    .line 1080
    const-string v0, "FmService"

    const-string v1, "startScanAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v0, v2}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1082
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v0, v2}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1083
    return-void
.end method

.method public stopCountingDownAsync(Ljava/lang/String;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3898
    const-string v3, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3899
    iput-boolean v4, p0, Lcom/android/fmradio/FmService;->mIsInCountDownMode:Z

    .line 3900
    :cond_0
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/android/fmradio/FmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3901
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3902
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3904
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3905
    return-void
.end method

.method public stopRecordingAsync()V
    .locals 3

    .prologue
    const/16 v2, 0x17

    .line 1418
    const-string v0, "FmService"

    const-string v1, "stopRecordingAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v0, v2}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1420
    iget-object v0, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v0, v2}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1421
    return-void
.end method

.method public stopScan()Z
    .locals 3

    .prologue
    .line 1134
    const-string v1, "FmService"

    const-string v2, "stopScan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget v1, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v2, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-eq v1, v2, :cond_1

    .line 1136
    const/4 v0, 0x0

    .line 1146
    :cond_0
    :goto_0
    return v0

    .line 1139
    :cond_1
    const/4 v0, 0x0

    .line 1140
    .local v0, "bRet":Z
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1141
    iget-object v1, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1142
    iget-boolean v1, p0, Lcom/android/fmradio/FmService;->mIsNativeScanning:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/fmradio/FmService;->mIsNativeSeeking:Z

    if-eqz v1, :cond_0

    .line 1143
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/fmradio/FmService;->mIsStopScanCalled:Z

    .line 1144
    invoke-static {}, Lcom/android/fmradio/FmNative;->stopScan()Z

    move-result v0

    goto :goto_0
.end method

.method public switchAntennaAsync(I)V
    .locals 7
    .param p1, "antenna"    # I

    .prologue
    const/4 v6, 0x4

    .line 1349
    const-string v3, "FmService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "switchAntennaAsync, antenna = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    const/4 v1, 0x1

    .line 1351
    .local v1, "bundleSize":I
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v6}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1353
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1354
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "switch_antenna_value"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1355
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v6}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1356
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1357
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1358
    return-void
.end method

.method public tuneStationAsync(F)V
    .locals 7
    .param p1, "frequency"    # F

    .prologue
    const/16 v6, 0xf

    .line 984
    const-string v3, "FmService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tuneStationAsync, frequency = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v6}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 986
    const/4 v1, 0x1

    .line 987
    .local v1, "bundleSize":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 988
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "frequency"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 989
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v6}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 990
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 991
    iget-object v3, p0, Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 992
    return-void
.end method

.method public unregisterFmRadioListener(Lcom/android/fmradio/FmListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/fmradio/FmListener;

    .prologue
    .line 3111
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fmradio/FmService;->remove(I)V

    .line 3112
    return-void
.end method

.method public updateFavoriteStation(I)V
    .locals 9
    .param p1, "favorStation"    # I

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3837
    const-string v4, "FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateFavoriteStation, favorStation = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3839
    iget-object v4, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/fmradio/FmStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3841
    iget-object v4, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/fmradio/FmStation;->removeFromFavorite(Landroid/content/Context;I)V

    .line 3842
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->updatePlayingNotification()V

    .line 3843
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v7}, Landroid/os/Bundle;-><init>(I)V

    .line 3844
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "callback_flag"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3846
    const-string v4, "key_is_tune"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3847
    const-string v4, "key_tune_to_station"

    .line 3848
    iget v5, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    invoke-static {v5}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v5

    .line 3847
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3849
    const-string v4, "key_is_power_up"

    iget v5, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v6, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-ne v5, v6, :cond_1

    :goto_0
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3850
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 3851
    sget-object v2, Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;

    if-eqz v2, :cond_0

    .line 3852
    sget-object v2, Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;

    invoke-interface {v2}, Lcom/android/fmradio/FmService$OnChannelListListener;->onTuneFinished()V

    .line 3883
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    move v2, v3

    .line 3849
    goto :goto_0

    .line 3856
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    iget-object v4, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/fmradio/FmStation;->getStationCount(Landroid/content/Context;I)I

    move-result v4

    const/16 v5, 0x10

    if-lt v4, v5, :cond_3

    .line 3857
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 3858
    const v4, 0x7f0900c4

    invoke-virtual {p0, v4}, Lcom/android/fmradio/FmService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3857
    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 3859
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 3861
    :cond_3
    iget-object v4, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/fmradio/FmStation;->isStationExist(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3862
    iget-object v4, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/fmradio/FmStation;->addToFavorite(Landroid/content/Context;I)V

    .line 3869
    :goto_2
    invoke-virtual {p0}, Lcom/android/fmradio/FmService;->updatePlayingNotification()V

    .line 3870
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v7}, Landroid/os/Bundle;-><init>(I)V

    .line 3871
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v4, "callback_flag"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3873
    const-string v4, "key_is_tune"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3874
    const-string v4, "key_tune_to_station"

    .line 3875
    iget v5, p0, Lcom/android/fmradio/FmService;->mCurrentStation:I

    invoke-static {v5}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v5

    .line 3874
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3876
    const-string v4, "key_is_power_up"

    iget v5, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v6, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-ne v5, v6, :cond_5

    :goto_3
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3877
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 3878
    sget-object v2, Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;

    if-eqz v2, :cond_0

    .line 3879
    sget-object v2, Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;

    invoke-interface {v2}, Lcom/android/fmradio/FmService$OnChannelListListener;->onTuneFinished()V

    goto :goto_1

    .line 3864
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    new-instance v1, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 3865
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "frequency"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3866
    const-string v4, "is_favorite"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3867
    iget-object v4, p0, Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/fmradio/FmStation;->insertStationToDb(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto :goto_2

    .end local v1    # "values":Landroid/content/ContentValues;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_5
    move v2, v3

    .line 3876
    goto :goto_3
.end method

.method public updatePlayingNotification()V
    .locals 2

    .prologue
    .line 2674
    iget v0, p0, Lcom/android/fmradio/FmService;->mPowerStatus:I

    sget v1, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-ne v0, v1, :cond_0

    .line 2675
    invoke-direct {p0}, Lcom/android/fmradio/FmService;->showPlayingNotification()V

    .line 2677
    :cond_0
    return-void
.end method
