.class public Lcom/zte/zgesture/sensorcontrol/AnswerControl;
.super Ljava/lang/Object;
.source "AnswerControl.java"

# interfaces
.implements Lcom/zte/zgesture/core/external/InterfaceControl;


# static fields
.field public static final TAG:Ljava/lang/String; = "AnswerControl"

.field private static mInstance:Lcom/zte/zgesture/sensorcontrol/AnswerControl;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

.field private mPickUpRecognizer:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

.field private mSwitch:Z

.field private mSwitchBroadcast:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private phoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mSwitch:Z

    .line 26
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/AnswerControl$1;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/AnswerControl$1;-><init>(Lcom/zte/zgesture/sensorcontrol/AnswerControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 45
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/AnswerControl$2;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/AnswerControl$2;-><init>(Lcom/zte/zgesture/sensorcontrol/AnswerControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    .line 66
    const-string v1, "AnswerControl"

    const-string v2, "AnswerControl()"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {p1}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mPickUpRecognizer:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    .line 69
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 71
    invoke-static {p1}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 72
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 73
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_answer"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mSwitch:Z

    .line 75
    iget-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mSwitch:Z

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 78
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v0, "settingfilter":Landroid/content/IntentFilter;
    const-string v1, "com.zte.zgesture.refreshSetting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/sensorcontrol/AnswerControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AnswerControl;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->registerDetector()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/zgesture/sensorcontrol/AnswerControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AnswerControl;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->unRegisterDetector()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/zgesture/sensorcontrol/AnswerControl;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AnswerControl;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/zgesture/sensorcontrol/AnswerControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AnswerControl;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mSwitch:Z

    return v0
.end method

.method static synthetic access$302(Lcom/zte/zgesture/sensorcontrol/AnswerControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AnswerControl;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mSwitch:Z

    return p1
.end method

.method static synthetic access$400(Lcom/zte/zgesture/sensorcontrol/AnswerControl;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AnswerControl;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/zgesture/sensorcontrol/AnswerControl;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/AnswerControl;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/AnswerControl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    if-nez p0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    .line 95
    :cond_0
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/AnswerControl;

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/sensorcontrol/AnswerControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/AnswerControl;

    .line 98
    :cond_1
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/AnswerControl;

    goto :goto_0
.end method

.method private registerDetector()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mPickUpRecognizer:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 85
    return-void
.end method

.method private unRegisterDetector()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mPickUpRecognizer:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 89
    return-void
.end method


# virtual methods
.method public destroyAction()V
    .locals 3

    .prologue
    .line 103
    const-string v0, "AnswerControl"

    const-string v1, "destroyAction()"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->unRegisterDetector()V

    .line 105
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/AnswerControl;

    .line 108
    return-void
.end method

.method public recongizerAction()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "AnswerControl"

    const-string v1, "recongizerAction()"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->unRegisterDetector()V

    .line 114
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zgesture/tools/Utils;->answerRingCall(Landroid/content/Context;)V

    .line 115
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->mContext:Landroid/content/Context;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/Utils;->vibrate(Landroid/content/Context;I)V

    .line 116
    return-void
.end method
