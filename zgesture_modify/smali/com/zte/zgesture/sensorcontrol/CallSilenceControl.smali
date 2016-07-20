.class public Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;
.super Ljava/lang/Object;
.source "CallSilenceControl.java"

# interfaces
.implements Lcom/zte/zgesture/core/external/InterfaceControl;


# static fields
.field private static mInstance:Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mBaseRecongizer:Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;

.field private mContext:Landroid/content/Context;

.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSwitch:Z

.field private mSwitchBroadcast:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v1, "CallSilenceControl"

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->TAG:Ljava/lang/String;

    .line 23
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mSwitch:Z

    .line 36
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl$1;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl$1;-><init>(Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 53
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl$2;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl$2;-><init>(Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    .line 85
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mContext:Landroid/content/Context;

    .line 86
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 87
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mBaseRecongizer:Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;

    .line 89
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 90
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 91
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_call_turn"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mSwitch:Z

    .line 93
    iget-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mSwitch:Z

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 97
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, "settingfilter":Landroid/content/IntentFilter;
    const-string v1, "com.zte.zgesture.refreshSetting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    const-string v1, "CallSilenceControl"

    const-string v2, " CallSilenceControl"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->registerDetector()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->unRegisterDetector()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mSwitch:Z

    return v0
.end method

.method static synthetic access$302(Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mSwitch:Z

    return p1
.end method

.method static synthetic access$400(Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    .line 76
    :cond_0
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;

    if-nez v0, :cond_1

    .line 77
    new-instance v0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;

    .line 80
    :cond_1
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;

    goto :goto_0
.end method

.method private registerDetector()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mBaseRecongizer:Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 30
    return-void
.end method

.method private unRegisterDetector()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mBaseRecongizer:Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 34
    return-void
.end method


# virtual methods
.method public destroyAction()V
    .locals 3

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->unRegisterDetector()V

    .line 122
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 125
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;

    .line 127
    const-string v0, "CallSilenceControl"

    const-string v1, " destroyAction()"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public recongizerAction()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->unRegisterDetector()V

    .line 107
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 108
    .local v1, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.zte.zgesture.incoming_call_alert_control"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v2, "RING_VOLUME"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string v2, "VIBRATE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    const-string v2, "CallSilenceControl"

    const-string v3, " recongizerAction()"

    invoke-static {v2, v3}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method
