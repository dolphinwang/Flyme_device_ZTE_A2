.class public Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;
.super Ljava/lang/Object;
.source "BlackScreenGestureControl.java"

# interfaces
.implements Lcom/zte/zgesture/core/external/InterfaceControl;


# static fields
.field public static final TAG:Ljava/lang/String; = "BlackScreenGestureControl"

.field private static mInstance:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;


# instance fields
.field private doubleTabSwitch:Z

.field private drawCIntent:Ljava/lang/String;

.field private drawCSwitch:Z

.field private drawCharReceiver:Landroid/content/BroadcastReceiver;

.field private drawDownSwitch:Z

.field private drawEIntent:Ljava/lang/String;

.field private drawESwitch:Z

.field private drawLeftSwitch:Z

.field private drawMIntent:Ljava/lang/String;

.field private drawMSwitch:Z

.field private drawOIntent:Ljava/lang/String;

.field private drawOSwitch:Z

.field private drawRightSwitch:Z

.field private drawSIntent:Ljava/lang/String;

.field private drawSSwitch:Z

.field private drawUpIntent:Ljava/lang/String;

.field private drawUpSwitch:Z

.field private drawVIntent:Ljava/lang/String;

.field private drawVSwitch:Z

.field private drawWIntent:Ljava/lang/String;

.field private drawWSwitch:Z

.field private mAnimaEnd:Z

.field private mBlackScreenSwitch:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDoubleTapTrigger:Z

.field private mEventTrigger:Z

.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

.field private mStartAppIntent:Ljava/lang/String;

.field private mSwitchBroadcast:Landroid/content/BroadcastReceiver;

.field private mUnLockService:Lcom/android/systemui/mifavor/IKeyguardUnlockService;

.field private mUnlockServiceBind:Z

.field private mUserpresentBroadcast:Landroid/content/BroadcastReceiver;

.field private mUserpresentFilter:Landroid/content/IntentFilter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v3, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawCSwitch:Z

    .line 33
    iput-boolean v3, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawMSwitch:Z

    .line 34
    iput-boolean v3, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawWSwitch:Z

    .line 35
    iput-boolean v3, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawSSwitch:Z

    .line 36
    iput-boolean v3, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawVSwitch:Z

    .line 37
    iput-boolean v3, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawESwitch:Z

    .line 38
    iput-boolean v3, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawOSwitch:Z

    .line 39
    iput-boolean v3, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawUpSwitch:Z

    .line 40
    iput-boolean v3, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawDownSwitch:Z

    .line 41
    iput-boolean v3, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawLeftSwitch:Z

    .line 42
    iput-boolean v3, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawRightSwitch:Z

    .line 43
    iput-boolean v3, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mBlackScreenSwitch:Z

    .line 44
    iput-boolean v3, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->doubleTabSwitch:Z

    .line 58
    iput-boolean v3, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mEventTrigger:Z

    .line 59
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mAnimaEnd:Z

    .line 62
    iput-boolean v3, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mDoubleTapTrigger:Z

    .line 96
    new-instance v2, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$1;

    invoke-direct {v2, p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$1;-><init>(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V

    iput-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mConnection:Landroid/content/ServiceConnection;

    .line 112
    new-instance v2, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$2;

    invoke-direct {v2, p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$2;-><init>(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V

    iput-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    .line 121
    new-instance v2, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$3;

    invoke-direct {v2, p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$3;-><init>(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V

    iput-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUserpresentBroadcast:Landroid/content/BroadcastReceiver;

    .line 140
    new-instance v2, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;

    invoke-direct {v2, p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;-><init>(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V

    iput-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawCharReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    .line 74
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 75
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v2}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 76
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->reloadSwitch()V

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v0, "blackGestureFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BLACK_SCREEN_GESTURE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawCharReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v1, "settingfilter":Landroid/content/IntentFilter;
    const-string v2, "com.zte.zgesture.refreshSetting"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUserpresentFilter:Landroid/content/IntentFilter;

    .line 87
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUserpresentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    sget-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenAnimation:Z

    if-nez v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUserpresentBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUserpresentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    :cond_0
    const-string v2, "BlackScreenGestureControl"

    const-string v3, "Create"

    invoke-static {v2, v3}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method private DrawDownChar()V
    .locals 4

    .prologue
    .line 268
    const-string v1, "BlackScreenGestureControl"

    const-string v2, "DrawDownChar"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 270
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$5;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$5;-><init>(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 276
    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Lcom/android/systemui/mifavor/IKeyguardUnlockService;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUnLockService:Lcom/android/systemui/mifavor/IKeyguardUnlockService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Lcom/android/systemui/mifavor/IKeyguardUnlockService;)Lcom/android/systemui/mifavor/IKeyguardUnlockService;
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;
    .param p1, "x1"    # Lcom/android/systemui/mifavor/IKeyguardUnlockService;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUnLockService:Lcom/android/systemui/mifavor/IKeyguardUnlockService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawLeftSwitch:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->sendLeftMusicKey()V

    return-void
.end method

.method static synthetic access$1200(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawRightSwitch:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->sendRightMusicKey()V

    return-void
.end method

.method static synthetic access$1400(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mStartAppIntent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mStartAppIntent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawCIntent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mEventTrigger:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mEventTrigger:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawCSwitch:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawMIntent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawMSwitch:Z

    return v0
.end method

.method static synthetic access$200(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->reloadSwitch()V

    return-void
.end method

.method static synthetic access$2000(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawOIntent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawOSwitch:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawWIntent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawWSwitch:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawSIntent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawSSwitch:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawVIntent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawVSwitch:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawEIntent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawESwitch:Z

    return v0
.end method

.method static synthetic access$300(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawUpIntent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawUpSwitch:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mAnimaEnd:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mAnimaEnd:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->unLockSafe()V

    return-void
.end method

.method static synthetic access$3400(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->initEvent()V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUserpresentBroadcast:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->doubleTabSwitch:Z

    return v0
.end method

.method static synthetic access$602(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mDoubleTapTrigger:Z

    return p1
.end method

.method static synthetic access$700(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mBlackScreenSwitch:Z

    return v0
.end method

.method static synthetic access$800(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawDownSwitch:Z

    return v0
.end method

.method static synthetic access$900(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->DrawDownChar()V

    return-void
.end method

.method private bindUnLockService()V
    .locals 4

    .prologue
    .line 341
    iget-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUnlockServiceBind:Z

    if-nez v1, :cond_0

    .line 342
    const-string v1, "BlackScreenGestureControl"

    const-string v2, "bindUnLockService"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.mifavor.KeyguardUnlockService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUnlockServiceBind:Z

    .line 347
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 372
    if-nez p0, :cond_0

    .line 373
    const/4 v0, 0x0

    .line 378
    :goto_0
    return-object v0

    .line 375
    :cond_0
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    if-nez v0, :cond_1

    .line 376
    new-instance v0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .line 378
    :cond_1
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    goto :goto_0
.end method

.method private initEvent()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mStartAppIntent:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mEventTrigger:Z

    .line 69
    return-void
.end method

.method private needUnlockService()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mBlackScreenSwitch:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawCSwitch:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawMSwitch:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawWSwitch:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawSSwitch:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawVSwitch:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawESwitch:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawUpSwitch:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawDownSwitch:Z

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    const/4 v0, 0x1

    .line 337
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private preRecognizeCheck()Z
    .locals 2

    .prologue
    .line 382
    const/4 v0, 0x0

    .line 384
    .local v0, "res":Z
    invoke-static {}, Lcom/zte/zgesture/tools/Utils;->isNear()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/tools/Utils;->isLeatherCase(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    const/4 v0, 0x1

    .line 391
    :cond_0
    :goto_0
    return v0

    .line 389
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private reloadSwitch()V
    .locals 4

    .prologue
    .line 280
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_draw_c"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawCSwitch:Z

    .line 281
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_draw_m"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawMSwitch:Z

    .line 282
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_draw_w"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawWSwitch:Z

    .line 283
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_draw_s"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawSSwitch:Z

    .line 284
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_draw_v"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawVSwitch:Z

    .line 285
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_draw_e"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawESwitch:Z

    .line 286
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_draw_o"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawOSwitch:Z

    .line 287
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_draw_up"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawUpSwitch:Z

    .line 288
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_draw_down"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawDownSwitch:Z

    .line 289
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_draw_left"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawLeftSwitch:Z

    .line 290
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_draw_right"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawRightSwitch:Z

    .line 292
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_draw_c_app"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawCIntent:Ljava/lang/String;

    .line 293
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_draw_m_app"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawMIntent:Ljava/lang/String;

    .line 294
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_draw_w_app"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawWIntent:Ljava/lang/String;

    .line 295
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_draw_s_app"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawSIntent:Ljava/lang/String;

    .line 296
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_draw_v_app"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawVIntent:Ljava/lang/String;

    .line 297
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_draw_e_app"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawEIntent:Ljava/lang/String;

    .line 298
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_draw_o_app"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawOIntent:Ljava/lang/String;

    .line 299
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_draw_up_app"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawUpIntent:Ljava/lang/String;

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "needWriteNode":Z
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_black_screen_gesture"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    .line 304
    .local v1, "setting":Z
    iget-boolean v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mBlackScreenSwitch:Z

    if-eq v1, v2, :cond_0

    .line 305
    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mBlackScreenSwitch:Z

    .line 306
    const/4 v0, 0x1

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_double_tap"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    .line 310
    iget-boolean v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->doubleTabSwitch:Z

    if-eq v2, v1, :cond_1

    .line 311
    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->doubleTabSwitch:Z

    .line 312
    const/4 v0, 0x1

    .line 315
    :cond_1
    if-eqz v0, :cond_3

    .line 316
    iget-boolean v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mBlackScreenSwitch:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->doubleTabSwitch:Z

    if-eqz v2, :cond_4

    .line 317
    :cond_2
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/zgesture/tools/Utils;->openBlackScreenGestureInDriver(Landroid/content/Context;)V

    .line 323
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->needUnlockService()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 324
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->bindUnLockService()V

    .line 328
    :goto_1
    return-void

    .line 319
    :cond_4
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/zgesture/tools/Utils;->closeBlackScreenGestureInDriver(Landroid/content/Context;)V

    goto :goto_0

    .line 326
    :cond_5
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->unBindUnLockService()V

    goto :goto_1
.end method

.method private sendLeftMusicKey()V
    .locals 3

    .prologue
    .line 246
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 247
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    const-string v1, "BlackScreenGestureControl"

    const-string v2, "sendLeftMusicKey()"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/Utils;->vibrate(Landroid/content/Context;I)V

    .line 250
    invoke-static {}, Lcom/zte/zgesture/tools/Utils;->sendLeftMusicKey()V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    const-string v1, "BlackScreenGestureControl"

    const-string v2, "no music is playing"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendRightMusicKey()V
    .locals 3

    .prologue
    .line 257
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 258
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const-string v1, "BlackScreenGestureControl"

    const-string v2, "sendRightMusicKey()"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/Utils;->vibrate(Landroid/content/Context;I)V

    .line 261
    invoke-static {}, Lcom/zte/zgesture/tools/Utils;->sendRightMusicKey()V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    const-string v1, "BlackScreenGestureControl"

    const-string v2, "no music is playing"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unBindUnLockService()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUnLockService:Lcom/android/systemui/mifavor/IKeyguardUnlockService;

    if-eqz v0, :cond_0

    .line 351
    const-string v0, "BlackScreenGestureControl"

    const-string v1, "unBindUnLockService"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUnlockServiceBind:Z

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUnLockService:Lcom/android/systemui/mifavor/IKeyguardUnlockService;

    .line 357
    :cond_0
    return-void
.end method

.method private unLockSafe()V
    .locals 4

    .prologue
    .line 360
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUnLockService:Lcom/android/systemui/mifavor/IKeyguardUnlockService;

    if-eqz v1, :cond_0

    .line 362
    :try_start_0
    const-string v1, "BlackScreenGestureControl"

    const-string v2, "unLockSafe enter"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUnLockService:Lcom/android/systemui/mifavor/IKeyguardUnlockService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/systemui/mifavor/IKeyguardUnlockService;->goToUnlockScreen(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BlackScreenGestureControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "unlock exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public destroyAction()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawCharReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 448
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 449
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenAnimation:Z

    if-eqz v0, :cond_0

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUserpresentBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->unBindUnLockService()V

    .line 458
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zgesture/tools/Utils;->closeBlackScreenGestureInDriver(Landroid/content/Context;)V

    .line 459
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    .line 461
    const-string v0, "BlackScreenGestureControl"

    const-string v1, "destory"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void

    .line 452
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public recongizerAction()V
    .locals 4

    .prologue
    .line 397
    const-string v1, "BlackScreenGestureControl"

    const-string v2, "recongizerAction()"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mDoubleTapTrigger:Z

    if-eqz v1, :cond_3

    .line 400
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->preRecognizeCheck()Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    const-string v1, "BlackScreenGestureControl"

    const-string v2, "can\'t pass preRecognizeCheck"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/Utils;->vibrate(Landroid/content/Context;I)V

    .line 405
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/tools/Utils;->isLockScreenState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 406
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/tools/Utils;->unLockSafe(Landroid/content/Context;)V

    .line 408
    :cond_2
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/tools/Utils;->lightScreen(Landroid/content/Context;)V

    .line 409
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mDoubleTapTrigger:Z

    goto :goto_0

    .line 413
    :cond_3
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mStartAppIntent:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 414
    sget-boolean v1, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenAnimation:Z

    if-eqz v1, :cond_6

    .line 415
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mStartAppIntent:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/Utils;->startApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 416
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zgesture/tools/Utils;->setToastTips(Ljava/lang/String;)V

    .line 417
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/zte/zgesture/tools/Utils;->setToastFlag(Z)V

    .line 420
    :cond_4
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/tools/Utils;->isLockScreenState(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 421
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/tools/Utils;->showToastTips(Landroid/content/Context;)V

    .line 425
    :goto_1
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->initEvent()V

    goto :goto_0

    .line 423
    :cond_5
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUserpresentBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUserpresentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1

    .line 427
    :cond_6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 428
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$6;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$6;-><init>(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
