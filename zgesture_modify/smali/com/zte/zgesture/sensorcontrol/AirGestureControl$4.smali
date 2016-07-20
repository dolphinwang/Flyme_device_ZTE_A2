.class Lcom/zte/zgesture/sensorcontrol/AirGestureControl$4;
.super Ljava/lang/Object;
.source "AirGestureControl.java"

# interfaces
.implements Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/sensorcontrol/AirGestureControl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sensorCallBack([F)V
    .locals 3
    .param p1, "values"    # [F

    .prologue
    .line 173
    const-string v0, "AirGestureControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAirGestureCallBack value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method
