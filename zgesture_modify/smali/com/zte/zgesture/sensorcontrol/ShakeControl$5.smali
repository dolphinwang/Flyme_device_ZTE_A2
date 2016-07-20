.class Lcom/zte/zgesture/sensorcontrol/ShakeControl$5;
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
    .line 88
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->access$400(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 92
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->access$400(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    const-string v2, "setting_shake"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mSwitch:Z
    invoke-static {v0, v1}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->access$502(Lcom/zte/zgesture/sensorcontrol/ShakeControl;Z)Z

    .line 95
    const-string v0, "ShakeControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSwitchBroadcast mSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mSwitch:Z
    invoke-static {v2}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->access$500(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mSwitch:Z
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->access$500(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mUserpresentBroadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->access$600(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mUserpresentFilter:Landroid/content/IntentFilter;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->access$700(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenOnBroadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->access$800(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenonfilter:Landroid/content/IntentFilter;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->access$900(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenOffBroadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->access$1000(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenofffilter:Landroid/content/IntentFilter;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->access$1100(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    :goto_0
    return-void

    .line 105
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mUserpresentBroadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->access$600(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenOnBroadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->access$800(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mScreenOffBroadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->access$1000(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method
