.class public abstract Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;
.super Ljava/lang/Object;
.source "AbstractSensorMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mCopyList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/hardware/SensorEventListener;

.field protected mObjectList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mRateUs:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorAvailable:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorName:Ljava/lang/String;

.field private mSensorType:I

.field private mTimeInterval:J

.field private mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "basesensor"

    sput-object v0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorType"    # I
    .param p3, "rateUs"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mContext:Landroid/content/Context;

    .line 17
    iput-object v1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorName:Ljava/lang/String;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorType:I

    .line 19
    const/4 v0, 0x3

    iput v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mRateUs:I

    .line 21
    iput-object v1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 22
    iput-object v1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensor:Landroid/hardware/Sensor;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorAvailable:Z

    .line 25
    iput-wide v2, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mTimeInterval:J

    .line 26
    iput-wide v2, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mTimeStamp:J

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mObjectList:Ljava/util/Set;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mCopyList:Ljava/util/Set;

    .line 37
    new-instance v0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$1;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$1;-><init>(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;)V

    iput-object v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mListener:Landroid/hardware/SensorEventListener;

    .line 76
    iput-object p1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mContext:Landroid/content/Context;

    .line 77
    iput p2, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorType:I

    .line 78
    iput p3, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mRateUs:I

    .line 79
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 81
    invoke-direct {p0}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->getSensor()Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensor:Landroid/hardware/Sensor;

    .line 82
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorAvailable:Z

    .line 85
    :cond_0
    sget-object v0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " create sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorName"    # Ljava/lang/String;
    .param p3, "rateUs"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mContext:Landroid/content/Context;

    .line 17
    iput-object v1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorName:Ljava/lang/String;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorType:I

    .line 19
    const/4 v0, 0x3

    iput v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mRateUs:I

    .line 21
    iput-object v1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 22
    iput-object v1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensor:Landroid/hardware/Sensor;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorAvailable:Z

    .line 25
    iput-wide v2, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mTimeInterval:J

    .line 26
    iput-wide v2, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mTimeStamp:J

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mObjectList:Ljava/util/Set;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mCopyList:Ljava/util/Set;

    .line 37
    new-instance v0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$1;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$1;-><init>(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;)V

    iput-object v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mListener:Landroid/hardware/SensorEventListener;

    .line 61
    iput-object p1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorName:Ljava/lang/String;

    .line 63
    iput p3, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mRateUs:I

    .line 64
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 66
    invoke-direct {p0}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->getSensor()Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensor:Landroid/hardware/Sensor;

    .line 68
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorAvailable:Z

    .line 71
    :cond_0
    sget-object v0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " create sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;)J
    .locals 2
    .param p0, "x0"    # Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;J)J
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;J)J
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mTimeInterval:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorName:Ljava/lang/String;

    return-object v0
.end method

.method private getSensor()Landroid/hardware/Sensor;
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->getSensorWithName(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v0

    .line 106
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_0

    .line 107
    iget v1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorType:I

    if-lez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget v2, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorType:I

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 112
    :cond_0
    return-object v0
.end method

.method private getSensorWithName(Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v3, 0x0

    .line 91
    .local v3, "sensor":Landroid/hardware/Sensor;
    iget-object v5, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mContext:Landroid/content/Context;

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 92
    .local v1, "mSensorManager":Landroid/hardware/SensorManager;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v4

    .line 94
    .local v4, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 95
    .local v2, "s":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    move-object v3, v2

    .line 97
    sget-object v5, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get sensor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    .end local v2    # "s":Landroid/hardware/Sensor;
    :cond_1
    return-object v3
.end method


# virtual methods
.method protected getSensorType()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorType:I

    return v0
.end method

.method public getTimeInterval()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mTimeInterval:J

    return-wide v0
.end method

.method public isSensorAvailable()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorAvailable:Z

    return v0
.end method

.method public registerListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z
    .locals 4
    .param p1, "object"    # Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mObjectList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-boolean v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorAvailable:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mRateUs:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 120
    sget-object v0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSensorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mObjectList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unRegisterListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z
    .locals 4
    .param p1, "object"    # Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mObjectList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 142
    .local v0, "res":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mObjectList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-boolean v1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorAvailable:Z

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 145
    sget-object v1, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister sensor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSensorType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    return v0
.end method
