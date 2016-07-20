.class Lcom/zte/zgesture/sensorcontrol/ShakeControl$2;
.super Landroid/content/BroadcastReceiver;
.source "ShakeControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/sensorcontrol/ShakeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    const-string v0, "ShakeControl"

    const-string v1, " mScreenOnBroadcast "

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->access$100(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/tools/Utils;->isLockScreenState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/ShakeControl;->registerDetector()V
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->access$200(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)V

    .line 65
    const-string v0, "ShakeControl"

    const-string v1, "registerDetector()"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    return-void
.end method
