.class Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer$2;
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
    .line 44
    iput-object p1, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;

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

    .line 48
    aget v1, p1, v8

    .local v1, "x":F
    aget v2, p1, v9

    .local v2, "y":F
    const/4 v4, 0x2

    aget v3, p1, v4

    .line 49
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

    .line 50
    .local v0, "pitch":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x50

    if-le v4, v5, :cond_0

    .line 51
    iget-object v4, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;

    # setter for: Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mHorizontal:Z
    invoke-static {v4, v9}, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->access$102(Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;Z)Z

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v4, p0, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;

    # setter for: Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->mHorizontal:Z
    invoke-static {v4, v8}, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->access$102(Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;Z)Z

    goto :goto_0
.end method
