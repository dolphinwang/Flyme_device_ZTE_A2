.class Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$5;
.super Ljava/lang/Object;
.source "BlackScreenGestureControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->DrawDownChar()V
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
    .line 270
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$5;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->unLockSafe()V
    invoke-static {v0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$3300(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V

    .line 274
    return-void
.end method
