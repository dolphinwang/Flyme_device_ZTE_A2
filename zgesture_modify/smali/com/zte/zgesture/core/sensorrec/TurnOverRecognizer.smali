.class public Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;
.super Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;
.source "TurnOverRecognizer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TurnOverRecognizer"

.field private static mInstance:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;


# instance fields
.field private final PITCH_DOWN:I

.field private final PITCH_UP:I

.field private mContext:Landroid/content/Context;

.field private mDecting:Z

.field private mGravityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

.field private mGravitySensorMonitor:Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;

.field mHandler:Landroid/os/Handler;

.field runnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;-><init>()V

    .line 19
    const/16 v0, 0x2d

    iput v0, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->PITCH_UP:I

    .line 20
    const/16 v0, -0x2d

    iput v0, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->PITCH_DOWN:I

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mDecting:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mHandler:Landroid/os/Handler;

    .line 23
    new-instance v0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer$1;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer$1;-><init>(Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;)V

    iput-object v0, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->runnable:Ljava/lang/Runnable;

    .line 35
    iput-object p1, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mHandler:Landroid/os/Handler;

    .line 37
    new-instance v0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer$2;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer$2;-><init>(Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;)V

    iput-object v0, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mGravityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .line 65
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;->getSensorMonitor(Landroid/content/Context;)Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mGravitySensorMonitor:Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mDecting:Z

    return v0
.end method

.method static synthetic access$002(Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mDecting:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    sget-object v0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mInstance:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    if-nez v0, :cond_0

    .line 89
    if-eqz p0, :cond_0

    .line 90
    new-instance v0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mInstance:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    .line 93
    :cond_0
    sget-object v0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mInstance:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    return-object v0
.end method


# virtual methods
.method public registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V
    .locals 2
    .param p1, "clientID"    # Lcom/zte/zgesture/core/external/InterfaceControl;

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mDecting:Z

    .line 71
    invoke-virtual {p0}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->hasClient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mGravitySensorMonitor:Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;

    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mGravityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;->registerListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 73
    const-string v0, "TurnOverRecognizer"

    const-string v1, " registerClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    invoke-super {p0, p1}, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 76
    return-void
.end method

.method public unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V
    .locals 2
    .param p1, "clientID"    # Lcom/zte/zgesture/core/external/InterfaceControl;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 81
    invoke-virtual {p0}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->hasClient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mGravitySensorMonitor:Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;

    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mGravityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/core/basesensor/GravitySensorMonitor;->unRegisterListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 83
    const-string v0, "TurnOverRecognizer"

    const-string v1, " unregisterClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    return-void
.end method
