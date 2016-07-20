.class Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$3;
.super Ljava/lang/Object;
.source "ShakeTwiceRecognizer.java"

# interfaces
.implements Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor$SensorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sensorCallBack([F)V
    .locals 7
    .param p1, "values"    # [F

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 83
    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeTwiceMonitor:Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;
    invoke-static {v1}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->access$200(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;)Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;->getTimeInterval()J

    move-result-wide v2

    long-to-float v1, v2

    const v2, 0x358637bd    # 1.0E-6f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 85
    .local v0, "interval":I
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mSpaceTime:I
    invoke-static {v1}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->access$300(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;)I

    move-result v1

    if-lez v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    # -= operator for: Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mSpaceTime:I
    invoke-static {v1, v0}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->access$320(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;I)I

    goto :goto_0

    .line 92
    :cond_2
    aget v1, p1, v4

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 93
    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeDirection:I
    invoke-static {v1}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->access$100(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;)I

    move-result v1

    if-eq v1, v6, :cond_0

    .line 94
    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    # invokes: Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->startDectect()V
    invoke-static {v1}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->access$400(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;)V

    .line 95
    const-string v1, "ShakeTwiceRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShakeTwiceCallBack :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    # setter for: Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeDirection:I
    invoke-static {v1, v6}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->access$102(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;I)I

    goto :goto_0

    .line 98
    :cond_3
    aget v1, p1, v4

    const/high16 v2, -0x3ee00000    # -10.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    # getter for: Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeDirection:I
    invoke-static {v1}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->access$100(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;)I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 100
    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    # invokes: Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->startDectect()V
    invoke-static {v1}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->access$400(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;)V

    .line 101
    const-string v1, "ShakeTwiceRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShakeTwiceCallBack :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$3;->this$0:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    # setter for: Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeDirection:I
    invoke-static {v1, v5}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->access$102(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;I)I

    goto :goto_0
.end method
