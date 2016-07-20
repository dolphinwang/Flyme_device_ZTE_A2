.class public Lcom/zte/zgesture/sensorcontrol/AirGestureControl;
.super Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;
.source "AirGestureControl.java"

# interfaces
.implements Lcom/zte/zgesture/core/external/InterfaceControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AirGestureControl"

.field private static mInstance:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;


# instance fields
.field private mAirGestureCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

.field private mAirGestureDemoType:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

.field private mAirGestureDetectorMonitor:Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;

.field private mAirGestureResultCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

.field private mAirGestureResultDetectorMonitor:Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;

.field private mAirGestureSwitch:Z

.field private mAirMSwitch:Z

.field private mAirOSwitch:Z

.field private mAirVSwitch:Z

.field private mAirWSwitch:Z

.field private mAirZSwitch:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

.field private mSavedVolume:I

.field private mSwitchBroadcast:Landroid/content/BroadcastReceiver;

.field private mUserpresentBroadcast:Landroid/content/BroadcastReceiver;

.field private mUserpresentFilter:Landroid/content/IntentFilter;

.field private mVolumeBroadcast:Landroid/content/BroadcastReceiver;

.field mVolumefilter:Landroid/content/IntentFilter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;-><init>()V

    .line 32
    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureSwitch:Z

    .line 33
    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirMSwitch:Z

    .line 34
    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirOSwitch:Z

    .line 35
    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirVSwitch:Z

    .line 36
    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirZSwitch:Z

    .line 37
    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirWSwitch:Z

    .line 41
    const/4 v1, 0x1

    iput v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mSavedVolume:I

    .line 52
    sget-object v1, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->NONE:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureDemoType:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    .line 58
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$1;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$1;-><init>(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    .line 83
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$2;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$2;-><init>(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mVolumeBroadcast:Landroid/content/BroadcastReceiver;

    .line 103
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$3;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$3;-><init>(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mUserpresentBroadcast:Landroid/content/BroadcastReceiver;

    .line 168
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;

    .line 169
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$4;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$4;-><init>(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .line 177
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$5;-><init>(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureResultCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .line 274
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;->getSensorMonitor(Landroid/content/Context;)Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureDetectorMonitor:Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;

    .line 275
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;->getSensorMonitor(Landroid/content/Context;)Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureResultDetectorMonitor:Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;

    .line 277
    invoke-static {p1}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 278
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 279
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_air_gestures"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureSwitch:Z

    .line 281
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mVolumefilter:Landroid/content/IntentFilter;

    .line 282
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mVolumefilter:Landroid/content/IntentFilter;

    const-string v2, "android.volume_key_press"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->IsRequestOutsideReceiver()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->requestOutsideReceiver()V

    .line 286
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    .local v0, "settingfilter":Landroid/content/IntentFilter;
    const-string v1, "com.zte.zgesture.refreshSetting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 290
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mUserpresentFilter:Landroid/content/IntentFilter;

    .line 291
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mUserpresentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAudioManager:Landroid/media/AudioManager;

    .line 294
    const-string v1, "AirGestureControl"

    const-string v2, "AirGestureControl create "

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void
.end method

.method private IsRequestOutsideReceiver()Z
    .locals 2

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "res":Z
    iget-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureSwitch:Z

    if-eqz v1, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->reloadSubSwitch()V

    .line 160
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->subSwitchStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    const/4 v0, 0x1

    .line 164
    :cond_0
    return v0
.end method

.method static synthetic access$000(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureSwitch:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureResultCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureSwitch:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureResultDetectorMonitor:Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureDemoType:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirMSwitch:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirOSwitch:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirVSwitch:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirWSwitch:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirZSwitch:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mUserpresentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->IsRequestOutsideReceiver()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mVolumeBroadcast:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->registerDetector()V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .prologue
    .line 19
    iget v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mSavedVolume:I

    return v0
.end method

.method static synthetic access$602(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mSavedVolume:I

    return p1
.end method

.method static synthetic access$700(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->unRegisterDetector()V

    return-void
.end method

.method static synthetic access$900(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mUserpresentBroadcast:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/AirGestureControl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 316
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    if-nez v0, :cond_0

    .line 317
    if-eqz p0, :cond_0

    .line 318
    new-instance v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .line 321
    :cond_0
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    return-object v0
.end method

.method public static isExistInstance()Z
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, 0x1

    .line 312
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerDetector()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureResultDetectorMonitor:Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureResultCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;->unRegisterListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 300
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureDetectorMonitor:Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;->registerListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 301
    return-void
.end method

.method private reloadSubSwitch()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_air_m"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirMSwitch:Z

    .line 140
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_air_o"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirOSwitch:Z

    .line 141
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_air_v"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirVSwitch:Z

    .line 142
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_air_z"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirZSwitch:Z

    .line 143
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_air_w"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirWSwitch:Z

    .line 144
    return-void
.end method

.method private subSwitchStatus()Z
    .locals 4

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "res":Z
    iget-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirMSwitch:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirOSwitch:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirVSwitch:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirZSwitch:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirWSwitch:Z

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x1

    .line 151
    :cond_1
    const-string v1, "AirGestureControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " subSwitchStatus() is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return v0
.end method

.method private unRegisterDetector()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureDetectorMonitor:Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;->unRegisterListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 305
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureResultDetectorMonitor:Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureResultCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;->registerListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 306
    return-void
.end method


# virtual methods
.method public SetAirGestureDemoType(Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;)V
    .locals 0
    .param p1, "type"    # Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureDemoType:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    .line 56
    return-void
.end method

.method public destroyAction()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureResultDetectorMonitor:Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureResultCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/core/basesensor/AirGestureResultDetectorMonitor;->unRegisterListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 333
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureDetectorMonitor:Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/core/basesensor/AirGestureDetectorMonitor;->unRegisterListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 336
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mVolumeBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 337
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mUserpresentBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .line 342
    const-string v0, "AirGestureControl"

    const-string v1, "AirGestureControl destroyAction() "

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void

    .line 338
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public recongizerAction()V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method public requestNoOutsideReceiver()V
    .locals 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureSwitch:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->subSwitchStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mVolumeBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    const-string v0, "AirGestureControl"

    const-string v1, " requestNoOutsideReceiver()"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public requestOutsideReceiver()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mVolumeBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mVolumefilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    const-string v0, "AirGestureControl"

    const-string v1, " requestOutsideReceiver()"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method
