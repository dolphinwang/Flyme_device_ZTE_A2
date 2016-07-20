.class public Lcom/zte/zgesture/sensorcontrol/CallControl;
.super Ljava/lang/Object;
.source "CallControl.java"

# interfaces
.implements Lcom/zte/zgesture/core/external/InterfaceControl;


# static fields
.field private static mInstance:Lcom/zte/zgesture/sensorcontrol/CallControl;


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

.field private mPickUpRecognizer:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

.field private mRegisterBroadcast:Landroid/content/BroadcastReceiver;

.field mRegisterfilter:Landroid/content/IntentFilter;

.field private mSwitch:Z

.field private mSwitchBroadcast:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v1, "CallControl"

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->TAG:Ljava/lang/String;

    .line 18
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mSwitch:Z

    .line 22
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/CallControl$1;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/CallControl$1;-><init>(Lcom/zte/zgesture/sensorcontrol/CallControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mRegisterBroadcast:Landroid/content/BroadcastReceiver;

    .line 36
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/CallControl$2;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/CallControl$2;-><init>(Lcom/zte/zgesture/sensorcontrol/CallControl;)V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    .line 58
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mContext:Landroid/content/Context;

    .line 59
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mPickUpRecognizer:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    .line 61
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 62
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 63
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_call"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mSwitch:Z

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v0, "settingfilter":Landroid/content/IntentFilter;
    const-string v1, "com.zte.zgesture.refreshSetting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mRegisterfilter:Landroid/content/IntentFilter;

    .line 70
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mRegisterfilter:Landroid/content/IntentFilter;

    const-string v2, "com.zte.zgesture.callRegister"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-boolean v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mSwitch:Z

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mRegisterBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mRegisterfilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    :cond_0
    const-string v1, "CallControl"

    const-string v2, " CallControl"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/sensorcontrol/CallControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/CallControl;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/CallControl;->registerDetector()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/zgesture/sensorcontrol/CallControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/CallControl;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/CallControl;->unRegisterDetector()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/zgesture/sensorcontrol/CallControl;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/CallControl;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/zgesture/sensorcontrol/CallControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/CallControl;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mSwitch:Z

    return v0
.end method

.method static synthetic access$302(Lcom/zte/zgesture/sensorcontrol/CallControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/CallControl;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mSwitch:Z

    return p1
.end method

.method static synthetic access$400(Lcom/zte/zgesture/sensorcontrol/CallControl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/CallControl;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mRegisterBroadcast:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/zgesture/sensorcontrol/CallControl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/sensorcontrol/CallControl;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/CallControl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    if-nez p0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    .line 89
    :cond_0
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/CallControl;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lcom/zte/zgesture/sensorcontrol/CallControl;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/sensorcontrol/CallControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/CallControl;

    .line 92
    :cond_1
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/CallControl;

    goto :goto_0
.end method

.method private registerDetector()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mPickUpRecognizer:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 79
    return-void
.end method

.method private unRegisterDetector()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mPickUpRecognizer:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    invoke-virtual {v0, p0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 83
    return-void
.end method


# virtual methods
.method public destroyAction()V
    .locals 4

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/CallControl;->unRegisterDetector()V

    .line 109
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mSwitchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mRegisterBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/zte/zgesture/sensorcontrol/CallControl;->mInstance:Lcom/zte/zgesture/sensorcontrol/CallControl;

    .line 116
    const-string v1, "CallControl"

    const-string v2, " destroyAction()"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CallControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " unregisterReceiver Exception e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public recongizerAction()V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v0, "callIntent":Landroid/content/Intent;
    const-string v1, "com.zte.zgesture.motion_call"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    invoke-direct {p0}, Lcom/zte/zgesture/sensorcontrol/CallControl;->unRegisterDetector()V

    .line 102
    const-string v1, "CallControl"

    const-string v2, " reading to call"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method
