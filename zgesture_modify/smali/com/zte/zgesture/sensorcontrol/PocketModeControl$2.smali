.class Lcom/zte/zgesture/sensorcontrol/PocketModeControl$2;
.super Landroid/telephony/PhoneStateListener;
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
    .line 46
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->mSwitch:Z
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->access$200(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->preRecognizeCheck()Z
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->access$300(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->registerDetector()V
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->access$400(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)V

    .line 58
    :cond_0
    const-string v0, "PocketModeControl"

    const-string v1, " CALL_STATE_RINGING"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/PocketModeControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/PocketModeControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->unRegisterDetector()V
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/PocketModeControl;->access$100(Lcom/zte/zgesture/sensorcontrol/PocketModeControl;)V

    .line 63
    const-string v0, "PocketModeControl"

    const-string v1, " CALL_STATE_IDLE or CALL_STATE_OFFHOOK"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
