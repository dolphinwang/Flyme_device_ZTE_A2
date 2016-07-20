.class Lcom/zte/zgesture/sensorcontrol/AnswerControl$1;
.super Landroid/telephony/PhoneStateListener;
.source "AnswerControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/sensorcontrol/AnswerControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/sensorcontrol/AnswerControl;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/sensorcontrol/AnswerControl;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AnswerControl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 29
    packed-switch p1, :pswitch_data_0

    .line 42
    :goto_0
    return-void

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AnswerControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/AnswerControl;->registerDetector()V
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->access$000(Lcom/zte/zgesture/sensorcontrol/AnswerControl;)V

    .line 32
    const-string v0, "AnswerControl"

    const-string v1, " CALL_STATE_RINGING"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 36
    :pswitch_1
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AnswerControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/AnswerControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/AnswerControl;->unRegisterDetector()V
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/AnswerControl;->access$100(Lcom/zte/zgesture/sensorcontrol/AnswerControl;)V

    .line 37
    const-string v0, "AnswerControl"

    const-string v1, " NOT RINGING"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
