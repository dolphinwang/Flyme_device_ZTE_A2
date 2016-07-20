.class Lcom/zte/zgesture/sensorcontrol/CallControl$2;
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
    .line 36
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/CallControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/CallControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/CallControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/CallControl;->access$200(Lcom/zte/zgesture/sensorcontrol/CallControl;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 40
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/CallControl;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/CallControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/CallControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/CallControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v2}, Lcom/zte/zgesture/sensorcontrol/CallControl;->access$200(Lcom/zte/zgesture/sensorcontrol/CallControl;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v2

    const-string v3, "setting_call"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/zte/zgesture/sensorcontrol/CallControl;->mSwitch:Z
    invoke-static {v1, v2}, Lcom/zte/zgesture/sensorcontrol/CallControl;->access$302(Lcom/zte/zgesture/sensorcontrol/CallControl;Z)Z

    .line 42
    const-string v1, "CallControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mSwitchBroadcast mSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/CallControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/CallControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/CallControl;->mSwitch:Z
    invoke-static {v3}, Lcom/zte/zgesture/sensorcontrol/CallControl;->access$300(Lcom/zte/zgesture/sensorcontrol/CallControl;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/CallControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/CallControl;->mSwitch:Z
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/CallControl;->access$300(Lcom/zte/zgesture/sensorcontrol/CallControl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/CallControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/CallControl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/CallControl;->access$500(Lcom/zte/zgesture/sensorcontrol/CallControl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/CallControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/CallControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/CallControl;->mRegisterBroadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/zte/zgesture/sensorcontrol/CallControl;->access$400(Lcom/zte/zgesture/sensorcontrol/CallControl;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/CallControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/CallControl;

    iget-object v3, v3, Lcom/zte/zgesture/sensorcontrol/CallControl;->mRegisterfilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    :goto_0
    return-void

    .line 48
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/CallControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/CallControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/CallControl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/CallControl;->access$500(Lcom/zte/zgesture/sensorcontrol/CallControl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/CallControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/CallControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/CallControl;->mRegisterBroadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/zte/zgesture/sensorcontrol/CallControl;->access$400(Lcom/zte/zgesture/sensorcontrol/CallControl;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CallControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " unregisterReceiver Exception e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
