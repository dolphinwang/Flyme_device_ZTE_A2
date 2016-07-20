.class Lcom/zte/zgesture/sensorcontrol/HandTurnControl$5;
.super Landroid/telephony/PhoneStateListener;
.source "HandTurnControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/sensorcontrol/HandTurnControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 109
    packed-switch p1, :pswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    const/4 v1, 0x1

    # setter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mInCalling:Z
    invoke-static {v0, v1}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$1202(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;Z)Z

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    const/4 v1, 0x0

    # setter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mInCalling:Z
    invoke-static {v0, v1}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$1202(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;Z)Z

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
