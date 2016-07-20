.class public Lcom/zte/zgesture/sensorcontrol/PocketModeControl;
.super Ljava/lang/Object;
.source "PocketModeControl.java"

# interfaces
.implements Lcom/zte/zgesture/core/external/InterfaceControl;


# static fields
.field public static final TAG:Ljava/lang/String; = "PocketModeControl"

.field private static mInstance:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;


# instance fields
.field private handler:Landroid/os/Handler;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

.field private mHeadsetPlugIn:Z

.field private mHeadsetPlugInReceiver:Landroid/content/BroadcastReceiver;

.field private mHeadsetPlugInfilter:Landroid/content/IntentFilter;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPocketModeRecognizer:Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;

.field private mSwitch:Z

.field private mSwitchBroadcast:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private stopDetectorRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mSwitch:Z

    .line 27
    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mHeadsetPlugIn:Z

    .line 33
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->handler:Landroid/os/Handler;

    .line 34
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$1;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$1;-><init>(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->stopDetectorRunnable:Ljava/lang/Runnable;

    .line 46
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$2;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$2;-><init>(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 72
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$3;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$3;-><init>(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$4;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$4;-><init>(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mHeadsetPlugInReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    const-string v1, "PocketModeControl"

    const-string v2, "PocketModeControl()"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mContext:Landroid/content/Context;

    .line 126
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mPocketModeRecognizer:Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;

    .line 127
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mAudioManager:Landroid/media/AudioManager;

    .line 128
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 130
    invoke-static {p1}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 131
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 132
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_pocket"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mSwitch:Z

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    .local v0, "settingfilter":Landroid/content/IntentFilter;
    const-string v1, "com.zte.zgesture.refreshSetting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mHeadsetPlugInfilter:Landroid/content/IntentFilter;

    .line 139
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mHeadsetPlugInfilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mSwitch:Z

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mHeadsetPlugInReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mHeadsetPlugInfilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mPocketModeRecognizer:Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->unRegisterDetector()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mSwitch:Z

    return v0
.end method

.method static synthetic access$202(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/PocketModeControl;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mSwitch:Z

    return p1
.end method

.method static synthetic access$300(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->preRecognizeCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->registerDetector()V

    return-void
.end method

.method static synthetic access$500(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mHeadsetPlugInReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mHeadsetPlugInfilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/PocketModeControl;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mHeadsetPlugIn:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/PocketModeControl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    if-nez p0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    .line 116
    :cond_0
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    if-nez v0, :cond_1

    .line 117
    new-instance v0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    .line 120
    :cond_1
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    goto :goto_0
.end method

.method private preRecognizeCheck()Z
    .locals 2

    .prologue
    .line 159
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/tools/Utils;->isLeatherCase(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 160
    .local v0, "res":Z
    :goto_0
    return v0

    .line 159
    .end local v0    # "res":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerDetector()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mPocketModeRecognizer:Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 150
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->stopDetectorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    return-void
.end method

.method private unRegisterDetector()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->stopDetectorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mPocketModeRecognizer:Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 156
    return-void
.end method


# virtual methods
.method public destroyAction()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mHeadsetPlugInReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    .line 187
    const-string v0, "PocketModeControl"

    const-string v1, "destroyAction()"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public recongizerAction()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 166
    iget-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mHeadsetPlugIn:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 167
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.zte.zgesture.incoming_call_alert_control"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "RING_VOLUME"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    const-string v1, "VIBRATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->unRegisterDetector()V

    .line 173
    const-string v1, "PocketModeControl"

    const-string v2, "recongizerAction()"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
