.class Lcom/zte/zgesture/sensorcontrol/AirGestureControl$2;
.super Landroid/content/BroadcastReceiver;
.source "AirGestureControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/sensorcontrol/AirGestureControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    const-string v1, "keydown"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 89
    .local v0, "isDownkey":Z
    const-string v1, "AirGestureControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mVolumeBroadcast: and keydown is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->registerDetector()V
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$500(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)V

    .line 94
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    iget-object v2, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$700(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    # setter for: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->mSavedVolume:I
    invoke-static {v1, v2}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$602(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;I)I

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->unRegisterDetector()V
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->access$800(Lcom/zte/zgesture/sensorcontrol/AirGestureControl;)V

    goto :goto_0
.end method
