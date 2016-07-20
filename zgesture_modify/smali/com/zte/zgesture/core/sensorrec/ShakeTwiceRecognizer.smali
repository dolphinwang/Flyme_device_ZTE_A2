.class public Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;
.super Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;
.source "ShakeTwiceRecognizer.java"


# static fields
.field private static final SHAKECOUNT_THREHOLD:I = 0x4

.field private static final SHAKEVALUE_THREHOLD:I = 0xa

.field private static final SPACE_TIME:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "ShakeTwiceRecognizer"

.field private static mInstance:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer; = null

.field public static final shakeDectorName:Ljava/lang/String; = "Shake Detector"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mResetRunnable:Ljava/lang/Runnable;

.field private mShakeCount:I

.field private mShakeDetectorAvailable:Z

.field private mShakeDirection:I

.field private mShakeTwiceCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

.field private mShakeTwiceMonitor:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

.field private mSpaceTime:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeDetectorAvailable:Z

    .line 29
    iput v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeCount:I

    .line 30
    iput v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeDirection:I

    .line 34
    iput v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mSpaceTime:I

    .line 40
    iput-object p1, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mContext:Landroid/content/Context;

    .line 43
    sget-boolean v0, Lcom/zte/zgesture/core/external/SensorConfiguration;->sensorDefaultEnable:Z

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mContext:Landroid/content/Context;

    const-string v1, "Shake Detector"

    invoke-static {v0, v1}, Lcom/zte/zgesture/core/basesensor/ShakeDetectorMonitor;->getSensorMonitor(Landroid/content/Context;Ljava/lang/String;)Lcom/zte/zgesture/core/basesensor/ShakeDetectorMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeTwiceMonitor:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    .line 46
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeTwiceMonitor:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    invoke-virtual {v0}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->isSensorAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeDetectorAvailable:Z

    .line 48
    const-string v0, "ShakeTwiceRecognizer"

    const-string v1, " use Shake Detector"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeDetectorAvailable:Z

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$1;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$1;-><init>(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;)V

    iput-object v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeTwiceCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .line 111
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;->getSensorMonitor(Landroid/content/Context;)Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeTwiceMonitor:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    .line 69
    const-string v0, "ShakeTwiceRecognizer"

    const-string v1, " use Liner Acceleration Monitor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$2;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$2;-><init>(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;)V

    iput-object v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mResetRunnable:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$3;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$3;-><init>(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;)V

    iput-object v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeTwiceCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    .prologue
    .line 14
    iget v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeDirection:I

    return v0
.end method

.method static synthetic access$102(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeDirection:I

    return p1
.end method

.method static synthetic access$200(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;)Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeTwiceMonitor:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    .prologue
    .line 14
    iget v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mSpaceTime:I

    return v0
.end method

.method static synthetic access$320(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;I)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iget v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mSpaceTime:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mSpaceTime:I

    return v0
.end method

.method static synthetic access$400(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->startDectect()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    sget-object v0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mInstance:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    if-nez v0, :cond_0

    .line 151
    if-eqz p0, :cond_0

    .line 152
    new-instance v0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mInstance:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    .line 155
    :cond_0
    sget-object v0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mInstance:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    return-object v0
.end method

.method private startDectect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 114
    const-string v0, "ShakeTwiceRecognizer"

    const-string v1, " startDectect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeCount:I

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    :cond_0
    iget v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeCount:I

    .line 121
    iget v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->sendToClient()V

    .line 123
    iput v4, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeCount:I

    .line 124
    iput v4, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeDirection:I

    .line 125
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mSpaceTime:I

    .line 126
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    :cond_1
    return-void
.end method


# virtual methods
.method public registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V
    .locals 2
    .param p1, "clientID"    # Lcom/zte/zgesture/core/external/InterfaceControl;

    .prologue
    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mSpaceTime:I

    .line 133
    invoke-virtual {p0}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->hasClient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeTwiceMonitor:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeTwiceCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->registerListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 135
    const-string v0, "ShakeTwiceRecognizer"

    const-string v1, " registerClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    invoke-super {p0, p1}, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->registerClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 138
    return-void
.end method

.method public unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V
    .locals 2
    .param p1, "clientID"    # Lcom/zte/zgesture/core/external/InterfaceControl;

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/zte/zgesture/core/sensorrec/BaseRecongizer;->unRegisterClient(Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 143
    invoke-virtual {p0}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->hasClient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeTwiceMonitor:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeTwiceCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->unRegisterListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 145
    const-string v0, "ShakeTwiceRecognizer"

    const-string v1, " unregisterClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    return-void
.end method
