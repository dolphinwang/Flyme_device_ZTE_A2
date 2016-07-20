.class Lcom/zte/zgesture/sensorcontrol/PocketModeControl$4;
.super Landroid/content/BroadcastReceiver;
.source "PocketModeControl.java"


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
    .line 95
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 100
    const-string v0, "PocketModeControl"

    const-string v1, "headsetPlugInReceiver plug out"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    # setter for: Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mHeadsetPlugIn:Z
    invoke-static {v0, v2}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->access$902(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;Z)Z

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 104
    const-string v0, "PocketModeControl"

    const-string v1, "headsetPlugInReceiver plug in"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    # setter for: Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mHeadsetPlugIn:Z
    invoke-static {v0, v3}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->access$902(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;Z)Z

    goto :goto_0
.end method
