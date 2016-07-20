.class Lcom/zte/zgesture/sensorcontrol/HandTurnControl$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 57
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->registerDetector()V
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$100(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;)V

    .line 61
    return-void
.end method
