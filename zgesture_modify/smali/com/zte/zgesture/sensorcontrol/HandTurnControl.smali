.class public Lcom/zte/zgesture/sensorcontrol/HandTurnControl;
.super Ljava/lang/Object;
.source "HandTurnControl.java"

# interfaces
.implements Lcom/zte/zgesture/core/external/InterfaceControl;


# static fields
.field public static final TAG:Ljava/lang/String; = "HandTurnControl"

.field private static mInstance:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;


# instance fields
.field private mBaseRecongizer:Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;

.field private mContext:Landroid/content/Context;

.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

.field mHandler:Landroid/os/Handler;

.field private mInCalling:Z

.field private mInDemo:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mScreenOffBroadcast:Landroid/content/BroadcastReceiver;

.field private mScreenOnBroadcast:Landroid/content/BroadcastReceiver;

.field private mScreenofffilter:Landroid/content/IntentFilter;

.field private mScreenonfilter:Landroid/content/IntentFilter;

.field private mSwitch:Z

.field private mSwitchBroadcast:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTurnOverCount:I

.field runnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mSwitch:Z

    .line 28
    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mInCalling:Z

    .line 29
    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mInDemo:Z

    .line 31
    iput v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mTurnOverCount:I

    .line 36
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mHandler:Landroid/os/Handler;

    .line 37
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$1;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$1;-><init>(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->runnable:Ljava/lang/Runnable;

    .line 57
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$2;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$2;-><init>(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenOnBroadcast:Landroid/content/BroadcastReceiver;

    .line 64
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$3;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$3;-><init>(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenOffBroadcast:Landroid/content/BroadcastReceiver;

    .line 71
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$4;-><init>(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$5;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$5;-><init>(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 142
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mContext:Landroid/content/Context;

    .line 143
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 144
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mBaseRecongizer:Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;

    .line 146
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 147
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 148
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_close_screen"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mSwitch:Z

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    .local v0, "settingfilter":Landroid/content/IntentFilter;
    const-string v1, "com.zte.zgesture.refreshSetting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenonfilter:Landroid/content/IntentFilter;

    .line 155
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenonfilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenofffilter:Landroid/content/IntentFilter;

    .line 158
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenofffilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mSwitch:Z

    if-eqz v1, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->registerDetector()V

    .line 162
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 163
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenOnBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenonfilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenOffBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenofffilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/HandTurnControl;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mTurnOverCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->registerDetector()V

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenOffBroadcast:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenofffilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/HandTurnControl;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mInCalling:Z

    return p1
.end method

.method static synthetic access$200(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->unRegisterDetector()V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mSwitch:Z

    return v0
.end method

.method static synthetic access$402(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/HandTurnControl;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mSwitch:Z

    return p1
.end method

.method static synthetic access$500(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenOnBroadcast:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenonfilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private darkScreen()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zgesture/tools/Utils;->isLockScreenState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-static {}, Lcom/zte/zgesture/tools/Utils;->sendPowerKey()V

    .line 173
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/HandTurnControl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    if-nez p0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    .line 134
    :cond_0
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    if-nez v0, :cond_1

    .line 135
    new-instance v0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    .line 138
    :cond_1
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    goto :goto_0
.end method

.method public static isExistInstance()Z
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerDetector()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mBaseRecongizer:Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 49
    const-string v0, "HandTurnControl"

    const-string v1, " registerClient"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method private tellDemoDark()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "DoubleTapDemoActivity.dark"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    return-void
.end method

.method private unRegisterDetector()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mBaseRecongizer:Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 54
    const-string v0, "HandTurnControl"

    const-string v1, " unRegisterClient"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method


# virtual methods
.method public demoListener(Z)V
    .locals 1
    .param p1, "isDemo"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mInDemo:Z

    .line 177
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mInDemo:Z

    if-eqz v0, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->registerDetector()V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mSwitch:Z

    if-nez v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->unRegisterDetector()V

    goto :goto_0
.end method

.method public destroyAction()V
    .locals 3

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->unRegisterDetector()V

    .line 226
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenOnBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mScreenOffBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    .line 236
    return-void

    .line 231
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isInDemo()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mInDemo:Z

    return v0
.end method

.method public recongizerAction()V
    .locals 4

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mInCalling:Z

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mTurnOverCount:I

    if-nez v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    :cond_2
    iget v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mTurnOverCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mTurnOverCount:I

    .line 209
    const-string v0, "HandTurnControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mTurnOverCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mTurnOverCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mTurnOverCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 212
    const-string v0, "HandTurnControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " recongizerAction() isInDemo():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->isInDemo()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->isInDemo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->tellDemoDark()V

    .line 218
    :goto_1
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mTurnOverCount:I

    goto :goto_0

    .line 216
    :cond_3
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->darkScreen()V

    goto :goto_1
.end method
