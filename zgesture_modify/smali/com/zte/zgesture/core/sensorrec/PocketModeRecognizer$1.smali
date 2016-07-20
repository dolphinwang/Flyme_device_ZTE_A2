.class Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer$1;
.super Ljava/lang/Object;
.source "PocketModeRecognizer.java"

# interfaces
.implements Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer$1;->this$0:Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sensorCallBack([F)V
    .locals 4
    .param p1, "values"    # [F

    .prologue
    const/4 v3, 0x0

    .line 32
    const-string v0, "PocketModeRecognizer"

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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    aget v0, p1, v3

    sget v1, Lcom/zte/zgesture/core/external/SensorConfiguration;->proximityFarValue:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer$1;->this$0:Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;

    const/4 v1, 0x1

    # setter for: Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mIsNear:Z
    invoke-static {v0, v1}, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->access$002(Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;Z)Z

    .line 35
    const-string v0, "PocketModeRecognizer"

    const-string v1, " is near"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer$1;->this$0:Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;

    # setter for: Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mIsNear:Z
    invoke-static {v0, v3}, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->access$002(Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;Z)Z

    goto :goto_0
.end method
