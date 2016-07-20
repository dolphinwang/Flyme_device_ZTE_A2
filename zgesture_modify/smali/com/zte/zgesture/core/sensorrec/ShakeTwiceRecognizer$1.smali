.class Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$1;
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
    .line 54
    iput-object p1, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$1;->this$0:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sensorCallBack([F)V
    .locals 2
    .param p1, "values"    # [F

    .prologue
    .line 58
    const/4 v0, 0x0

    aget v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$1;->this$0:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    invoke-virtual {v0}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->sendToClient()V

    .line 60
    const-string v0, "ShakeTwiceRecognizer"

    const-string v1, "Shake Detector is trigger"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    return-void
.end method
