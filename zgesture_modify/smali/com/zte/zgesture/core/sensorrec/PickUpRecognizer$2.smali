.class Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$2;
.super Ljava/lang/Object;
.source "PickUpRecognizer.java"

# interfaces
.implements Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sensorCallBack([F)V
    .locals 6
    .param p1, "values"    # [F

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 112
    const-string v1, "PickUpReconizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mProximityCallBack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mIsNear:Z
    invoke-static {v1}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$000(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)Z

    move-result v0

    .line 114
    .local v0, "lastValue":Z
    aget v1, p1, v5

    sget v2, Lcom/zte/zgesture/core/external/SensorConfiguration;->proximityFarValue:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # setter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mIsNear:Z
    invoke-static {v1, v4}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$002(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;Z)Z

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mIsProximityInit:Z
    invoke-static {v1}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$200(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mIsNear:Z
    invoke-static {v1}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$000(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # setter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mFarToNear:Z
    invoke-static {v1, v4}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$302(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;Z)Z

    .line 123
    const-string v1, "PickUpReconizer"

    const-string v2, " is far to near"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    :goto_1
    return-void

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # invokes: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->resetData()V
    invoke-static {v1}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$100(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;)V

    .line 118
    const-string v1, "PickUpReconizer"

    const-string v2, " is far "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    # setter for: Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->mIsProximityInit:Z
    invoke-static {v1, v4}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->access$202(Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;Z)Z

    goto :goto_1
.end method
