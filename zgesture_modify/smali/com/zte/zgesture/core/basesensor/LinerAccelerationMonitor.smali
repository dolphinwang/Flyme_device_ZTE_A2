.class public Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;
.super Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;
.source "LinerAccelerationMonitor.java"


# static fields
.field private static mInstance:Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;


# instance fields
.field private mAccelerationProxyMonitor:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;-><init>(Landroid/content/Context;II)V

    .line 40
    sget-boolean v0, Lcom/zte/zgesture/core/external/SensorConfiguration;->sensorDefaultEnable:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;->isSensorAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    invoke-static {p1}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->getSensorMonitor(Landroid/content/Context;)Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;->mAccelerationProxyMonitor:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    .line 43
    :cond_1
    return-void
.end method

.method public static getSensorMonitor(Landroid/content/Context;)Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-object v0, Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;->mInstance:Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;

    if-nez v0, :cond_0

    .line 47
    if-eqz p0, :cond_0

    .line 48
    new-instance v0, Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;->mInstance:Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;

    .line 50
    :cond_0
    sget-object v0, Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;->mInstance:Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;

    return-object v0
.end method


# virtual methods
.method public getTimeInterval()J
    .locals 2

    .prologue
    .line 24
    sget-boolean v0, Lcom/zte/zgesture/core/external/SensorConfiguration;->sensorDefaultEnable:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;->isSensorAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;->mAccelerationProxyMonitor:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    invoke-virtual {v0}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->getTimeInterval()J

    move-result-wide v0

    .line 27
    :goto_0
    return-wide v0

    :cond_1
    invoke-super {p0}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->getTimeInterval()J

    move-result-wide v0

    goto :goto_0
.end method

.method public registerListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z
    .locals 1
    .param p1, "object"    # Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .prologue
    .line 16
    sget-boolean v0, Lcom/zte/zgesture/core/external/SensorConfiguration;->sensorDefaultEnable:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;->isSensorAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;->mAccelerationProxyMonitor:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    invoke-virtual {v0, p1}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->registerLineAccelerationListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    move-result v0

    .line 19
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->registerListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    move-result v0

    goto :goto_0
.end method

.method public unRegisterListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z
    .locals 1
    .param p1, "object"    # Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .prologue
    .line 32
    sget-boolean v0, Lcom/zte/zgesture/core/external/SensorConfiguration;->sensorDefaultEnable:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;->isSensorAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/LinerAccelerationMonitor;->mAccelerationProxyMonitor:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    invoke-virtual {v0, p1}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->unRegisterLineAccelerationListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    move-result v0

    .line 35
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->unRegisterListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    move-result v0

    goto :goto_0
.end method
