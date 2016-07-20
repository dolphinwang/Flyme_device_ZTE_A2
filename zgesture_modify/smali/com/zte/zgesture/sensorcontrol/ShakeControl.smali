.class public Lcom/zte/zgesture/sensorcontrol/ShakeControl;
.super Ljava/lang/Object;
.source "ShakeControl.java"

# interfaces
.implements Lcom/zte/zgesture/core/external/InterfaceControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zgesture/sensorcontrol/ShakeControl$6;,
        Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;
    }
.end annotation


# static fields
.field public static final FLASHLIGHT_NTF_EXIT:Ljava/lang/String; = "android.intent.action.FLASHLIGHT_EXIT"

.field public static final FLASHLIGHT_NTF_TURNOFF:Ljava/lang/String; = "android.intent.action.FLASH_CLOSE"

.field public static final FLASHLIGHT_NTF_TURNON:Ljava/lang/String; = "android.intent.action.FLASH_OPEN"

.field public static final TAG:Ljava/lang/String; = "ShakeControl"

.field private static mInstance:Lcom/zte/zgesture/sensorcontrol/ShakeControl;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlashLightDetect:Z

.field private mFlashlightBroadcast:Landroid/content/BroadcastReceiver;

.field private mFlashlightfilter:Landroid/content/IntentFilter;

.field private mFlightStatus:Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;

.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

.field private mScreenOffBroadcast:Landroid/content/BroadcastReceiver;

.field private mScreenOnBroadcast:Landroid/content/BroadcastReceiver;

.field private mScreenofffilter:Landroid/content/IntentFilter;

.field private mScreenonfilter:Landroid/content/IntentFilter;

.field private mShakeTwiceRecognizer:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

.field private mSwitch:Z

.field private mSwitchBroadcast:Landroid/content/BroadcastReceiver;

.field private mUserpresentBroadcast:Landroid/content/BroadcastReceiver;

.field private mUserpresentFilter:Landroid/content/IntentFilter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mSwitch:Z

    .line 24
    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlashLightDetect:Z

    .line 42
    sget-object v1, Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;->EXIT:Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlightStatus:Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;

    .line 43
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/ShakeControl$1;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl$1;-><init>(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlashlightBroadcast:Landroid/content/BroadcastReceiver;

    .line 59
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/ShakeControl$2;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl$2;-><init>(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenOnBroadcast:Landroid/content/BroadcastReceiver;

    .line 70
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/ShakeControl$3;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl$3;-><init>(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenOffBroadcast:Landroid/content/BroadcastReceiver;

    .line 79
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/ShakeControl$4;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl$4;-><init>(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mUserpresentBroadcast:Landroid/content/BroadcastReceiver;

    .line 88
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/ShakeControl$5;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl$5;-><init>(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    .line 150
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    .line 151
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 152
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 153
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_shake"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mSwitch:Z

    .line 155
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mShakeTwiceRecognizer:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    .local v0, "settingfilter":Landroid/content/IntentFilter;
    const-string v1, "com.zte.zgesture.refreshSetting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mUserpresentFilter:Landroid/content/IntentFilter;

    .line 163
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mUserpresentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenonfilter:Landroid/content/IntentFilter;

    .line 166
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenonfilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenofffilter:Landroid/content/IntentFilter;

    .line 169
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenofffilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlashlightfilter:Landroid/content/IntentFilter;

    .line 172
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlashlightfilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.FLASHLIGHT_EXIT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlashlightfilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.FLASH_OPEN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlashlightfilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.FLASH_CLOSE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mSwitch:Z

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mUserpresentBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mUserpresentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenOnBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenonfilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenOffBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenofffilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/zte/zgesture/sensorcontrol/ShakeControl;Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;)Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ShakeControl;
    .param p1, "x1"    # Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlightStatus:Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenOffBroadcast:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenofffilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->registerDetector()V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->unRegisterDetector()V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mSwitch:Z

    return v0
.end method

.method static synthetic access$502(Lcom/zte/zgesture/sensorcontrol/ShakeControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ShakeControl;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mSwitch:Z

    return p1
.end method

.method static synthetic access$600(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mUserpresentBroadcast:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mUserpresentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenOnBroadcast:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenonfilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method private closeFlashlight()V
    .locals 2

    .prologue
    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SHAKE_CLOSE_FLASHLIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 246
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/ShakeControl;
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    .line 142
    :cond_0
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    if-nez v0, :cond_1

    .line 143
    new-instance v0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    .line 146
    :cond_1
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    goto :goto_0
.end method

.method private registerDetector()V
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;->EXIT:Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;

    iput-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlightStatus:Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlashLightDetect:Z

    .line 122
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mShakeTwiceRecognizer:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 123
    return-void
.end method

.method private startCalculatorhUI()V
    .locals 4

    .prologue
    .line 223
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    const-string v2, "com.android.calculator2"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/Utils;->getIntentForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 224
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 225
    const-string v1, "shake"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 231
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    const-string v2, "com.android.calculator2"

    const-string v3, "com.android.calculator2.Calculator"

    invoke-static {v1, v2, v3}, Lcom/zte/zgesture/tools/Utils;->startApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startFlashligthUI()V
    .locals 4

    .prologue
    .line 234
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    const-string v2, "zte.android.flashlight"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/Utils;->getIntentForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 235
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 236
    const-string v1, "shake"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 237
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    const-string v2, "zte.android.flashlight"

    const-string v3, "zte.android.flashlight.ZTEFlashLight"

    invoke-static {v1, v2, v3}, Lcom/zte/zgesture/tools/Utils;->startApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unRegisterDetector()V
    .locals 4

    .prologue
    .line 126
    iget-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlashLightDetect:Z

    if-eqz v1, :cond_0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlashlightBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlashLightDetect:Z

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mShakeTwiceRecognizer:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    invoke-virtual {v1, p0}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 136
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ShakeControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterReceiver(mFlashlightBroadcast) e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public destroyAction()V
    .locals 2

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->unRegisterDetector()V

    .line 250
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenOnBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 253
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mUserpresentBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 254
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenOffBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    .line 259
    const-string v0, "ShakeControl"

    const-string v1, " destroyAction()"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 255
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public recongizerAction()V
    .locals 4

    .prologue
    .line 186
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_shake_app_package_default"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "ShakeControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start app name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v1, "com.android.calculator2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->startCalculatorhUI()V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const-string v1, "zte.android.flashlight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    sget-boolean v1, Lcom/zte/zgesture/tools/FeatureConfig;->shakeToClose:Z

    if-eqz v1, :cond_3

    .line 197
    iget-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlashLightDetect:Z

    if-eqz v1, :cond_2

    .line 198
    sget-object v1, Lcom/zte/zgesture/sensorcontrol/ShakeControl$6;->$SwitchMap$com$zte$zgesture$sensorcontrol$ShakeControl$FlightStatus:[I

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlightStatus:Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;

    invoke-virtual {v2}, Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 214
    :goto_1
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->startFlashligthUI()V

    goto :goto_0

    .line 200
    :pswitch_0
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/tools/Utils;->turnOffFlashlight(Landroid/content/Context;)V

    goto :goto_0

    .line 204
    :pswitch_1
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/tools/Utils;->turnOnFlashlight(Landroid/content/Context;)V

    goto :goto_1

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlashlightBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlashlightfilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->closeFlashlight()V

    .line 212
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlashLightDetect:Z

    goto :goto_1

    .line 216
    :cond_3
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/tools/Utils;->turnOnFlashlight(Landroid/content/Context;)V

    .line 217
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->startFlashligthUI()V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
