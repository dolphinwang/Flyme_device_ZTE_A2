.class Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$2;
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
    .line 112
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$100(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 116
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$2;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->reloadSwitch()V
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$200(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V

    .line 117
    return-void
.end method
