.class Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;
.super Ljava/lang/Object;
.source "AccelerationProxyMonitor.java"

# interfaces
.implements Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sensorCallBack([F)V
    .locals 10
    .param p1, "values"    # [F

    .prologue
    const v9, 0x3f4ccccd    # 0.8f

    const v8, 0x3e4ccccc    # 0.19999999f

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 32
    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravity:[F
    invoke-static {v2}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$000(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravity:[F
    invoke-static {v3}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$000(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)[F

    move-result-object v3

    aget v3, v3, v5

    mul-float/2addr v3, v9

    aget v4, p1, v5

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    aput v3, v2, v5

    .line 33
    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravity:[F
    invoke-static {v2}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$000(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravity:[F
    invoke-static {v3}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$000(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)[F

    move-result-object v3

    aget v3, v3, v6

    mul-float/2addr v3, v9

    aget v4, p1, v6

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    aput v3, v2, v6

    .line 34
    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravity:[F
    invoke-static {v2}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$000(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravity:[F
    invoke-static {v3}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$000(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)[F

    move-result-object v3

    aget v3, v3, v7

    mul-float/2addr v3, v9

    aget v4, p1, v7

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    aput v3, v2, v7

    .line 36
    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravityObjectList:Ljava/util/Set;
    invoke-static {v2}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$100(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 37
    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mCopyList:Ljava/util/Set;
    invoke-static {v2}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$200(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravityObjectList:Ljava/util/Set;
    invoke-static {v3}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$100(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 38
    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mCopyList:Ljava/util/Set;
    invoke-static {v2}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$200(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .line 39
    .local v1, "object":Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;
    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravity:[F
    invoke-static {v2}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$000(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)[F

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;->sensorCallBack([F)V

    goto :goto_0

    .line 41
    .end local v1    # "object":Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;
    :cond_0
    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mCopyList:Ljava/util/Set;
    invoke-static {v2}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$200(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 44
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mLineAccelerationObjectList:Ljava/util/Set;
    invoke-static {v2}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$300(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 45
    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mLinearAcceleration:[F
    invoke-static {v2}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$400(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)[F

    move-result-object v2

    aget v3, p1, v5

    iget-object v4, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravity:[F
    invoke-static {v4}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$000(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)[F

    move-result-object v4

    aget v4, v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v5

    .line 46
    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mLinearAcceleration:[F
    invoke-static {v2}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$400(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)[F

    move-result-object v2

    aget v3, p1, v6

    iget-object v4, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravity:[F
    invoke-static {v4}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$000(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)[F

    move-result-object v4

    aget v4, v4, v6

    sub-float/2addr v3, v4

    aput v3, v2, v6

    .line 47
    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mLinearAcceleration:[F
    invoke-static {v2}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$400(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)[F

    move-result-object v2

    aget v3, p1, v7

    iget-object v4, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mGravity:[F
    invoke-static {v4}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$000(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)[F

    move-result-object v4

    aget v4, v4, v7

    sub-float/2addr v3, v4

    aput v3, v2, v7

    .line 49
    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mCopyList:Ljava/util/Set;
    invoke-static {v2}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$200(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mLineAccelerationObjectList:Ljava/util/Set;
    invoke-static {v3}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$300(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 50
    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mCopyList:Ljava/util/Set;
    invoke-static {v2}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$200(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    .line 51
    .restart local v1    # "object":Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;
    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mLinearAcceleration:[F
    invoke-static {v2}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$400(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)[F

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;->sensorCallBack([F)V

    goto :goto_1

    .line 53
    .end local v1    # "object":Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;
    :cond_2
    iget-object v2, p0, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor$1;->this$0:Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;

    # getter for: Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->mCopyList:Ljava/util/Set;
    invoke-static {v2}, Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;->access$200(Lcom/zte/zgesture/core/basesensor/AccelerationProxyMonitor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 56
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method
