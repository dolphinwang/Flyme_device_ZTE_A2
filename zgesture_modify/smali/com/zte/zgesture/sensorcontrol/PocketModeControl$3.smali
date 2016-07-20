.class Lcom/zte/zgesture/sensorcontrol/PocketModeControl$3;
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
    .line 72
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$3;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$3;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->access$500(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 76
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$3;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$3;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->access$500(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    const-string v2, "setting_pocket"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mSwitch:Z
    invoke-static {v0, v1}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->access$202(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;Z)Z

    .line 78
    const-string v0, "PocketModeControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSwitchBroadcast mSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$3;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mSwitch:Z
    invoke-static {v2}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->access$200(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$3;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mSwitch:Z
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->access$200(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$3;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->access$800(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$3;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mHeadsetPlugInReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->access$600(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$3;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mHeadsetPlugInfilter:Landroid/content/IntentFilter;
    invoke-static {v2}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->access$700(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    :goto_0
    return-void

    .line 85
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$3;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->access$800(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$3;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mHeadsetPlugInReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->access$600(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0
.end method
