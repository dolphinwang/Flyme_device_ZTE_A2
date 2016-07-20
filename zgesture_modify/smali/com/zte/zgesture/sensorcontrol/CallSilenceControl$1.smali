.class Lcom/zte/zgesture/sensorcontrol/CallSilenceControl$1;
.super Landroid/telephony/PhoneStateListener;
.source "CallSilenceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 39
    packed-switch p1, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->registerDetector()V
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->access$000(Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;)V

    goto :goto_0

    .line 45
    :pswitch_1
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->unRegisterDetector()V
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;->access$100(Lcom/zte/zgesture/sensorcontrol/CallSilenceControl;)V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
