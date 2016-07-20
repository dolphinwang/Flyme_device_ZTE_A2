.class Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl$2;
.super Landroid/content/BroadcastReceiver;
.source "ChangeToReceiverControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->access$200(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 58
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->access$200(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    const-string v2, "setting_change_to_receiver"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mSwitch:Z
    invoke-static {v0, v1}, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->access$302(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;Z)Z

    .line 60
    const-string v0, "ChangeToReceiverControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSwitchBroadcast mSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mSwitch:Z
    invoke-static {v2}, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->access$300(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mSwitch:Z
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->access$300(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->access$500(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->phoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->access$400(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->unRegisterDetector()V
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->access$000(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;)V

    .line 69
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->access$500(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->phoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->access$400(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method
