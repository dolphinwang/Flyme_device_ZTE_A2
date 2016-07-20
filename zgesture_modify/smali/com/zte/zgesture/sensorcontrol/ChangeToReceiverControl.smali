.class public Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;
.super Ljava/lang/Object;
.source "ChangeToReceiverControl.java"

# interfaces
.implements Lcom/zte/zgesture/core/external/InterfaceControl;


# static fields
.field private static mInstance:Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

.field private mPickUpRecognizer:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

.field private mSwitch:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private switchBroadcast:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mSwitch:Z

    .line 29
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl$1;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl$1;-><init>(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 54
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl$2;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl$2;-><init>(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->switchBroadcast:Landroid/content/BroadcastReceiver;

    .line 77
    const-string v1, "ChangeToReceiverControl"

    const-string v2, "ChangeToReceiverControl()"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {p1}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mPickUpRecognizer:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    .line 80
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 82
    invoke-static {p1}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 83
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 84
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_change_to_receiver"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mSwitch:Z

    .line 86
    iget-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mSwitch:Z

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 89
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, "settingfilter":Landroid/content/IntentFilter;
    const-string v1, "com.zte.zgesture.refreshSetting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->switchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mVibrator:Landroid/os/Vibrator;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->unRegisterDetector()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->registerDetector()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mSwitch:Z

    return v0
.end method

.method static synthetic access$302(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mSwitch:Z

    return p1
.end method

.method static synthetic access$400(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    if-nez p0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 110
    :cond_0
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    .line 113
    :cond_1
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    goto :goto_0
.end method

.method private registerDetector()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mPickUpRecognizer:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 100
    return-void
.end method

.method private unRegisterDetector()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mPickUpRecognizer:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 104
    return-void
.end method


# virtual methods
.method public destroyAction()V
    .locals 3

    .prologue
    .line 118
    const-string v0, "ChangeToReceiverControl"

    const-string v1, "destroyAction()"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->unRegisterDetector()V

    .line 120
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->switchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    .line 124
    return-void
.end method

.method public recongizerAction()V
    .locals 4

    .prologue
    .line 128
    const-string v1, "ChangeToReceiverControl"

    const-string v2, "recongizerAction()"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/tools/Utils;->isSpeekerActivited(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 131
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/tools/Utils;->changeToReceiver(Landroid/content/Context;)V

    .line 134
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v0, "appIntent":Landroid/content/Intent;
    const-string v1, "com.zte.zgesture.refreshUI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    .end local v0    # "appIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
