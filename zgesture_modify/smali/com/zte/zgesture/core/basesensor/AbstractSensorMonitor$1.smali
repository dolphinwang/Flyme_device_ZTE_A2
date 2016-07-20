.class Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$1;
.super Ljava/lang/Object;
.source "AbstractSensorMonitor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 56
    sget-object v0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onAccuracyChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mSensorName:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->access$200(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 41
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 43
    .local v2, "values":[F
    iget-object v3, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mTimeStamp:J
    invoke-static {v3}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->access$000(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 44
    iget-object v3, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v6, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mTimeStamp:J
    invoke-static {v6}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->access$000(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    # setter for: Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mTimeInterval:J
    invoke-static {v3, v4, v5}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->access$102(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;J)J

    .line 46
    :cond_0
    iget-object v3, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    # setter for: Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mTimeStamp:J
    invoke-static {v3, v4, v5}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->access$002(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;J)J

    .line 47
    iget-object v3, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    iget-object v3, v3, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mCopyList:Ljava/util/Set;

    iget-object v4, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    iget-object v4, v4, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mObjectList:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-object v3, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    iget-object v3, v3, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mCopyList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .line 49
    .local v1, "object":Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;
    invoke-interface {v1, v2}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;->sensorCallBack([F)V

    goto :goto_0

    .line 51
    .end local v1    # "object":Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;
    :cond_1
    iget-object v3, p0, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    iget-object v3, v3, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->mCopyList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 52
    return-void
.end method
