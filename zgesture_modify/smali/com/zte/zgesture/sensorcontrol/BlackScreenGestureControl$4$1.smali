.class Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4$1;
.super Ljava/lang/Object;
.source "BlackScreenGestureControl.java"

# interfaces
.implements Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4$1;->this$1:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4$1;->this$1:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;

    iget-object v0, v0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    const/4 v1, 0x1

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mAnimaEnd:Z
    invoke-static {v0, v1}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$3202(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Z)Z

    .line 230
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4$1;->this$1:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;

    iget-object v0, v0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    invoke-virtual {v0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->recongizerAction()V

    .line 231
    const-string v0, "BlackScreenGestureControl"

    const-string v1, "AnimActivity is end"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method
