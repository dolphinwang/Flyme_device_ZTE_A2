.class Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$6;
.super Ljava/lang/Object;
.source "BlackScreenGestureControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->recongizerAction()V
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
    .line 428
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$6;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$6;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->unLockSafe()V
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$3300(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V

    .line 432
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$6;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$300(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$6;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mStartAppIntent:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1400(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/Utils;->startApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$6;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$300(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/tools/Utils;->setToastTips(Ljava/lang/String;)V

    .line 434
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zte/zgesture/tools/Utils;->setToastFlag(Z)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$6;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->initEvent()V
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$3400(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V

    .line 437
    return-void
.end method
