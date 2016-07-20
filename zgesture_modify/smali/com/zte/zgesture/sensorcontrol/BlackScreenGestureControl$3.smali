.class Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$3;
.super Landroid/content/BroadcastReceiver;
.source "BlackScreenGestureControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$3;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    const-string v0, " recevie BroadcastReceiver: android.intent.action.USER_PRESENT"

    invoke-static {v0}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$3;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$300(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/tools/Utils;->showToastTips(Landroid/content/Context;)V

    .line 128
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenAnimation:Z

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$3;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$300(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$3;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mUserpresentBroadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$400(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0
.end method
