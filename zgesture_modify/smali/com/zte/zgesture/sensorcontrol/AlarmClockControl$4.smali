.class Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$4;
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
    .line 72
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    :try_start_0
    const-string v2, "motion"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 79
    .local v1, "event":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->handleMotion(Landroid/view/MotionEvent;)V
    invoke-static {v2, v1}, Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;->access$700(Lcom/zte/zgesture/sensorcontrol/AlarmClockControl;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "event":Landroid/view/MotionEvent;
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AlarmClockControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mScreenMotionReceiver Exception e :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
