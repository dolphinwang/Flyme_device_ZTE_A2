.class Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$1;
.super Ljava/lang/Object;
.source "PickUpRecognizer.java"

# interfaces
.implements Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEventListener;


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
    .line 91
    iput-object p1, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$1;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopWithinTiltRegionEvent(Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;

    .prologue
    .line 95
    const-string v0, "PickUpReconizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " StopWithinTiltRegionEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p1}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->isTriggered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer$1;->this$0:Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;

    invoke-virtual {v0}, Lcom/zte/zgesture/core/sensorrec/PickUpRecognizer;->sendToClient()V

    .line 98
    const-string v0, "PickUpReconizer"

    const-string v1, " SensorPickUpReconizer is trigger"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    return-void
.end method
