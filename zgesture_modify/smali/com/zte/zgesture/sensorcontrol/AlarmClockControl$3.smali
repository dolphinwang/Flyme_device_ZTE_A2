.class Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$3;
.super Landroid/content/BroadcastReceiver;
.source "AlarmClockControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$3;->this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$3;->this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->unRegisterDetector()V
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->access$600(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;)V

    .line 68
    const-string v0, "AlarmClockControl"

    const-string v1, "mAlarmStopBroadcast"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method
