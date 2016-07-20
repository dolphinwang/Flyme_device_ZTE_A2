.class final Lcom/zte/zgesture/tools/Utils$6;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/tools/Utils;->requestStartQueryNearStatus(Landroid/content/Context;Lcom/zte/zgesture/core/external/InterfaceControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sensorCallBack([F)V
    .locals 4
    .param p1, "values"    # [F

    .prologue
    const/4 v3, 0x0

    .line 417
    const-string v0, "GestureMotionUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mProximityCallBack values[0]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    aget v0, p1, v3

    sget v1, Lcom/zte/zgesture/core/external/SensorConfiguration;->proximityFarValue:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 419
    const/4 v0, 0x1

    # setter for: Lcom/zte/zgesture/tools/Utils;->mIsNear:Z
    invoke-static {v0}, Lcom/zte/zgesture/tools/Utils;->access$002(Z)Z

    .line 420
    const-string v0, "GestureMotionUtils"

    const-string v1, " is near"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_0
    # getter for: Lcom/zte/zgesture/tools/Utils;->mInterfaceControl:Lcom/zte/zgesture/core/external/InterfaceControl;
    invoke-static {}, Lcom/zte/zgesture/tools/Utils;->access$100()Lcom/zte/zgesture/core/external/InterfaceControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    # getter for: Lcom/zte/zgesture/tools/Utils;->mInterfaceControl:Lcom/zte/zgesture/core/external/InterfaceControl;
    invoke-static {}, Lcom/zte/zgesture/tools/Utils;->access$100()Lcom/zte/zgesture/core/external/InterfaceControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zgesture/core/external/InterfaceControl;->recongizerAction()V

    .line 427
    :cond_0
    # getter for: Lcom/zte/zgesture/tools/Utils;->mProximitySensorMonitor:Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;
    invoke-static {}, Lcom/zte/zgesture/tools/Utils;->access$300()Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;

    move-result-object v0

    # getter for: Lcom/zte/zgesture/tools/Utils;->mProximityCallBack:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;
    invoke-static {}, Lcom/zte/zgesture/tools/Utils;->access$200()Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;->unRegisterListener(Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;)Z

    .line 428
    return-void

    .line 422
    :cond_1
    # setter for: Lcom/zte/zgesture/tools/Utils;->mIsNear:Z
    invoke-static {v3}, Lcom/zte/zgesture/tools/Utils;->access$002(Z)Z

    goto :goto_0
.end method
