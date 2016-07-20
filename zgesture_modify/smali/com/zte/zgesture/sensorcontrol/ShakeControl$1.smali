.class Lcom/zte/zgesture/sensorcontrol/ShakeControl$1;
.super Landroid/content/BroadcastReceiver;
.source "ShakeControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/sensorcontrol/ShakeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/sensorcontrol/ShakeControl;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "actionTyp":Ljava/lang/String;
    const-string v1, "ShakeControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " flashlightBroadcast actionTyp -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v1, "android.intent.action.FLASH_OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    sget-object v2, Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;->TURNON:Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;

    # setter for: Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlightStatus:Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;
    invoke-static {v1, v2}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->access$002(Lcom/zte/zgesture/sensorcontrol/ShakeControl;Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;)Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v1, "android.intent.action.FLASH_CLOSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    sget-object v2, Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;->TURNOFF:Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;

    # setter for: Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlightStatus:Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;
    invoke-static {v1, v2}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->access$002(Lcom/zte/zgesture/sensorcontrol/ShakeControl;Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;)Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;

    goto :goto_0

    .line 53
    :cond_2
    const-string v1, "android.intent.action.FLASHLIGHT_EXIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/ShakeControl$1;->this$0:Lcom/zte/zgesture/sensorcontrol/ShakeControl;

    sget-object v2, Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;->EXIT:Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;

    # setter for: Lcom/zte/zgesture/sensorcontrol/ShakeControl;->mFlightStatus:Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;
    invoke-static {v1, v2}, Lcom/zte/zgesture/sensorcontrol/ShakeControl;->access$002(Lcom/zte/zgesture/sensorcontrol/ShakeControl;Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;)Lcom/zte/zgesture/sensorcontrol/ShakeControl$FlightStatus;

    goto :goto_0
.end method
