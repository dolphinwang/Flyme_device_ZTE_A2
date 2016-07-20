.class Lcom/zte/zgesture/sensorcontrol/PocketModeControl$1;
.super Ljava/lang/Object;
.source "PocketModeControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/sensorcontrol/PocketModeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mPocketModeRecognizer:Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->access$000(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/core/sensorrec/PocketModeRecognizer;->isInPocket()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    invoke-virtual {v0}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->recongizerAction()V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->unRegisterDetector()V
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->access$100(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)V

    .line 43
    return-void
.end method
