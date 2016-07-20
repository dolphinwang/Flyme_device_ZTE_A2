.class Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl$1;
.super Landroid/telephony/PhoneStateListener;
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
    .line 29
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 33
    packed-switch p1, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 35
    :pswitch_0
    const-string v0, "ChangeToReceiverControl"

    const-string v1, " CALL_STATE_RINGING"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    :pswitch_1
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->unRegisterDetector()V
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->access$000(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;)V

    .line 40
    const-string v0, "ChangeToReceiverControl"

    const-string v1, " CALL_STATE_IDLE"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 44
    :pswitch_2
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->registerDetector()V
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;->access$100(Lcom/zte/zgesture/sensorcontrol/ChangeToReceiverControl;)V

    .line 45
    const-string v0, "ChangeToReceiverControl"

    const-string v1, " CALL_STATE_OFFHOOK"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
