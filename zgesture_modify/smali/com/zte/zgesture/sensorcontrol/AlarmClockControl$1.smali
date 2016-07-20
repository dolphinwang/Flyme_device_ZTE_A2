.class Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$1;
.super Landroid/content/BroadcastReceiver;
.source "AlarmClockControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->access$000(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 34
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v2}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->access$000(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v2

    const-string v3, "setting_alarm_turn"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mSwitch:Z
    invoke-static {v1, v2}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->access$102(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;Z)Z

    .line 37
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mSwitch:Z
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->access$100(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->access$300(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mAlarmStartBroadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->access$200(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    iget-object v3, v3, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mAlarmStartFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->access$300(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mAlarmStopBroadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->access$400(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    iget-object v3, v3, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mAlarmStopFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    :goto_0
    return-void

    .line 44
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->access$300(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mAlarmStartBroadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->access$200(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 45
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->access$300(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->mAlarmStopBroadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->access$400(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AlarmClockControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " unregisterReceiver Exception e :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
