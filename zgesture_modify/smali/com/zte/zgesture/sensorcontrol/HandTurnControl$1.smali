.class Lcom/zte/zgesture/sensorcontrol/HandTurnControl$1;
.super Ljava/lang/Object;
.source "HandTurnControl.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 37
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/HandTurnControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/HandTurnControl;

    const/4 v1, 0x0

    # setter for: Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->mTurnOverCount:I
    invoke-static {v0, v1}, Lcom/zte/zgesture/sensorcontrol/HandTurnControl;->access$002(Lcom/zte/zgesture/sensorcontrol/HandTurnControl;I)I

    .line 42
    const-string v0, "HandTurnControl"

    const-string v1, " Detecting end"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method
