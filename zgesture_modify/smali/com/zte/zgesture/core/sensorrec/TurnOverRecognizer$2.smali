.class Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer$2;
.super Ljava/lang/Object;
.source "TurnOverRecognizer.java"

# interfaces
.implements Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sensorCallBack([F)V
    .locals 10
    .param p1, "values"    # [F

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 41
    aget v1, p1, v8

    .local v1, "x":F
    aget v2, p1, v9

    .local v2, "y":F
    const/4 v4, 0x2

    aget v3, p1, v4

    .line 42
    .local v3, "z":F
    float-to-double v4, v3

    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v6, 0x400921f9f01b866eL    # 3.14159

    div-double/2addr v4, v6

    double-to-int v0, v4

    .line 45
    .local v0, "pitch":I
    const/16 v4, 0x2d

    if-le v0, v4, :cond_0

    .line 46
    iget-object v4, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mDecting:Z
    invoke-static {v4}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->access$000(Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    iget-object v4, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    # setter for: Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mDecting:Z
    invoke-static {v4, v9}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->access$002(Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;Z)Z

    .line 48
    iget-object v4, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    iget-object v4, v4, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    iget-object v5, v5, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    iget-object v4, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    iget-object v4, v4, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    iget-object v5, v5, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->runnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    const-string v4, "TurnOverRecognizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Detecting begin pitch:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    iget-object v4, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mDecting:Z
    invoke-static {v4}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->access$000(Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    const/16 v4, -0x2d

    if-ge v0, v4, :cond_1

    .line 56
    iget-object v4, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    invoke-virtual {v4}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->sendToClient()V

    .line 57
    iget-object v4, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    # setter for: Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mDecting:Z
    invoke-static {v4, v8}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->access$002(Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;Z)Z

    .line 58
    iget-object v4, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    iget-object v4, v4, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    iget-object v5, v5, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    const-string v4, "TurnOverRecognizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Turn over  is trigger and pitch is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1
    return-void
.end method
