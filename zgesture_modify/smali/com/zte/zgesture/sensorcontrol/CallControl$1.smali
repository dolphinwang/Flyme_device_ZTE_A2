.class Lcom/zte/zgesture/sensorcontrol/CallControl$1;
.super Landroid/content/BroadcastReceiver;
.source "CallControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/sensorcontrol/CallControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/sensorcontrol/CallControl;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/sensorcontrol/CallControl;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/CallControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    const-string v1, "open"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 26
    .local v0, "open":Z
    if-eqz v0, :cond_0

    .line 27
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/CallControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/CallControl;->registerDetector()V
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/CallControl;->access$000(Lcom/zte/zgesture/sensorcontrol/CallControl;)V

    .line 28
    const-string v1, "CallControl"

    const-string v2, " call register open"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/CallControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/CallControl;->unRegisterDetector()V
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/CallControl;->access$100(Lcom/zte/zgesture/sensorcontrol/CallControl;)V

    .line 31
    const-string v1, "CallControl"

    const-string v2, " call register close"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
