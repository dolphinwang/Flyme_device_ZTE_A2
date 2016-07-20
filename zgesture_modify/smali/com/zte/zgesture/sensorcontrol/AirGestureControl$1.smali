.class Lcom/zte/zgesture/sensorcontrol/AirGestureControl$1;
.super Landroid/content/BroadcastReceiver;
.source "AirGestureControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/sensorcontrol/AirGestureControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$000(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 62
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$000(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    const-string v2, "setting_air_gestures"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureSwitch:Z
    invoke-static {v0, v1}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$102(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;Z)Z

    .line 64
    const-string v0, "AirGestureControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSwitchBroadcast mAirGestureSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAirGestureSwitch:Z
    invoke-static {v2}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$100(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->IsRequestOutsideReceiver()Z
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$200(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    invoke-virtual {v0}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->requestOutsideReceiver()V

    .line 80
    :goto_0
    return-void

    .line 72
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$400(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mVolumeBroadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$300(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method
