.class public Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;
.super Ljava/lang/Object;
.source "AccelerationProxyMonitor.java"


# static fields
.field private static mInstance:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;


# instance fields
.field private final filter:F

.field private mAccelerometerCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

.field private mAccelerometerSensorMonitor:Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;

.field private mCopyList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mGravity:[F

.field private mGravityObjectList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mLineAccelerationObjectList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mLinearAcceleration:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravity:[F

    .line 17
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mLinearAcceleration:[F

    .line 18
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->filter:F

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravityObjectList:Ljava/util/Set;

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mLineAccelerationObjectList:Ljava/util/Set;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mCopyList:Ljava/util/Set;

    .line 26
    invoke-static {p1}, Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;->getSensorMonitor(Landroid/content/Context;)Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mAccelerometerSensorMonitor:Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;

    .line 27
    new-instance v0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;-><init>(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)V

    iput-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mAccelerometerCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .line 58
    sget-object v0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->TAG:Ljava/lang/String;

    const-string v1, " create AccelerationProxyMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 16
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 17
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)[F
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravity:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravityObjectList:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mCopyList:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mLineAccelerationObjectList:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)[F
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mLinearAcceleration:[F

    return-object v0
.end method

.method public static getSensorMonitor(Landroid/content/Context;)Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    sget-object v0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mInstance:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    if-nez v0, :cond_0

    .line 116
    if-eqz p0, :cond_0

    .line 117
    new-instance v0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mInstance:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    .line 119
    :cond_0
    sget-object v0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mInstance:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    return-object v0
.end method

.method private initData()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravity:[F

    aput v1, v0, v2

    .line 63
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravity:[F

    aput v1, v0, v3

    .line 64
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravity:[F

    aput v1, v0, v4

    .line 65
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mLinearAcceleration:[F

    aput v1, v0, v2

    .line 66
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mLinearAcceleration:[F

    aput v1, v0, v3

    .line 67
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mLinearAcceleration:[F

    aput v1, v0, v4

    .line 68
    return-void
.end method


# virtual methods
.method public getTimeInterval()J
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mAccelerometerSensorMonitor:Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;

    invoke-virtual {v0}, Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;->getTimeInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public registerGravityListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z
    .locals 2
    .param p1, "object"    # Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravityObjectList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mLineAccelerationObjectList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->initData()V

    .line 74
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mAccelerometerSensorMonitor:Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;

    iget-object v1, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mAccelerometerCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;->registerListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravityObjectList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public registerLineAccelerationListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z
    .locals 2
    .param p1, "object"    # Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravityObjectList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mLineAccelerationObjectList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->initData()V

    .line 83
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mAccelerometerSensorMonitor:Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;

    iget-object v1, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mAccelerometerCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;->registerListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mLineAccelerationObjectList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unRegisterGravityListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z
    .locals 3
    .param p1, "object"    # Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravityObjectList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 92
    .local v0, "res":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravityObjectList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mLineAccelerationObjectList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mAccelerometerSensorMonitor:Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;

    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mAccelerometerCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;->unRegisterListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 95
    :cond_0
    return v0
.end method

.method public unRegisterLineAccelerationListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z
    .locals 3
    .param p1, "object"    # Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mLineAccelerationObjectList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 103
    .local v0, "res":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravityObjectList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mLineAccelerationObjectList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mAccelerometerSensorMonitor:Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;

    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mAccelerometerCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;->unRegisterListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 106
    :cond_0
    return v0
.end method
